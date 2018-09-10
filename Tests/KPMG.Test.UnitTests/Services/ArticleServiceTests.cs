using KPMG.Test.Core.Database;
using KPMG.Test.Services.ApplicationSettings;
using KPMG.Test.Services.Articles;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using System;
using System.Data.Entity;
using System.Threading.Tasks;
using System.Linq;
using System.Collections.Generic;
using KPMG.Test.Core.Enums;
using KPMG.Test.UnitTests.Fakes;
using KPMG.Test.Core.Exceptions;
using KPMG.Test.Web.ApiControllers;

namespace KPMG.Test.UnitTests.Services
{
    [TestClass]
    public class ArticleServiceTests : BaseUnitTest
    {
        Mock<Core.Database.DbContext> mockContext;

        IApplicationSettingsService applicationSettingsService;

        IArticleService articleService;

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

        [TestCleanup]
        public void TestCleanup()
        {
        }

        #region PublishArticle
        
        [TestMethod]
        public void PublishArticle_Should_Call_GetById_And_SaveChanges_Method_Once_Only()
        {
            
            mockContext.Setup(it => it.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                        Returns(new Article()
                        {
                            Id = 1,
                            Title = "Title",
                            Body = "Body",
                            IsPublished = false,
                            PublishDate = null
                        });

            mockContext.Setup(it => it.SaveChanges()).Returns(1);

            articleService.PublishArticle(1);

            mockContext.Verify(m => m.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.SaveChanges(), Times.Once());
        }

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void PublishArticle_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            mockContext.Setup(it => it.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                       Throws<EntityNotFoundException>();

            articleService.PublishArticle(int.MaxValue);
        }

        #endregion

        #region PublishArticleAsync

        [TestMethod]
        public async Task PublishArticleAsync_Should_Call_GetByIdAsync_And_SaveChangesAsync_Method_Once_Only()
        {
            mockContext.Setup(it => it.GetByIdAsync<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                        Returns(Task.FromResult(new Article()
                        {
                            Id = 1,
                            Title = "Title",
                            Body = "Body",
                            IsPublished = false,
                            PublishDate = null
                        }));

            mockContext.Setup(it => it.SaveChangesAsync()).Returns(Task.FromResult(1));

            await articleService.PublishArticleAsync(1);

            mockContext.Verify(m => m.GetByIdAsync<Article>(It.IsAny<int>(), It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.SaveChangesAsync(), Times.Once());
        }

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))] 
        public async Task PublishArticleAsync_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            mockContext.Setup(it => it.GetByIdAsync<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                      Throws<EntityNotFoundException>();

            await articleService.PublishArticleAsync(int.MaxValue);
        }

        #endregion

        #region UnPublishArticle

        [TestMethod]
        public void UnPublishArticle_Should_Call_GetById_And_SaveChanges_Method_Once_Only()
        {
            mockContext.Setup(it => it.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                        Returns(new Article()
                        {
                            Id = 1,
                            Title = "Title",
                            Body = "Body",
                            IsPublished = true,
                            PublishDate = DateTime.Today
                        });

            mockContext.Setup(it => it.SaveChanges()).Returns(1);

            articleService.UnPublishArticle(1);

            mockContext.Verify(m => m.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.SaveChanges(), Times.Once());
        }

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void UnPublishArticle_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            mockContext.Setup(it => it.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                       Throws<EntityNotFoundException>();

            articleService.UnPublishArticle(int.MaxValue);
        }

        #endregion

        #region UnPublishArticleAsync

        [TestMethod]
        public async Task UnPublishArticleAsync_Should_Call_GetByIdAsync_And_SaveChangesAsync_Method_Once_Only()
        {
            mockContext.Setup(it => it.GetByIdAsync<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                        Returns(Task.FromResult(new Article()
                        {
                            Id = 1,
                            Title = "Title",
                            Body = "Body",
                            IsPublished = true,
                            PublishDate = DateTime.Today.Date
                        }));

            mockContext.Setup(it => it.SaveChangesAsync()).Returns(Task.FromResult(1));

            await articleService.UnPublishArticleAsync(1);

            mockContext.Verify(m => m.GetByIdAsync<Article>(It.IsAny<int>(), It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.SaveChangesAsync(), Times.Once());
        }

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public async Task UnPublishArticleAsync_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            mockContext.Setup(it => it.GetByIdAsync<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                      Throws<EntityNotFoundException>();

            await articleService.UnPublishArticleAsync(int.MaxValue);
        }

        #endregion

        #region SaveArticleFeedback Validate Parameters

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void SaveArticleFeedback_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            mockContext.Setup(it => it.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                        Throws<EntityNotFoundException>();

            articleService.SaveArticleFeedback(int.MaxValue, 1, ArticleStatus.Like);
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentException))]
        public void SaveArticleFeedback_Should_Throw_ArgumentException_If_Article_Id_Is_Not_Valid()
        {
            articleService.SaveArticleFeedback(-1, 1, ArticleStatus.Like);
        }

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void SaveArticleFeedback_Should_Throw_EntityNotFoundException_If_User_Is_Not_Found()
        {
            mockContext.Setup(it => it.GetById<User>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                       Throws<EntityNotFoundException>();

            mockContext.Setup(it => it.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                       Returns(new Article()
                       {
                           Id = 1,
                           Title = "Title",
                           Body = "Body",
                           IsPublished = false,
                           PublishDate = null
                       });

            articleService.SaveArticleFeedback(1, int.MaxValue, ArticleStatus.Like);
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentException))]
        public void SaveArticleFeedback_Should_Throw_ArgumentException_If_UserId_Id_Is_Not_Valid()
        {
            articleService.SaveArticleFeedback(1, -1, ArticleStatus.Like);
        }

        #endregion

        #region SaveArticleFeedback 

        [TestMethod]
        public void SaveArticleFeedback_Should_Add_Feedback_Entry()
        {
            mockContext.Setup(it => it.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                       Returns(new Article()
                       {
                           Id = 1,
                           Title = "Title",
                           Body = "Body",
                           IsPublished = true,
                           PublishDate = DateTime.Today
                       });

            mockContext.Setup(it => it.GetById<User>(It.IsAny<int>(), It.IsAny<bool>(), true)).Returns(mockContext.Object.Set<User>().Where(it => it.Id == 1).Single());

            articleService.SaveArticleFeedback(1, 1, ArticleStatus.Like);

            var articleFeedback = articleService.GetArticleFeeback(1, 1).FirstOrDefault();

            Assert.IsNotNull(articleFeedback);
            Assert.IsTrue(articleFeedback.FeedbackCount == 1);
            Assert.IsTrue(articleFeedback.ArticleId == 1);
            Assert.IsTrue(articleFeedback.UserId == 1);
        }

        [TestMethod]
        [ExpectedException(typeof(InvalidOperationException))]
        public void SaveArticleFeedback_Should_Throw_Exception_On_Exceeding_Max_Attempts()
        {
            mockContext.Setup(it => it.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                       Returns(new Article()
                       {
                           Id = 1,
                           Title = "Title",
                           Body = "Body",
                           IsPublished = true,
                           PublishDate = DateTime.Today
                       });

            mockContext.Setup(it => it.GetById<User>(It.IsAny<int>(), It.IsAny<bool>(), true)).Returns(mockContext.Object.Set<User>().Where(it => it.Id == 1).Single());

            for (int i = 0; i <= applicationSettingsService.MaxArticleFeedbackAttempts; i++)
            {
                articleService.SaveArticleFeedback(1, 1, ArticleStatus.Like);
            }
        }

        #endregion

        #region SaveArticleComments Validate Parameters

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void SaveArticleComments_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            mockContext.Setup(it => it.GetById<Article>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                        Throws<EntityNotFoundException>();

            articleService.SaveArticleComments(int.MaxValue, 1, "Like it ?");
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentException))]
        public void SaveArticleComments_Should_Throw_ArgumentException_If_Article_Id_Is_Not_Valid()
        {
            articleService.SaveArticleComments(-1, 1, "Like it ?");
        }

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void SaveArticleComments_Should_Throw_EntityNotFoundException_If_User_Is_Not_Found()
        {
            mockContext.Setup(it => it.GetById<User>(It.IsAny<int>(), It.IsAny<bool>(), true)).
                           Throws<EntityNotFoundException>();

            articleService.SaveArticleComments(1, int.MaxValue, "Like it ?");
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentException))]
        public void SaveArticleComments_Should_Throw_ArgumentException_If_UserId_Id_Is_Not_Valid()
        {
            articleService.SaveArticleComments(1, -1, "Like it ?");
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentException))]
        public void SaveArticleComments_Should_Throw_ArgumentException_If_Comments_Is_Null()
        {
            articleService.SaveArticleComments(1, -1, null);
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentException))]
        public void SaveArticleComments_Should_Throw_ArgumentException_If_Comments_Is_Empty()
        {
            articleService.SaveArticleComments(1, -1, string.Empty);
        }

        [TestMethod]
        [ExpectedException(typeof(ArgumentException))]
        public void SaveArticleComments_Should_Throw_ArgumentException_If_Comments_Is_Contains_Only_WhiteSpace()
        {
            articleService.SaveArticleComments(1, -1, "              ");
        }

        #endregion

        [TestMethod]
        public void SaveArticleComments_Should_Call_GetById_And_SaveChanges_Method_Once_Only()
        {
            mockContext.Setup(it => it.GetById<Article>(1, It.IsAny<bool>(), true)).
            Returns(mockContext.Object.Set<Article>().Where(it => it.Id == 1).Single());

            mockContext.Setup(it => it.GetById<User>(1, It.IsAny<bool>(), true)).
            Returns(mockContext.Object.Set<User>().Where(it => it.Id == 1).Single());

            mockContext.Setup(it => it.SaveChanges()).Returns(1);

            articleService.SaveArticleComments(1, 1, "Like");

            mockContext.Verify(m => m.GetById<Article>(1, It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.GetById<User>(1, It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.SaveChanges(), Times.Once());
        }

        [TestMethod]
        public async Task SaveArticleCommentsAsync_Should_Call_GetById_And_SaveChanges_Method_Once_Only()
        {
            mockContext.Setup(it => it.GetByIdAsync<Article>(1, It.IsAny<bool>(), true)).
            Returns(Task.FromResult(mockContext.Object.Set<Article>().Where(it => it.Id == 1).Single()));

            mockContext.Setup(it => it.GetByIdAsync<User>(1, It.IsAny<bool>(), true)).
            Returns(Task.FromResult(mockContext.Object.Set<User>().Where(it => it.Id == 1).Single()));

            mockContext.Setup(it => it.SaveChanges()).Returns(1);

            await articleService.SaveArticleCommentsAsync(1, 1, "Like");

            mockContext.Verify(m => m.GetByIdAsync<Article>(1, It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.GetByIdAsync<User>(1, It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.SaveChangesAsync(), Times.Once());
        }

        [TestMethod]
        public void SaveArticleFeedback_Should_Call_GetById_And_SaveChangesAsync_Method_Once_Only()
        {
            mockContext.Setup(it => it.GetById<Article>(1, It.IsAny<bool>(), true)).
            Returns(mockContext.Object.Set<Article>().Where(it => it.Id == 1).Single());

            mockContext.Setup(it => it.GetById<User>(1, It.IsAny<bool>(), true)).
            Returns(mockContext.Object.Set<User>().Where(it => it.Id == 1).Single());

            mockContext.Setup(it => it.SaveChanges()).Returns(1);

            articleService.SaveArticleFeedback(1, 1, ArticleStatus.Like);

            mockContext.Verify(m => m.GetById<Article>(1, It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.GetById<User>(1, It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.SaveChanges(), Times.Once());
        }

        [TestMethod]
        public async Task SaveArticleFeedbackAsync_Should_Call_GetById_And_SaveChangesAsync_Method_Once_Only()
        {
            mockContext.Setup(it => it.GetByIdAsync<Article>(1, It.IsAny<bool>(), true)).
            Returns(Task.FromResult(mockContext.Object.Set<Article>().Where(it => it.Id == 1).Single()));

            mockContext.Setup(it => it.GetByIdAsync<User>(1, It.IsAny<bool>(), true)).
            Returns(Task.FromResult(mockContext.Object.Set<User>().Where(it => it.Id == 1).Single()));

            mockContext.Setup(it => it.SaveChangesAsync()).Returns(Task.FromResult(1));

            await articleService.SaveArticleFeedbackAsync(1, 1, ArticleStatus.Like);

            mockContext.Verify(m => m.GetByIdAsync<Article>(1, It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.GetByIdAsync<User>(1, It.IsAny<bool>(), true), Times.Once());
            mockContext.Verify(m => m.SaveChangesAsync(), Times.Once());
        }

        #region SaveArticleComments

        [TestMethod]
        public void SaveArticleComments_Should_Save_Comments_And_Set_CommentsDate()
        {
            var comments = "didn't like it";

            articleService.SaveArticleComments(1, 1, "didn't like it");

            var articleFeedback = articleService.GetArticleFeeback(1, 1).FirstOrDefault();

            Assert.IsNotNull(articleFeedback);
            Assert.IsTrue(articleFeedback.Comments == comments);
            Assert.IsTrue(articleFeedback.CommentDate.HasValue);
            Assert.IsTrue(articleFeedback.ArticleId == 1);
            Assert.IsTrue(articleFeedback.UserId == 1);
        }

        #endregion
    }
}