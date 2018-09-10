using AutoMapper;

using KPMG.Test.Core.Database;
using KPMG.Test.Services.Articles;
using KPMG.Test.Web.Infrastructure.Filters;
using KPMG.Test.WebApi.Models;
using KPMG.Test.WebApi.Models.Request;
using KPMG.Test.WebApi.Models.Response.Articles;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web.Http;

namespace KPMG.Test.Web.ApiControllers
{
    [RoutePrefix("api/v1/test")]
    public class TestController : ApiController
    {
        [HttpGet]
        [Route("{id:int:min(1)}")]
        public async Task<IHttpActionResult> Get(int id)
        {
            //return await Get<Article, ArticleResponse>(id);
            return Ok(await Task.FromResult(new ArticleResponse() { Id = 1, Body = "body" }));
        }
    }
}