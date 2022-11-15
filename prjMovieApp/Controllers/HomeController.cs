using System.Web.Mvc;
using MovieAppBLL;
using MovieAppBLL.Services;
using WebApp.LIB;
using WebApp.LIB.Common;
namespace prjMovieApp.Controllers
{
    public class HomeController : ControllerBase<MovieService>
    {
        public ActionResult Index(ParamMovieViewModel param)
        {
            if(param.PageSize == 0)
            {
                param.PageSize = 9;
            }    
            var models = Business.GetListMovie(param);

            return View(models);
        }

        public ActionResult GetListMovie(ParamMovieViewModel param)
        {
            if (param.PageSize == 0)
            {
                param.PageSize = 9;
            }
            var models = Business.GetListMovie(param);

            return View(models);
        }

        [HttpPost]
        public ActionResult LikeMovie(string guId)
        {
            var user = CommonBase.CurrentUserInfo;
           
            if (user == null)
            {              

                return Json(new { success = false, errors = "Please log in!" });

            }
            else
            {
                return PartialView("Partials/_divCard", Business.LikeMovieByUser(guId, user.Guid));
            }
        }

       
    }
}
