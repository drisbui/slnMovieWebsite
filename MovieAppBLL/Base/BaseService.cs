using System;
using MovieAppDAL.Models;
using WebApp.LIB.Common;
namespace MovieAppBLL
{
    public class BaseService
    {
        private HTWEntities _context;

        public void CreateNewContext()
        {
            _context = new HTWEntities();
        }


        public virtual int SaveChanges()
        {
            return Context.SaveChanges();
        }

        #region Properties

        public HTWEntities Context
        {
            get
            {
                if (_context == null)
                {
                    CreateNewContext();
                }

                return _context;
            }
        }

        #endregion

        #region public menthods

        public void CommonDelete(object obj)
        {
            try
            {
              
                CommonBase.SetPropertyValue(obj, "IsDelete", true, true);               
                CommonBase.SetPropertyValue(obj, "DeleteDate", DateTime.Now, true);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        #endregion
    }

}
