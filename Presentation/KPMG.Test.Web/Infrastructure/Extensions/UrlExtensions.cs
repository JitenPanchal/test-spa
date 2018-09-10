using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace System.Web.Mvc
{
    public static class UrlExtensions
    {
        public static string VersionedContent(this UrlHelper urlHelper, string contentPath)
        {
#if (DEBUG)
            return string.Format("{0}?v={1}", urlHelper.Content(contentPath), Guid.NewGuid().ToString("N"));
#else
                return string.Format("{0}?v={1}", urlHelper.Content(contentPath), ReleaseInformation.Version);
#endif
        }
    }
}