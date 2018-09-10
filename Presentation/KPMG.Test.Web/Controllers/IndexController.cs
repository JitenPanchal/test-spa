using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace KPMG.Test.Web.Controllers
{
    [RoutePrefix("")]
    public class IndexController : Controller
    {
        [Route("")]
        [Route("{*catchall}")]
        public ActionResult Index()
        {
            return View();
        }
    }
}