using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KPMG.Test.Core.Models.ResponseModel
{
    public class LoginResponse
    {
        public bool IsSuccess { get; set; }
        public string Token { get; set; }
        public int ExpiresIn { get; set; }
        public string Message { get; set; }
        public int UserId { get; set; }
        public string UserName { get; set; }
        public byte Role { get; set; }

        public static LoginResponse CreateFailedResponse()
        {
            return new LoginResponse()
            {
                IsSuccess = false,
                Message = "Invalid login details"
            };
        }
    }
}