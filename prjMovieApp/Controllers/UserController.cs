using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using MovieAppBLL;
using MovieAppBLL.Services;
using Newtonsoft.Json;
using WebApp.LIB;
using WebApp.LIB.Common;
namespace prjMovieApp.Controllers
{
    public class UserController : ControllerBase<UserService>
    {
        [HttpPost]
        public ActionResult Login(string userName, string passWord)
        {
            var userInfo = new UserInformation();

            var messLogin = Business.CheckLogin(userName, passWord, out userInfo);
            if(string.IsNullOrEmpty(messLogin))
            {
                System.Web.HttpContext.Current.Session.Add(CommonBase.SES_USER_INFO, userInfo);
                FormsAuthentication.SetAuthCookie("User_§§§_" + userInfo.Id.ToString(), true);

            }
            else
            {
                ModelState.AddModelError("Warning", messLogin);
               
            }

            return Json(ModelState.Values.SelectMany(m=>m.Errors).Select(m=>m.ErrorMessage).ToList());

        }

        public ActionResult Logout()
        {
            HttpCookie authCookie = Request.Cookies[FormsAuthentication.FormsCookieName];
            if (authCookie != null)
            {
                authCookie.Expires = DateTime.Now.AddYears(-1);
            }
            Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddYears(-1);

            // Cleanup session
            Session[CommonBase.SES_USER_INFO] = null;
            FormsAuthentication.SignOut();
            Session.Abandon();

            return Redirect("/");
        }

        [HttpPost]
        public ActionResult Register(RegisterViewModel model)
        {
            Business.ValidRegister(model, ModelState);
            int id = 0;
            if (ModelState.IsValid)
            {
                if(Business.RegisterUser(model, out id))
                {
                    var userInfo = Business.GetUserInformationByUserName(id);

                    System.Web.HttpContext.Current.Session.Add(CommonBase.SES_USER_INFO, userInfo);
                    FormsAuthentication.SetAuthCookie("User_§§§_" + userInfo.Id.ToString(), true);
                }
            }

            return Json(ModelState.Values.SelectMany(m => m.Errors).Select(m => m.ErrorMessage).ToList());


        }
       
    }
}
