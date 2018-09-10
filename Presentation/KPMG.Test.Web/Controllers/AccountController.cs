using KPMG.Test.Web.Models.ViewModels;
using System;
using System.Web;
using System.Web.Mvc;
using AutoMapper;
using System.Web.Security;

namespace KPMG.Test.Web.Controllers
{
    public class AccountController : Controller
    {
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login", "Account");
        }

        [HttpPost]
        public ActionResult Login(LoginViewModel logInRequest)
        {
            if ("admin".Equals(logInRequest.Username, System.StringComparison.InvariantCultureIgnoreCase) && logInRequest.Password == "password")
            {
                var now = DateTime.UtcNow.ToLocalTime();

                var ticket = new FormsAuthenticationTicket(1, logInRequest.Username, now, now.Add(FormsAuthentication.Timeout), logInRequest.RememberMe, logInRequest.Username,
                    FormsAuthentication.FormsCookiePath);

                var encryptedTicket = FormsAuthentication.Encrypt(ticket);

                var cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
                cookie.HttpOnly = true;

                if (logInRequest.RememberMe)
                    cookie.Expires = ticket.Expiration.AddDays(7);
                else
                    cookie.Expires = ticket.Expiration;

                cookie.Secure = FormsAuthentication.RequireSSL;
                cookie.Path = FormsAuthentication.FormsCookiePath;
                if (FormsAuthentication.CookieDomain != null)
                {
                    cookie.Domain = FormsAuthentication.CookieDomain;
                }


                Response.Cookies.Add(cookie);

                return RedirectToAction("Index", "Home");
            }
            return View(logInRequest);
        }
    }
}