using KPMG.Test.Core.Database;
using KPMG.Test.Core.Exceptions;
using KPMG.Test.Services.ApplicationSettings;
using KPMG.Test.Services.Articles;
using KPMG.Test.Services.Membership;
using KPMG.Test.Web.ApiControllers;
using KPMG.Test.Web.Models.Request;
using KPMG.Test.WebApi.Models.Response.Articles;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System.Collections.Generic;
using System.Data.Entity;
using System.Threading.Tasks;
using System.Web.Http.Results;

namespace KPMG.Test.UnitTests.ApiControllers
{
    [TestClass]
    public class ArticleControllerTests : BaseUnitTest
    {
        Mock<Core.Database.DbContext> mockContext;

        IApplicationSettingsService applicationSettingsService;

        IArticleService articleService;

        IMembershipService membershipService;

        ArticleController articleController;

        Mock<DbSet<Article>> mockArticleSet;
        Mock<DbSet<ArticleFeedback>> mockArticleFeedbackSet;
        Mock<DbSet<User>> mockUserSet;

        [TestInitialize]
        public void TestInitialize()
        {
            mockContext = new Mock<Core.Database.DbContext>("ConnectionString");

            mockArticleSet = GetQueryableMockDbSet<Article>(GetArticleList());
            mockContext.Setup(m => m.Set<Article>()).Returns(mockArticleSet.Object);

            mockArticleFeedbackSet = GetQueryableMockDbSet<ArticleFeedback>(GetArticleFeedbackList());
            mockContext.Setup(m => m.Set<ArticleFeedback>()).Returns(mockArticleFeedbackSet.Object);

            mockUserSet = GetQueryableMockDbSet<User>(GetUserList());
            mockContext.Setup(m => m.Set<User>()).Returns(mockUserSet.Object);

            applicationSettingsService = new ApplicationSettingsService(mockContext.Object);
            articleService = new ArticleService(mockContext.Object, applicationSettingsService);
            membershipService = new MembershipService(mockContext.Object);

            articleController = new ArticleController(articleService, AutoMapper.Mapper.Instance, mockContext.Object, membershipService);
        }

        private static List<User> GetUserList()
        {
            return new List<User>()
            {
                new User() {
                    Id = 1,
                    Name ="user1",
                    Email = "user1@gmail.com"
                },
                new User() {
                    Id = 2,
                    Name ="user2",
                    Email = "user2@gmail.com"
                }
            };
        }

        private static List<ArticleFeedback> GetArticleFeedbackList()
        {
            return new List<ArticleFeedback>()
            {
                new ArticleFeedback() {
                    Id = 1,
                    ArticleId = 1,
                    UserId = 1
                },
                new ArticleFeedback() {
                    Id = 2,
                    ArticleId = 2,
                    UserId = 1,
                }
            };
        }

        private static List<Article> GetArticleList()
        {
            return new List<Article>()
            {
                new Article() {
                    Id = 1,
                    Title = "Title",
                    Body = "Body",
                    IsPublished = false,
                    PublishDate = null
                },
                new Article() {
                    Id = 2,
                    Title = "Title2",
                    Body = "Body2",
                    IsPublished = false,
                    PublishDate = null
                }
            };
        }

        [TestMethod]
        public async Task Get_Should_Return_Valid_ArticleResponse()
        {
            mockContext.Setup(it => it.GetByIdAsync<Article>(It.IsAny<int>(), It.IsAny<bool>(), It.IsAny<bool>())).
                    Returns(Task.FromResult(new Article()
                    {
                        Id = 1,
                        Title = "Title",
                        Body = "Body",
                        IsPublished = false,
                        PublishDate = null
                    }));

            var response = await articleController.Get(1);
            var contentResult = response as OkNegotiatedContentResult<ArticleResponse>;
            Assert.AreEqual(1, contentResult.Content.Id);
        }

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public async Task Get_Should_Throw_EntityNotFoundException_For_Invalid_Id()
        {
            mockContext.Setup(it => it.GetByIdAsync<Article>(It.IsAny<int>(), It.IsAny<bool>(), It.IsAny<bool>())).
                    Throws<EntityNotFoundException>();

            await articleController.Get(-1);
        }

        //[TestMethod]
        //public async Task Get_Articles_Should_Return_Valid_ArticleResponse_Items()
        //{
        //    var response = await articleController.Get(new GetArticlesRequest() { PageNumber = 1, PageSize = 10, SortBy = Core.Enums.ArticlesSortBy.MostLikes});
        //    var contentResult = response as OkNegotiatedContentResult<IPagedList<ArticleResponse>>;
        //    Assert.IsTrue(contentResult.Content.TotalCount > 1);
        //}
    }
}