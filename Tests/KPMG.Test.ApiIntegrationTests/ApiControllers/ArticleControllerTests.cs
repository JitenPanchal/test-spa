using Microsoft.VisualStudio.TestTools.UnitTesting;
using KPMG.Test.WebApi.Models.Response.Articles;
using System.Threading.Tasks;
using KPMG.Test.WebApi.Models;
using System.Net;
using KPMG.Test.WebApi.Models.Request;
using KPMG.Test.Core.Database;
using KPMG.Test.ApiIntegrationTests.Fakes;

namespace KPMG.Test.ApiIntegrationTests.ApiControllers
{
    [TestClass]
    public class ArticleControllerTests : BaseIntegrationTest
    {
        #region Get

        [TestMethod]
        public async Task Get_Should_Return_Valid_ArticleResponse()
        {
            var response = ExecuteGetRequest("api/v1/article/1");
            var articleResponse = await GetResponse<ArticleResponse>(response);
            Assert.AreEqual(HttpStatusCode.OK, response.StatusCode);
            Assert.IsTrue(articleResponse.Id > 0);
        }

        [TestMethod]
        public void Get_Should_Return_NotFound_Status_Code()
        {
            var response = ExecuteGetRequest($"api/v1/article/{int.MaxValue * -1}");
            Assert.AreEqual(HttpStatusCode.NotFound, response.StatusCode);
        }

        [TestMethod]
        public async Task Get_Articles_Should_Return_Valid_ArticleResponse_Items()
        {
            var response = ExecuteGetRequest("api/v1/articles", new PagingParameterRequest() { PageNumber = 1, PageSize = 10 });
            var getResponse = await GetResponse<TestPagedList<ArticleResponse>>(response);
            Assert.AreEqual(HttpStatusCode.OK, response.StatusCode);
            Assert.IsTrue(getResponse!=null);
            Assert.IsTrue(getResponse.TotalCount > 0);
        }

        [TestMethod]
        public async Task Get_Articles_With_Invalid_PagingParameterRequest_Should_Return_Valid_ArticleResponse_Items()
        {
            var response = ExecuteGetRequest("api/v1/articles", new PagingParameterRequest() { PageNumber = 0, PageSize = 0 });
            var getResponse = await GetResponse<TestErrorInfo>(response);
            Assert.AreEqual(HttpStatusCode.BadRequest, response.StatusCode);
            Assert.IsTrue(getResponse.ValidationErrorMessages.Count > 0);
        }

        #endregion

        #region Put

        [TestMethod]
        public async Task Post_Article_Should_Create_Article()
        {
            var articleRequest = new ArticleRequest()
            {
                Title = GetUniqueStringValue("title_"),
                Body = GetUniqueStringValue("body_"),
                IsPublished = false,
                PublishDate = null,
                Author = "God",
            };

            var response = ExecuteJsonPostRequest("api/v1/article", articleRequest);

            var articleResponse = await GetResponse<ArticleResponse>(response);

            Assert.AreEqual(HttpStatusCode.OK, response.StatusCode);
            Assert.AreEqual(articleRequest.Title, articleResponse.Title);
            Assert.AreEqual(articleRequest.Body, articleResponse.Body);
            Assert.AreEqual(articleRequest.Author, articleResponse.Author);
            Assert.IsTrue(articleResponse.Id > 1);
        }

        #endregion

        #region Post

        [TestMethod]
        public async Task Put_Article_Should_Update_Article()
        {
            var articleRequest = new ArticleRequest()
            {
                Title = GetUniqueStringValue("title_"),
                Body = GetUniqueStringValue("body_"),
                IsPublished = false,
                PublishDate = null,
                Author = "God",
            };

            var postRresponse = ExecuteJsonPostRequest("api/v1/article", articleRequest);

            var articleResponse = await GetResponse<ArticleResponse>(postRresponse);

            var articleRequest2 = new ArticleRequest()
            {
                Title = GetUniqueStringValue("title_"),
                Body = GetUniqueStringValue("body_"),
                IsPublished = false,
                PublishDate = null,
                Author = "God2",
            };

            var putResponse = ExecuteJsonPutRequest($"api/v1/article/{articleResponse.Id}", articleRequest2);

            var articleResponse2 = await GetResponse<ArticleResponse>(putResponse);

            Assert.AreEqual(HttpStatusCode.OK, postRresponse.StatusCode);
            Assert.AreNotEqual(articleResponse.Title, articleResponse2.Title);
            Assert.AreNotEqual(articleResponse.Body, articleResponse2.Body);
            Assert.AreNotEqual(articleResponse.Author, articleResponse2.Author);
            Assert.AreEqual(articleResponse.Id, articleResponse2.Id);
        }

        #endregion

        #region Put

        [TestMethod]
        public async Task Delete_Article_Should_Delete_Article()
        {
            var articleRequest = new ArticleRequest()
            {
                Title = GetUniqueStringValue("title_"),
                Body = GetUniqueStringValue("body_"),
                IsPublished = false,
                PublishDate = null,
                Author = "God",
            };

            var postRresponse = ExecuteJsonPostRequest("api/v1/article", articleRequest);

            Assert.AreEqual(HttpStatusCode.OK, postRresponse.StatusCode);

            var articleResponse = await GetResponse<ArticleResponse>(postRresponse);

            var deleteRresponse = ExecuteDeleteRequest($"api/v1/article/{articleResponse.Id}");

            Assert.AreEqual(HttpStatusCode.OK, deleteRresponse.StatusCode);

            var getResponse = ExecuteGetRequest($"api/v1/article/{articleResponse.Id}");

            Assert.AreEqual(HttpStatusCode.NotFound, getResponse.StatusCode);
        }

        #endregion
    }
}