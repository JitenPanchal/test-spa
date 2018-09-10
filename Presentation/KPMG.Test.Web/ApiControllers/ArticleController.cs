using AutoMapper;
using KPMG.Test.Core.Database;
using KPMG.Test.Core.Enums;
using KPMG.Test.Services.Articles;
using KPMG.Test.Services.Membership;
using KPMG.Test.Web.Infrastructure.Filters;
using KPMG.Test.Web.Models.Request;
using KPMG.Test.WebApi.Models.Request;
using KPMG.Test.WebApi.Models.Response.Articles;
using System.Data.Entity;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Linq;
using KPMG.Test.Core.Models.ResponseModel;
using KPMG.Test.Core.Constants;

namespace KPMG.Test.Web.ApiControllers
{
    [RoutePrefix("api/v1/article")]
    public class ArticleController : BaseApiController
    {
        private readonly IArticleService articleService;
        private readonly IMapper mapper;
        private readonly IDbContext dbContext;
        private readonly IMembershipService membershipService;

        public ArticleController(IArticleService articleService, IMapper mapper, IDbContext dbContext, IMembershipService membershipService) : base(mapper, dbContext)
        {
            this.articleService = articleService;
            this.mapper = mapper;
            this.dbContext = dbContext;
            this.membershipService = membershipService;
        }

        [HttpGet]
        [Route("~/api/v1/articles")]
        [Securable("ReadArticle", "Articles")]
        public async Task<IHttpActionResult> Get([FromUri]GetArticlesRequest request)
        {
            var query = articleService.GetArticlesWithStatQuery(request.SortBy).Where(it=>it.IsPublished);
            var data = await ToPagedList<ArticleStatResponse>(query, request.PageNumber, request.PageSize);
            return Ok(data);
        }

        [HttpGet]
        [Route("~/api/v1/articles/my")]
        [Securable("ReadArticle", "Articles")]
        public async Task<IHttpActionResult> GetMyArticles([FromUri]GetArticlesRequest request)
        {
            var query = articleService.GetMyArticlesWithStatQuery(HttpContext.Current.User.Identity.Name, request.SortBy);
            var data = await ToPagedList(query, request.PageNumber, request.PageSize);
            return Ok(data);
        }

        [HttpGet]
        [Route("{id:int:min(1)}")]
        [Securable("ReadArticle", "Articles")]
        public async Task<IHttpActionResult> Get(int id)
        {
            return await Get<Article, ArticleResponse>(id);
        }

        [HttpGet]
        [Route("{id:int:min(1)}/stats")]
        [Securable("ReadArticleStats", "Articles")]
        public async Task<IHttpActionResult> GetArticleStats(int id)
        {
            return Ok(await articleService.GetArticleWithStatQuery(id).SingleOrDefaultAsync());
        }

        [HttpGet]
        [Route("most-liked")]
        [Securable("ReadArticle", "Articles")]
        public async Task<IHttpActionResult> GetMostLikedArticle()
        {
            return Ok(await articleService.GetArticleMostLikedQuery().FirstOrDefaultAsync());
        }

        [HttpPost]
        [Route]
        [Securable("CreateArticle", "Create Article")]
        public async Task<IHttpActionResult> Post([FromBody]ArticleRequest articleRequest)
        {
            if (IsCurrentUserPublisher())
                return await Post<ArticleRequest, Article>(articleRequest);
            else
                return BadRequest("Only publisher can add article");
        }

        [HttpPut]
        [Route("{id:int:min(1)}")]
        [Securable("UpdateArticle", "Update Article")]
        public async Task<IHttpActionResult> Put(int id, [FromBody]ArticleRequest articleRequest)
        {
            if (IsCurrentUserPublisher())
                return await Put<ArticleRequest, Article>(id, articleRequest);
            else
                return BadRequest("Only publisher can update article");
        }

        [HttpDelete]
        [Route("{id:int:min(1)}")]
        [Securable("DeleteArticle", "Delete Article")]
        public async Task<IHttpActionResult> Delete(int id)
        {
            if (IsCurrentUserPublisher())
                return await Delete<Article>(id);
            else
                return BadRequest("Only publisher can delete article");
        }

        [HttpPut]
        [Route("{id:int:min(1)}/publish")]
        [Securable("PublishArticle", "Publish Article")]
        public async Task<IHttpActionResult> PublishArticle(int id)
        {
            var user = membershipService.GetCurrentLoggedInUser();
            if (user.UserType == UserType.Publisher)
            {
                await articleService.PublishArticleAsync(id);
                return Ok($"Article {id} published successfully.");
            }
            else
                return BadRequest("Only publisher can publish articles");
        }

        [HttpPut]
        [Route("{id:int:min(1)}/unpublish")]
        [Securable("HideArticle", "Hide Article")]
        public async Task<IHttpActionResult> UnPublishArticle(int id)
        {
            var user = membershipService.GetCurrentLoggedInUser();
            if (user.UserType == UserType.Publisher)
            {
                await articleService.UnPublishArticleAsync(id);
                return Ok($"Article {id} unpublished successfully.");
            }
            else
                return BadRequest("Only publisher can unpublished articles");
        }

        [HttpPut]
        [Route("{id:int:min(1)}/like")]
        public async Task<IHttpActionResult> LikeArticle(int id)
        {
            return await SaveArticleFeedbackAsync(id, ArticleStatus.Like);
        }

        [HttpPut]
        [Route("{id:int:min(1)}/unlike")]
        public async Task<IHttpActionResult> UnLikeArticle(int id)
        {
            return await SaveArticleFeedbackAsync(id, ArticleStatus.UnLike);
        }

        private async Task<IHttpActionResult> SaveArticleFeedbackAsync(int id, ArticleStatus status)
        {
            var user = membershipService.GetCurrentLoggedInUser();
            if (user.UserType == UserType.Employer)
            {
                await articleService.SaveArticleFeedbackAsync(id, user.Id, status);
            }
            return Ok(await articleService.GetArticleWithStatQuery(id).SingleOrDefaultAsync());
        }

        private bool IsCurrentUserPublisher() {
            var user = membershipService.GetCurrentLoggedInUser();
            return user.UserType == UserType.Publisher;
        }
    }
}