using MovieAppBLL;
using System;
using System.Web.Mvc;

namespace prjMovieApp.Controllers
{
    public class ControllerBase : Controller
    {
    }

    public partial class ControllerBase<T> : ControllerBase where T : BaseService
    {
        #region Variables

        private T _business;

        #endregion

        #region Properties

        protected T Business
        {
            get
            {
                if (_business == null)
                {
                    _business = Activator.CreateInstance<T>();
                }

                return _business;
            }
        }

        #endregion


    }
}
