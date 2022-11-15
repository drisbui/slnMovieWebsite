using System;
using System.Linq;
using System.Web;
using System.Web.Security;
using MovieAppDAL.Models;
namespace WebApp.LIB.Common
{
    public static class CommonBase
    {

        #region Const
        public const string SES_USER_INFO = "UserInfo";
        #endregion

        public static UserInformation CurrentUserInfo
        {
            get
            {
                UserInformation info = null;
                if (System.Web.HttpContext.Current.Session != null)
                {
                    if (System.Web.HttpContext.Current.Session[SES_USER_INFO] == null)
                    {
                        RenewCurrentUserInfoSession();
                    }

                    if (System.Web.HttpContext.Current.Session[SES_USER_INFO] != null)
                    {
                        info = (UserInformation)System.Web.HttpContext.Current.Session[SES_USER_INFO];
                    }
                }
                return info;
            }
        }

        public static void RenewCurrentUserInfoSession()
        {
            try
            {
                HttpCookie authCookie = HttpContext.Current.Request.Cookies[FormsAuthentication.FormsCookieName];
                if (authCookie != null)
                {
                    FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(authCookie.Value);
                    string ticketName = ticket.Name;

                    if (!string.IsNullOrEmpty(ticketName) && ticketName.Contains("User_§§§_"))
                    {
                        int idUngVien = int.Parse(ticketName.Replace("User_§§§_", ""));
                        HTWEntities en = new HTWEntities();
                        UserInformation info;

                        info = (from us in en.PS_USERS.Where(x => x.Id == idUngVien)
                                select new UserInformation
                                {
                                    Email = us.Email,
                                    Id = us.Id,
                                    FullName = "",
                                    Guid = EncryptionHelper.EncryptInt(us.Id),
                                    IsDisabled = us.IsDisabled ?? false,
                                    UserName = us.UserName
                                }).FirstOrDefault();

                        if (System.Web.HttpContext.Current.Session[SES_USER_INFO] == null)
                        {
                            System.Web.HttpContext.Current.Session.Add(SES_USER_INFO, info);
                        }
                        else
                        {
                            System.Web.HttpContext.Current.Session[SES_USER_INFO] = info;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
            }
        }

        public static void SetPropertyValue(dynamic pData, string pPropertyName, dynamic pValue, bool pOverride = false)
        {
            // Get property info
            System.Reflection.PropertyInfo property = pData.GetType().GetProperty(pPropertyName);

            // Property existed
            if (property != null)
            {
                // Override
                if (pOverride)
                {
                    // Set value
                    property.SetValue(pData, pValue, null);
                }
                else // Not override
                {
                    // Get value of property
                    dynamic value = property.GetValue(pData, null);

                    // Value is null
                    if (value == null)
                    {
                        // Set value
                        property.SetValue(pData, pValue, null);
                    }
                }
            }
        }


    }
}
