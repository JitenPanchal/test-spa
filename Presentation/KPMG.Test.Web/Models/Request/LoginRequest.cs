using System.ComponentModel.DataAnnotations;

namespace KPMG.Test.Web.Models.Request
{
    public class LoginRequest
    {
        [Required]
        public string Username { get; set; }

        [Required]
        public string Password { get; set; }

        public bool RememberMe { get; set; }
    }
}