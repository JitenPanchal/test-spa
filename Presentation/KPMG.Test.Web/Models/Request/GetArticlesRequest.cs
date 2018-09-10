using KPMG.Test.Core.Enums;
using KPMG.Test.WebApi.Models;

namespace KPMG.Test.Web.Models.Request
{
    public class GetArticlesRequest : PagingParameterRequest
    {
        public ArticlesSortBy SortBy { get; set; }
    }
}