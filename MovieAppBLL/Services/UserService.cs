using MovieAppDAL.Models;
using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using WebApp.LIB;
using WebApp.LIB.Common;
using System.Web.Mvc;

namespace MovieAppBLL.Services
{
    public class UserService : BaseService
    {
        public List<UserViewModel> GetListUser(string keySearch)
        {
        
                var data = Context.PS_USERS.Where(m => m.IsDelete != true).AsEnumerable();

                if (data != null && !string.IsNullOrEmpty(keySearch))
                {
                   
                }

                if (data != null)
                {
                    return data.ToList().Select(m => new UserViewModel()
                    {
                        Id = m.Id,
                        Email = m.Email,
                        GuId = EncryptionHelper.EncryptInt(m.Id),
                        IsDisabled= m.IsDisabled ??false,
                        Password =m.Password,
                        UserName= m.UserName,
                        
                    }).ToList();
                }

                return null;
           

        }

        public AddUpdateUserViewModel GetOneUpdateUser(int pId)
        {
            
                var entity = Context.PS_USERS.FirstOrDefault(m => m.Id == pId);
                if (entity != null)
                {
                    return new AddUpdateUserViewModel()
                    {
                        Id = entity.Id,
                        Email = entity.Email,                       
                        IsDisabled = entity.IsDisabled,
                        Password = entity.Password,
                        UserName = entity.UserName,
                    };
                }
            
            return null;
        }

        public bool InsertUpdateUser(AddUpdateUserViewModel model)
        {
            int kq = 0;
            using (var dbContextTransaction = Context.Database.BeginTransaction())
            {
                var entity = Context.PS_USERS.FirstOrDefault(m => m.Id == model.Id) ?? new PS_USERS();
              
                entity.Email = model.Email;
                entity.IsDisabled = model.IsDisabled;
                entity.Password = model.Password;
                entity.UserName = model.UserName;

                if (entity.Id == 0)
                {
                    Context.PS_USERS.Add(entity);
                }

                 kq +=Context.SaveChanges();
                dbContextTransaction.Commit();
            }

            return kq > 0;
        }        

        public bool DeleteUser(int[] Ids)
        {
            int kq = 0;
            using (var dbContextTransaction = Context.Database.BeginTransaction())
            {
                var listDelete = Context.PS_USERS.Where(m => Ids.Contains(m.Id)).ToList();


                if (listDelete != null)
                {
                    listDelete.ForEach(m => { m.IsDelete = true; m.DeleteDate = DateTime.Now; });
                }
                kq += Context.SaveChanges();
                dbContextTransaction.Commit();
            }

            return kq > 0;
        }        

        public string CheckLogin(string userName, string passWord, out UserInformation userInfo)
        {
            string errMes = "";
            userInfo = null;
            var user = Context.PS_USERS.FirstOrDefault(m => m.UserName == userName || m.Email == userName);
            if(user == null)
            {               
                errMes = "account is not registered";
            }
            else
            {
                if(user.Password != passWord)
                {
                    errMes = "Incorrect password";
                } 
                
                if(user.IsDisabled == true)
                {
                    errMes = "Account is being lock";
                }    

                if(string.IsNullOrEmpty(errMes))
                {
                    userInfo = new UserInformation()
                    {
                        Email = user.Email,
                        FullName = "",
                        Guid = EncryptionHelper.EncryptInt(user.Id),
                        Id = user.Id,
                        IsDisabled = user.IsDisabled ?? true,
                        UserName = user.UserName,

                    };
                }    
            }             

            return errMes;
        } 

        public UserInformation GetUserInformationByUserName(int Id)
        {
            var user = Context.PS_USERS.FirstOrDefault(m => m.Id == Id);
            if(user!= null)
            {
                return new UserInformation()
                {
                    Email = user.Email,
                    FullName = "",
                    Guid = EncryptionHelper.EncryptInt(user.Id),
                    Id = user.Id,
                    IsDisabled = user.IsDisabled ?? true,
                    UserName = user.UserName,

                };
            }
            return null;
        }

        public bool RegisterUser(RegisterViewModel model, out int id)
        {
            int kq = 0;
            id = 0;
            using (var dbContextTransaction = Context.Database.BeginTransaction())
            {
                var entity = new PS_USERS();
              
                entity.Email = model.Email;               
                entity.Password = model.Password;
                entity.UserName = model.UserName;

                Context.PS_USERS.Add(entity);

                kq += Context.SaveChanges();
                dbContextTransaction.Commit();
                id = entity.Id;
            }

            return kq > 0;
        }

        public void ValidRegister(RegisterViewModel model, ModelStateDictionary state)
        {
            if (state.IsValid)
            {
                if (!string.IsNullOrEmpty(model.UserName) && Context.PS_USERS.Any(m => m.UserName.Equals(model.UserName, StringComparison.OrdinalIgnoreCase)))
                {
                    state.AddModelError("Warning", "Username already exists");
                }

                if (!string.IsNullOrEmpty(model.Email) && Context.PS_USERS.Any(m => m.Email.Equals(model.Email, StringComparison.OrdinalIgnoreCase)))
                {
                    state.AddModelError("Warning", "Email already exists");
                }

                if (model.Password.Length < 6)
                {
                    state.AddModelError("Warning", "Password minimum 6 characters");
                }

                if (!string.IsNullOrEmpty(model.Password) && !string.IsNullOrEmpty(model.RePassword) && model.Password != model.RePassword)
                {
                    state.AddModelError("Warning", "Password incorrect");
                }

            }
        
        }

    }
}