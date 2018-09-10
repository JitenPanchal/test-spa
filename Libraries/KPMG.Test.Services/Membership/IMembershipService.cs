using KPMG.Test.Core.Database;
using KPMG.Test.Core.Models.ResponseModel;
using System.Threading.Tasks;

namespace KPMG.Test.Services.Membership
{
    public interface IMembershipService
    {
        LoginResponse Login(string username, string password);

        User GetUserByName(string username, bool readOnly = true, bool throwExceptionOnEntityNotFound = false);

        Task<User> GetUserByNameAsync(string username, bool readOnly = true, bool throwExceptionOnEntityNotFound = false);

        User GetCurrentLoggedInUser(bool readOnly = true, bool throwExceptionOnEntityNotFound = false);
    }
}