using Autofac;
using Autofac.Integration.WebApi;
using AutoMapper;
using KPMG.Test.ApiIntegrationTests.Fakes.Services;
using KPMG.Test.Core.Database;
using KPMG.Test.Core.Database.Migration;
using KPMG.Test.Services.Membership;
using KPMG.Test.UnitTests.Fakes;
using KPMG.Test.Web;
using KPMG.Test.WebApi.Models.Request;
using KPMG.Test.WebApi.Models.Response.Articles;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.SelfHost;

namespace KPMG.Test.ApiIntegrationTests
{
    [TestClass()]
    public class BaseIntegrationTest
    {
        const string baseAddress = "http://localhost/";

        protected static string GetUniqueStringValue(string value = "test_")
        {
            return string.Format("{0}{1}", value, Guid.NewGuid().ToString("N"));
        }

        protected static Mock<DbSet<T>> GetQueryableMockDbSet<T>(List<T> sourceList) where T : class
        {
            var data = sourceList.AsQueryable();

            var mockSet = new Mock<DbSet<T>>();

            mockSet.As<IDbAsyncEnumerable<T>>()
                .Setup(m => m.GetAsyncEnumerator())
                .Returns(new DbAsyncEnumerator<T>(data.GetEnumerator()));

            mockSet.As<IQueryable<T>>()
                .Setup(m => m.Provider)
                .Returns(new DbAsyncQueryProvider<T>(data.Provider));

            mockSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(data.Provider);
            mockSet.As<IQueryable<T>>().Setup(m => m.Expression).Returns(data.Expression);
            mockSet.As<IQueryable<T>>().Setup(m => m.ElementType).Returns(data.ElementType);
            mockSet.As<IQueryable<T>>().Setup(m => m.GetEnumerator()).Returns(() => data.GetEnumerator());

            mockSet.As<IQueryable<T>>().Setup(m => m.Provider).Returns(new DbAsyncQueryProvider<T>(data.Provider));
            mockSet.As<IDbAsyncEnumerable<T>>().Setup(m => m.GetAsyncEnumerator()).Returns(new DbAsyncEnumerator<T>(data.GetEnumerator()));

            mockSet.Setup(m => m.Add(It.IsAny<T>())).Callback((T entity) => sourceList.Add(entity));
            mockSet.Setup(m => m.Remove(It.IsAny<T>())).Callback((T entity) => sourceList.Remove(entity));

            return mockSet;
        }

        private static readonly string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected static string testDatabaseConnection = null;

        private static HttpSelfHostServer server;

        private static HttpClient client;

        [AssemblyInitialize()]
        public static void AssemblyInitialize(TestContext context)
        {
            LoadAssemblies();
            CreateDatabase();
            ConfigureMapper();
            StartServer();
        }

        [AssemblyCleanup()]
        public static void AssemblyCleanup()
        {
            server.CloseAsync().Wait();

            if (server != null)
                server.Dispose();

            if (client != null)
                client.Dispose();

            Database.Delete(testDatabaseConnection);
        }

        #region Helpers

        private static string GetQueryString(object obj)
        {
            var properties = from p in obj.GetType().GetProperties()
                             where p.GetValue(obj, null) != null
                             select p.Name + "=" + HttpUtility.UrlEncode(p.GetValue(obj, null).ToString());

            return String.Join("&", properties.ToArray());
        }

        protected virtual HttpResponseMessage ExecuteGetRequest(string url)
        {
            using (HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, $"{baseAddress}{url}"))
            {
                return GetResponse(request);
            }
        }

        protected virtual HttpResponseMessage ExecuteGetRequest(string url, object obj)
        {
            using (HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, $"{baseAddress}{url}?{GetQueryString(obj)}"))
            {
                return GetResponse(request);
            }
        }

        private HttpResponseMessage GetResponse(HttpRequestMessage request)
        {
            return GetHttpClient().SendAsync(request).Result;
        }

        protected static async Task<T> GetResponse<T>(HttpResponseMessage response) where T : class
        {
            var data = await response.Content.ReadAsStringAsync();
            try
            {
                return JsonConvert.DeserializeObject<T>(data);
            }
            catch(Exception e)
            {
                throw e;
            }
        }

        protected virtual HttpResponseMessage ExecuteJsonPostRequest(string url, object body)
        {
            using (HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Post, $"{baseAddress}{url}"))
            {
                request.Content = GetJson(body);
                return GetResponse(request);
            }
        }

        protected virtual HttpResponseMessage ExecuteJsonPutRequest(string url, object body)
        {
            using (HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Put, $"{baseAddress}{url}"))
            {
                request.Content = GetJson(body);
                return GetResponse(request);
            }
        }

        protected virtual HttpResponseMessage ExecuteDeleteRequest(string url)
        {
            using (HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Delete, $"{baseAddress}{url}"))
            {
                return GetResponse(request);
            }
        }

        private static StringContent GetJson(object body)
        {
            return new StringContent(JsonConvert.SerializeObject(body), Encoding.UTF8, "application/json");
        }

        protected virtual HttpClient GetHttpClient()
        {
            return client;
        }

        #endregion

        #region AssemblyInitialize Helpers

        private static void StartServer()
        {
            HttpSelfHostConfiguration configuration = new HttpSelfHostConfiguration(baseAddress);
            configuration.MapHttpAttributeRoutes();

            // TODO 
            ApiFilterConfig.RegisterGlobalFilters(configuration);
            configuration.IncludeErrorDetailPolicy = IncludeErrorDetailPolicy.Always;

            var container = AutofacConfig.GetContainerBuilder(testDatabaseConnection);
            container.RegisterType(typeof(FakeMembershipService)).As<IMembershipService>();

            configuration.DependencyResolver =  new AutofacWebApiDependencyResolver(container.Build());
            configuration.EnsureInitialized();

            server = new HttpSelfHostServer(configuration);

            client = new HttpClient();

            server.OpenAsync().Wait();
        }

        private static void LoadAssemblies()
        {
            var loadedAssemblies = AppDomain.CurrentDomain.GetAssemblies().ToList();
            var loadedPaths = loadedAssemblies.Select(a => a.Location).ToArray();

            var referencedPaths = Directory.GetFiles(AppDomain.CurrentDomain.BaseDirectory, "*.dll");
            var toLoad = referencedPaths.Where(r => !loadedPaths.Contains(r, StringComparer.InvariantCultureIgnoreCase)).ToList();
            toLoad.ForEach(path =>
            {
                loadedAssemblies.Add(AppDomain.CurrentDomain.Load(AssemblyName.GetAssemblyName(path)));
            });
        }

        private static void ConfigureMapper()
        {
            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<Article, ArticleResponse>();
                cfg.CreateMap<ArticleRequest, Article>();
            }
                        );
        }

        private static void CreateDatabase()
        {
            testDatabaseConnection = string.Format(connectionString, Guid.NewGuid().ToString("N"));

            using (var db = new Core.Database.DbContext(testDatabaseConnection))
            {
                db.Database.CreateIfNotExists();

                var migration = new MigrateDatabaseToLatestVersion<Core.Database.DbContext, KPMGDbMigrationConfiguration>(true);

                migration.InitializeDatabase(db);
            }
        }

        #endregion
    }
}