using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Linq;
using KPMG.Test.Services.Articles;
using KPMG.Test.Core.Database;
using KPMG.Test.Core.Exceptions;
using System.Transactions;
using KPMG.Test.Services.ApplicationSettings;
using KPMG.Test.Core.Enums;

namespace KPMG.Test.IntegrationTests.Services
{
    [TestClass()]
    public class ArticleServiceTests : BaseIntegrationTest
    {
        private IDbContext dbContext;
        private IArticleService articleService;
        private IApplicationSettingsService applicationSettingsService;
        private TransactionScope transactionScope;

        #region Helpers

        [TestInitialize]
        public void TestInitialize()
        {
            dbContext = new DbContext(testDatabaseConnection);
            applicationSettingsService = new ApplicationSettingsService(dbContext);
            articleService = new ArticleService(dbContext, applicationSettingsService);
            transactionScope = CreateTransactionScope();
        }

        [TestCleanup]
        public void TestCleanup()
        {
            if (transactionScope != null)
                transactionScope.Dispose();
            transactionScope = null;

            articleService = null;

            if (dbContext != null)
                dbContext.Dispose();
            dbContext = null;
        }

        #endregion

        #region PublishArticle

        [TestMethod]
        public void PublishArticle_Should_Set_IsPublished_To_True_And_PublishDate_To_DateValue()
        {
            var article = dbContext.Set<Article>().First();

            articleService.PublishArticle(article.Id);

            var publishedArticle = dbContext.GetById<Article>(article.Id);

            Assert.AreEqual(publishedArticle.IsPublished, true);
            Assert.AreEqual(publishedArticle.PublishDate.HasValue, true);
        }


        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void PublishArticle_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            articleService.PublishArticle(int.MaxValue);

            Assert.Fail();
        }

        #endregion

        #region PublishArticleAsync

        [TestMethod]
        public void PublishArticleAsync_Should_Set_IsPublished_To_True_And_PublishDate_To_DateValue()
        {
            var article = dbContext.Set<Article>().First();

            articleService.PublishArticleAsync(article.Id).Wait();

            var publishedArticle = dbContext.GetById<Article>(article.Id);

            Assert.AreEqual(publishedArticle.IsPublished, true);
            Assert.AreEqual(publishedArticle.PublishDate.HasValue, true);
        }

        [TestMethod]
        public void PublishArticleAsync_Should_Throw_InvalidOperationException_If_Article_Is_Already_Published()
        {
            var article = dbContext.Set<Article>().First();
            try
            {
                articleService.PublishArticleAsync(article.Id).Wait();
                articleService.PublishArticleAsync(article.Id).Wait();
            }
            catch (AggregateException aggregateException)
            {
                Assert.IsInstanceOfType(aggregateException.InnerException, typeof(InvalidOperationException));
            }
        }

        [TestMethod]
        public void PublishArticleAsync_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            try
            {
                articleService.PublishArticleAsync(int.MaxValue).Wait();
            }
            catch (AggregateException aggregateException)
            {
                Assert.IsInstanceOfType(aggregateException.InnerException, typeof(EntityNotFoundException));
            }
        }

        #endregion

        #region UnPublishArticle

        [TestMethod]
        public void UnPublishArticle_Should_Set_IsPublished_To_False_And_PublishDate_To_Null()
        {
            var article = dbContext.Set<Article>().First();

            articleService.PublishArticle(article.Id);
            articleService.UnPublishArticle(article.Id);

            var unPublishedArticle = dbContext.GetById<Article>(article.Id);

            Assert.AreEqual(unPublishedArticle.IsPublished, false);
            Assert.AreEqual(unPublishedArticle.PublishDate.HasValue, false);
        }

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void UnPublishArticle_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            articleService.UnPublishArticle(int.MaxValue);

            Assert.Fail();
        }

        #endregion

        #region UnPublishArticleAsync

        [TestMethod]
        public void UnPublishArticleAsync_Should_Set_IsPublished_To_False_And_PublishDate_To_Null()
        {
            var article = dbContext.Set<Article>().First();

            articleService.PublishArticleAsync(article.Id).Wait();
            articleService.UnPublishArticleAsync(article.Id).Wait();

            var unPublishedArticle = dbContext.GetById<Article>(article.Id);

            Assert.AreEqual(unPublishedArticle.IsPublished, false);
            Assert.AreEqual(unPublishedArticle.PublishDate.HasValue, false);
        }

        [TestMethod]
        public void UnPublishArticleAsync_Should_Throw_InvalidOperationException_If_Article_Is_Not_Published()
        {
            var article = dbContext.Set<Article>().First();

            try
            {
                articleService.PublishArticleAsync(article.Id).Wait();

                articleService.UnPublishArticleAsync(article.Id).Wait();

                articleService.UnPublishArticleAsync(article.Id).Wait();
            }
            catch (AggregateException aggregateException)
            {
                Assert.IsInstanceOfType(aggregateException.InnerException, typeof(InvalidOperationException));
            }
        }

        [TestMethod]
        public void UnPublishArticleAsync_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
            try
            {
                articleService.UnPublishArticleAsync(int.MaxValue).Wait();
            }
            catch (AggregateException aggregateException)
            {
                Assert.IsInstanceOfType(aggregateException.InnerException, typeof(EntityNotFoundException));
            }
        }

        #endregion

        #region GetArticleMostLikedQuery

        [TestMethod]
        public void GetArticleMostLikedQuery_Should_Return_Most_Liked_Article()
        {
            var article = dbContext.Set<Article>().First();

            var user = dbContext.Set<User>().First();

            articleService.SaveArticleFeedback(article.Id, user.Id, ArticleStatus.Like);

            var articleMostLiked = articleService.GetArticleMostLikedQuery().First();
            Assert.IsTrue(articleMostLiked.Count > 0);
        }

        #endregion

        #region SaveArticleFeedback Validate Parameters

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void SaveArticleFeedback_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
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
            var article = dbContext.Set<Article>().First();

            var user = dbContext.Set<User>().First();

            articleService.SaveArticleFeedback(article.Id, user.Id, ArticleStatus.Like);

            var articleFeedback = dbContext.Set<ArticleFeedback>().AsNoTracking().Where(it => it.UserId == user.Id && it.ArticleId == article.Id).Single();

            Assert.IsNotNull(articleFeedback);
            Assert.IsTrue(articleFeedback.FeedbackCount == 1);
            Assert.IsTrue(articleFeedback.ArticleId == article.Id);
            Assert.IsTrue(articleFeedback.UserId == user.Id);
        }

        [TestMethod]
        [ExpectedException(typeof(InvalidOperationException))]
        public void SaveArticleFeedback_Should_Throw_Exception_On_Exceeding_Max_Attempts()
        {
            var article = dbContext.Set<Article>().First();

            var user = dbContext.Set<User>().First();

            for (int i = 0; i <= applicationSettingsService.MaxArticleFeedbackAttempts; i++)
            {
                articleService.SaveArticleFeedback(article.Id, user.Id, ArticleStatus.Like);
            }
        }

        #endregion

        #region SaveArticleComments Validate Parameters

        [TestMethod]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void SaveArticleComments_Should_Throw_EntityNotFoundException_If_Article_Is_Not_Found()
        {
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

        #region SaveArticleComments

        [TestMethod]
        public void SaveArticleComments_Should_Save_Comments_And_Set_CommentsDate()
        {
            var article = dbContext.Set<Article>().First();

            var user = dbContext.Set<User>().First();

            var comments = "didn't like it";

            articleService.SaveArticleComments(article.Id, user.Id, "didn't like it");

            var articleFeedback = dbContext.Set<ArticleFeedback>().AsNoTracking().Where(it => it.UserId == user.Id && it.ArticleId == article.Id).Single();

            Assert.IsNotNull(articleFeedback);
            Assert.IsTrue(articleFeedback.Comments == comments);
            Assert.IsTrue(articleFeedback.CommentDate.HasValue);
            Assert.IsTrue(articleFeedback.ArticleId == article.Id);
            Assert.IsTrue(articleFeedback.UserId == user.Id);
        }

        #endregion
    }
}