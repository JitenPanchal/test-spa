using AutoMapper;
using KPMG.Test.Core.Database;
using KPMG.Test.Services.Membership;
using KPMG.Test.Web.Models.Request;
using System;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Security;

namespace KPMG.Test.Web.ApiControllers
{
    [RoutePrefix("api/v1/membership")]
    public class MembershipController : BaseApiController
    {
        private readonly IMembershipService membershipService;
        private readonly IMapper mapper;
        private readonly IDbContext dbContext;
        public static readonly DateTime expiryDate =  new DateTime(1999, 10, 12);
        const int CookieExpirationDays = 14;

        private static class  CookieInfo {
            public const string UserId = "UserId";
            public const string UserName = "UserName";
            public const string Role = "Role";
        }

        public MembershipController(IMembershipService membershipService, IMapper mapper, IDbContext dbContext) : base(mapper, dbContext)
        {
            this.membershipService = membershipService;
            this.mapper = mapper;
            this.dbContext = dbContext;
        }

        [HttpPost]
        [AllowAnonymous]
        [Route("login")]
        public IHttpActionResult Login([FromBody]LoginRequest logInRequest)
        {
            var response = membershipService.Login(logInRequest.Username, logInRequest.Password);

            if (response.IsSuccess)
            {
                var now = DateTime.UtcNow.ToLocalTime();

                var ticket = new FormsAuthenticationTicket(1, logInRequest.Username, now, now.Add(FormsAuthentication.Timeout), logInRequest.RememberMe, logInRequest.Username,
                    FormsAuthentication.FormsCookiePath);

                var encryptedTicket = FormsAuthentication.Encrypt(ticket);

                var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
                //cookie.HttpOnly = true;

                if (logInRequest.RememberMe)
                    cookie.Expires = ticket.Expiration.AddDays(CookieExpirationDays);
                else
                    cookie.Expires = ticket.Expiration;

                cookie.Secure = FormsAuthentication.RequireSSL;
                cookie.Path = FormsAuthentication.FormsCookiePath;
                if (FormsAuthentication.CookieDomain != null)
                {
                    cookie.Domain = FormsAuthentication.CookieDomain;
                }

                HttpContext.Current.Response.Cookies.Add(cookie);

                HttpCookie httpUserIdCookie = new HttpCookie(CookieInfo.UserId, response.UserId.ToString()) { Expires = cookie.Expires };
                //httpUserIdCookie.Expires = cookie.Expires;

                HttpCookie httpUserNameCookie = new HttpCookie(CookieInfo.UserName, response.UserName) { Expires = cookie.Expires };
                //httpUserNameCookie.Expires = cookie.Expires;

                HttpCookie httpUserRoleCookie = new HttpCookie(CookieInfo.Role, response.Role.ToString()) { Expires = cookie.Expires };
                //httpUserRoleCookie.Expires = cookie.Expires;

                HttpContext.Current.Response.Cookies.Add(httpUserIdCookie);
                HttpContext.Current.Response.Cookies.Add(httpUserNameCookie);
                HttpContext.Current.Response.Cookies.Add(httpUserRoleCookie);
            }

            return Ok(response);
        }

        [Route("logout")]
        [HttpPost]
        public IHttpActionResult Logout()
        {
            HttpCookie httpUserIdCookie = new HttpCookie(CookieInfo.UserId) { Expires = expiryDate };
            HttpCookie httpUserNameCookie = new HttpCookie(CookieInfo.UserName) { Expires = expiryDate };
            HttpCookie httpUserRoleCookie = new HttpCookie(CookieInfo.Role) { Expires = expiryDate };

            HttpContext.Current.Response.Cookies.Remove(CookieInfo.UserId);
            HttpContext.Current.Response.Cookies.Remove(CookieInfo.Role);
            HttpContext.Current.Response.Cookies.Remove(CookieInfo.UserName);

            HttpContext.Current.Response.Cookies.Add(httpUserIdCookie);
            HttpContext.Current.Response.Cookies.Add(httpUserNameCookie);
            HttpContext.Current.Response.Cookies.Add(httpUserRoleCookie);

            FormsAuthentication.SignOut();
            return Ok("User logged out successfully.");
        }
    }
}