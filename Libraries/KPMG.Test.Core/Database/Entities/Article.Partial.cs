using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace KPMG.Test.Core.Database
{
    public partial class Article
    {
        internal override void OnBeforeSaveEntity(DbEntityEntry dbEntityEntry)
        {
            var article = dbEntityEntry.Entity as Article;

            if (article.IsPublished && !article.PublishDate.HasValue)
            {
                article.PublishDate = DateTime.UtcNow;
            }

            if (!article.IsPublished)
                article.PublishDate = null;


            article.Body = WebUtility.HtmlDecode(article.Body);

            base.OnBeforeSaveEntity(dbEntityEntry);
        }
    }
}
