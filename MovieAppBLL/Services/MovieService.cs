using MovieAppDAL.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using WebApp.LIB.Common;

namespace MovieAppBLL.Services
{
    public class MovieService : BaseService
    {
        public List<MovieViewModel> GetListMovie(ParamMovieViewModel param)
        {
            if(param == null)
            {
                param = new ParamMovieViewModel()
                {
                    Page = 1,
                    PageSize = 9
                };
            }    
            var user = CommonBase.CurrentUserInfo;
            return Context.SP_GetListMovie(param.Id, param.KeySearch, param.ReleaseDateTo, param.ReleaseDateFrom, param.Page, param.PageSize, "ReleaseDate", "DESC")
                .Select(m => new MovieViewModel()
                {
                    Id = m.Id,
                    GuId = EncryptionHelper.EncryptInt(m.Id),
                    Avartar = m.Avartar,
                    CountLikes = Context.MV_NumberUsersLike.Count(o=> o.IdMovie == m.Id),
                    ReleaseDate = m.ReleaseDate,
                    IsUserLike = user == null ? false : Context.MV_NumberUsersLike.Any(o => o.IdMovie == m.Id && o.IdUser == user.Id),
                    RunningTime = m.RunningTime,
                    Title = m.Title,
                    Page = param.Page,
                    PageSize =param.PageSize,
                    Total = m.Total ?? 0
                }).ToList();          

        }

        public AddUpdateMovieViewModel GetOneUpdateMovie(int pId)
        {
            
                var entity = Context.MV_MOVIE.FirstOrDefault(m => m.Id == pId);
                if (entity != null)
                {
                    return new AddUpdateMovieViewModel()
                    {
                        Id = entity.Id,
                        Avartar = entity.Avartar,
                        ReleaseDate = entity.ReleaseDate,
                        RunningTime = entity.RunningTime,
                        Title = entity.Title,
                    };
                }
            
            return null;
        }


        public MovieViewModel GetOneMovie(int pId)
        {

            var entity = Context.MV_MOVIE.FirstOrDefault(m => m.Id == pId);
            if (entity != null)
            {
                var user = CommonBase.CurrentUserInfo;

                return new MovieViewModel()
                {
                    Id = entity.Id,
                    GuId = EncryptionHelper.EncryptInt(entity.Id),
                    Avartar = entity.Avartar,
                    ReleaseDate = entity.ReleaseDate,
                    RunningTime = entity.RunningTime,
                    Title = entity.Title,
                    CountLikes = entity.MV_NumberUsersLike.Where(m=>m.IsLike == true).Count(),
                    IsUserLike = user!= null ? entity.MV_NumberUsersLike.Any(m => m.IdUser == user.Id && m.IsLike == true): false
                };
            }

            return null;
        }

        public bool InsertUpdateMovie(AddUpdateMovieViewModel model)
        {
            int kq = 0;
            using (var dbContextTransaction = Context.Database.BeginTransaction())
            {
                var entity = Context.MV_MOVIE.FirstOrDefault(m => m.Id == model.Id) ?? new MV_MOVIE();
                entity.Avartar = model.Avartar;
                entity.ReleaseDate = model.ReleaseDate;
                entity.RunningTime = model.RunningTime;
                entity.Title = model.Title;

                if (entity.Id == 0)
                {
                    Context.MV_MOVIE.Add(entity);
                }

                 kq +=Context.SaveChanges();
                dbContextTransaction.Commit();
            }

            return kq > 0;


        }        

        public bool DeleteMovie(int[] Ids)
        {
            int kq = 0;
            using (var dbContextTransaction = Context.Database.BeginTransaction())
            {
                var listDelete = Context.MV_MOVIE.Where(m => Ids.Contains(m.Id)).ToList();


                if (listDelete != null)
                {
                    listDelete.ForEach(m => { m.IsDelete = true; m.DeleteDate = DateTime.Now; });
                }
                kq += Context.SaveChanges();
                dbContextTransaction.Commit();
            }

            return kq > 0;
        }        

        public MovieViewModel LikeMovieByUser(string guIdMovie, string guIdUser)
        {
            int IdMovie = EncryptionHelper.DescryptInt(guIdMovie);
            int IdUser = EncryptionHelper.DescryptInt(guIdUser);

            if (IdMovie > 0 && IdUser > 0)
            {
                using (var dbContextTransaction = Context.Database.BeginTransaction())
                {
                    MV_NumberUsersLike entity = Context.MV_NumberUsersLike.FirstOrDefault(m=>m.IdUser == IdUser && m.IdMovie == IdMovie) ?? new MV_NumberUsersLike();
                    entity.IdMovie = IdMovie;
                    entity.IdUser = IdUser;
                    entity.IsLike = !(entity.IsLike ?? false);
                    entity.LikeDate = DateTime.Now;

                    if (entity.Id == 0)
                    {
                        Context.MV_NumberUsersLike.Add(entity);
                    }

                    Context.SaveChanges();

                    dbContextTransaction.Commit();
                    
                    
                }

                }    


            return GetOneMovie(IdMovie);
        }
    }
}