using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MovieAppBLL
{
    public class ParamMovieViewModel
        {
        public int? Id { get; set; }
        public string KeySearch { get; set; }
        public DateTime? ReleaseDateTo { get; set; }
        public DateTime? ReleaseDateFrom { get; set; }
        public bool? IsUserLike { get; set; }
        public int Page { get; set; }
        public int PageSize { get; set; }
    }

    public class MovieViewModel
    {
       public int Id { get; set; }
        public string GuId { get; set; }
        public string Title { get; set; }
        public string Avartar { get; set; }
        public DateTime? ReleaseDate { get; set; }
        public int? RunningTime { get; set; }
        public int? CountLikes { get; set; }
        public bool? IsUserLike { get; set; }
        public int Total { get; set; }

        public int? Page { get; set; }
        public int? PageSize { get; set; }
    }

    public class AddUpdateMovieViewModel
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Avartar { get; set; }
        public DateTime? ReleaseDate { get; set; }
        public int? RunningTime { get; set; }
    }
}
