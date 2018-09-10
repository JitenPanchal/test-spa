
using KPMG.Test.Core.Database;

namespace KPMG.Test.Services.ApplicationSettings
{
    public class ApplicationSettingsService : BaseService, IApplicationSettingsService
    {
        private const int pageSize = 10;
        private const int maxArticleFeedbackAttempts = 3;
        
        public ApplicationSettingsService(IDbContext dbContext) : base(dbContext)
        {
        }

        public int PageSize { get => pageSize; }

        public int MaxArticleFeedbackAttempts { get => maxArticleFeedbackAttempts; }
    }
}
