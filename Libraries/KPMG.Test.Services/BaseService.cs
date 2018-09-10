

using KPMG.Test.Core.Database;

namespace KPMG.Test.Services
{
    public abstract class BaseService : IBaseService
    {
        protected readonly IDbContext dbContext;

        protected BaseService(IDbContext dbContext)
        {
            this.dbContext = dbContext;
        }
    }
}