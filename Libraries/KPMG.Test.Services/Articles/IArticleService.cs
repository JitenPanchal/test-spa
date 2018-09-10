using KPMG.Test.Core.Database;
using KPMG.Test.Core.Enums;
using KPMG.Test.Core.Models.ResponseModel;
using System.Linq;
using System.Threading.Tasks;

namespace KPMG.Test.Services.Articles
{
    public interface IArticleService : IBaseService
    {
        void PublishArticle(int articleId);

        Task PublishArticleAsync(int articleId);

        Task UnPublishArticleAsync(int articleId);

        void UnPublishArticle(int articleId);

        IQueryable<ArticleMostLiked> GetArticleMostLikedQuery();

        void SaveArticleFeedback(int articleId, int userId, ArticleStatus articleStatus);

        Task SaveArticleFeedbackAsync(int articleId, int userId, ArticleStatus articleStatus);

        void SaveArticleComments(int articleId, int userId, string comments);

        Task SaveArticleCommentsAsync(int articleId, int userId, string comments);

        IQueryable<ArticleFeedback> GetArticleFeeback(int articleId, int userId);

        IQueryable<ArticleFeedback> GetArticleStatQuery(ArticleStatus status);

        IQueryable<ArticleStatResponse> GetMyArticlesWithStatQuery(string username, ArticlesSortBy articlesSortBy);

        IQueryable<ArticleStatResponse> GetArticlesWithStatQuery(ArticlesSortBy articlesSortBy);

        IQueryable<ArticleStatResponse> GetArticleWithStatQuery(int articleId);

        IQueryable<ArticleStatResponse> GetArticlesWithStatQuery();
    }
}