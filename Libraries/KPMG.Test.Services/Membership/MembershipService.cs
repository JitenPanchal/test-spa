using KPMG.Test.Core.Database;
using KPMG.Test.Core.Models.ResponseModel;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using System.Data.Entity;
using KPMG.Test.Core.Exceptions;
using System.Collections.Generic;
using System.Web;
using KPMG.Test.Core.Constants;

namespace KPMG.Test.Services.Membership
{
    public class MembershipService : BaseService, IMembershipService
    {
        public MembershipService(IDbContext dbContext) : base(dbContext)
        {
        }

        public virtual LoginResponse Login(string username, string password)
        {
            var user = GetUserByName(username);
            if (user != null && "password" == password)
            {
                return new LoginResponse()
                {
                    IsSuccess = true,
                    UserId = 1,
                    UserName = username,
                    Role = (byte)user.UserType
                };
            }
            else
                return LoginResponse.CreateFailedResponse();
        }

        public User GetUserByName(string username, bool readOnly = true, bool throwExceptionOnEntityNotFound = false)
        {
            var query = GetUserByNameQuery(username, readOnly);

            var entity = query.FirstOrDefault();

            if (throwExceptionOnEntityNotFound && entity == null)
                throw new EntityNotFoundException(username);

            return entity;
        }

        public User GetCurrentLoggedInUser(bool readOnly = true, bool throwExceptionOnEntityNotFound = false)
        {
            var query = GetUserByNameQuery(HttpContext.Current.User.Identity.Name, readOnly);

            var entity = query.FirstOrDefault();

            if (throwExceptionOnEntityNotFound && entity == null)
                throw new EntityNotFoundException(HttpContext.Current.User.Identity.Name);

            return entity;
        }

        

        private IQueryable<User> GetUserByNameQuery(string username, bool readOnly)
        {
            var query = dbContext.Set<User>().Where(it => it.Name == username);

            if (readOnly)
                query = query.AsNoTracking();
            return query;
        }

        public async Task<User> GetUserByNameAsync(string username, bool readOnly = true, bool throwExceptionOnEntityNotFound = false)
        {
            var query = GetUserByNameQuery(username, readOnly);

            var entity = await query.FirstOrDefaultAsync();

            if (throwExceptionOnEntityNotFound && entity == null)
                throw new EntityNotFoundException(username);

            return entity;
        }
    }

}
