using KPMG.Test.Core.Database;
using KPMG.Test.Core.Models.ResponseModel;
using KPMG.Test.Services;
using KPMG.Test.Services.Membership;
using System.Linq;
using System.Threading.Tasks;
using System.Data.Entity;

namespace KPMG.Test.ApiIntegrationTests.Fakes.Services
{
    public class FakeMembershipService : BaseService, IMembershipService
    {
        public FakeMembershipService(IDbContext dbContext) : base(dbContext)
        {
        }

        public User GetCurrentLoggedInUser(bool readOnly = true, bool throwExceptionOnEntityNotFound = false)
        {
            return dbContext.Set<User>().First();
        }

        public User GetUserByName(string username, bool readOnly = true, bool throwExceptionOnEntityNotFound = false)
        {
            return dbContext.Set<User>().First();
        }

        public async Task<User> GetUserByNameAsync(string username, bool readOnly = true, bool throwExceptionOnEntityNotFound = false)
        {
            return await dbContext.Set<User>().FirstAsync();
        }

        public LoginResponse Login(string username, string password)
        {
            return new LoginResponse()
            {
                IsSuccess = true,
                UserId = 1,
                UserName = username,
                Role = 1,
            };
        }
    }
}
