using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Linq;
using KPMG.Test.Services.Articles;
using KPMG.Test.Core.Database;
using KPMG.Test.Core.Exceptions;
using System.Transactions;

namespace KPMG.Test.IntegrationTests.Services
{
    [TestClass()]
    public class DbContextTests : BaseIntegrationTest
    {
        private IDbContext dbContext;
        private TransactionScope transactionScope;

        #region Helpers

        [TestInitialize]
        public void TestInitialize()
        {
            dbContext = new DbContext(testDatabaseConnection);
            transactionScope = CreateTransactionScope();
        }

        [TestCleanup]
        public void TestCleanup()
        {
            if (transactionScope != null)
                transactionScope.Dispose();
            transactionScope = null;

            if (dbContext != null)
                dbContext.Dispose();
            dbContext = null;
        }

        private static Article GetArticle()
        {
            return new Article() { Title = GetUniqueStringValue("title_"), Body = "Body", AddedByUserId = 1, Author = "Jiten", PublishDate = DateTime.UtcNow };
        }

        private static User GetUser()
        {
            return new User() { Email = "test@gmail.com", Name = "test_user" };
        }

        #endregion

        [TestMethod()]
        public void GetByIdQuery_Should_Return_Single_Entity()
        {
            var article = dbContext.Set<Article>().First();

            var newArticle = dbContext.GetById<Article>(article.Id);

            Assert.AreEqual(article.Id, newArticle.Id);
        }

        [TestMethod()]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void GetByIdQuery_Should_Throw_EntityNotFound_Exception_If_Invalid_Id_And_ThrowExceptionOnEntityNotFound_Is_Set_True()
        {
            var article = dbContext.Set<Article>().First();

            var newArticle = dbContext.GetById<Article>(article.Id * -1, true, true);

            Assert.Fail();
        }

        [TestMethod()]
        public void GetByIdQuery_Should_Return_Null_If_Invalid_Id_And_ThrowExceptionOnEntityNotFound_Is_Set_False()
        {
            var article = dbContext.Set<Article>().First();

            var newArticle = dbContext.GetById<Article>(article.Id * -1, true, false);

            Assert.IsNull(newArticle);
        }

        [TestMethod()]
        public void GetByIdQuery_Should_Return_Query_To_Get_Single_Entity_And_Not_Updatble_If_ReadOnly_Is_True()
        {
            var article = dbContext.Set<Article>().First();

            var newArticle = dbContext.GetById<Article>(article.Id, true);
            newArticle.Title = GetUniqueStringValue();
            dbContext.SaveChangesAsync().Wait();

            var afterUpdateArticle = dbContext.GetById<Article>(article.Id);

            Assert.AreNotEqual<string>(newArticle.Title, afterUpdateArticle.Title);
        }

        [TestMethod()]
        [ExpectedException(typeof(EntityNotFoundException))]
        public void IsValidEntityId_Should_Throw_EntityNotFound_Exception_If_Invalid_Id_Is_Provided_And_ThrowExceptionOnEntityNotFound_Is_Set_True()
        {
            dbContext.IsValidEntityId<Article>(-1, true);
        }

        [TestMethod()]
        public void IsValidEntityId_Should_Return_False_If_Invalid_Id_Is_Provided_And_ThrowExceptionOnEntityNotFound_Is_Set_False()
        {
            var isValidEntity = dbContext.IsValidEntityId<Article>(-1, false);
            Assert.IsTrue(isValidEntity == false);
        }

        [TestMethod()]
        public void IsValidEntityId_Should_Return_True_If_Valid_Id_Is_Provided()
        {
            var article = dbContext.Set<Article>().First();

            var isValidEntity = dbContext.IsValidEntityId<Article>(article.Id);

            Assert.IsTrue(isValidEntity);
        }
    }
}