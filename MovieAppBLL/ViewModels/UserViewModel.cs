using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MovieAppBLL
{
    public class UserViewModel
    {
        public int Id { get; set; }
        public string GuId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public bool? IsDisabled { get; set; }
    }

    public class AddUpdateUserViewModel
    {
        public int Id { get; set; }
        
        [StringLength(100, ErrorMessage = "no more than {1} characters")]
        [Required(ErrorMessage = "{0} cannot be empty")]
        [DisplayName("User Name")]
        public string UserName { get; set; }

        [StringLength(20, ErrorMessage = "no more than {1} characters")]
        [Required(ErrorMessage = "{0} cannot be empty")]
        [DisplayName("Password")]
        public string Password { get; set; }

        [StringLength(20, ErrorMessage = "no more than {1} characters")]
        [Required(ErrorMessage = "{0} cannot be empty")]
        [DisplayName("Re Password")]
        public string RePassword { get; set; }

        [StringLength(100, ErrorMessage = "no more than {1} characters")]
        [Required(ErrorMessage = "{0} cannot be empty")]
        [DisplayName("Email")]
        public string Email { get; set; }
        public bool? IsDisabled { get; set; }
    }

    public class SetAuthCookieSysViewModel
    {
        public int UserID { get; set; }
        public string UserName { get; set; }
        public bool? RememberMe { get; set; }
    }

    public class RegisterViewModel
    {
        [StringLength(100, ErrorMessage = "no more than {1} characters")]
        [Required(ErrorMessage = "{0} cannot be empty")]
        [DisplayName("User Name")]
        public string UserName { get; set; }

        [StringLength(20, ErrorMessage = "no more than {1} characters")]
        [Required(ErrorMessage = "{0} cannot be empty")]
        [DisplayName("Password")]
        public string Password { get; set; }

        [StringLength(20, ErrorMessage = "no more than {1} characters")]
        [Required(ErrorMessage = "{0} cannot be empty")]
        [DisplayName("Re Password")]
        public string RePassword { get; set; }

        [StringLength(100, ErrorMessage = "no more than {1} characters")]
        [Required(ErrorMessage = "{0} cannot be empty")]
        [DisplayName("Email")]
        public string Email { get; set; }
    }
}
