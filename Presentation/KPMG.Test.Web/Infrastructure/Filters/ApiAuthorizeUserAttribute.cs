using System.Web.Http;
using System.Web.Http.Controllers;
using System.Linq;
using Autofac.Integration.WebApi;

using KPMG.Test.Services.Membership;
using System.Net.Http;
using KPMG.Test.Core.Database;

namespace KPMG.Test.Web.Infrastructure.Filters
{
    public class ApiAuthorizeUserAttribute : AuthorizeAttribute, IAutofacAuthorizationFilter
    {
        private IMembershipService membershipService;
        private IDbContext dbContext;

        protected override bool IsAuthorized(HttpActionContext actionContext)
        {
            InitServices(actionContext);

            var securable = actionContext.ActionDescriptor.GetCustomAttributes<SecurableAttribute>().FirstOrDefault();

            if (securable != null)
            {
                // TODO Check permission against database to reject request
                // var key = securable.SecurableKey;
                return true;
            }
            else
                return true;
        }

        #region Helpers

        private void InitServices(HttpActionContext actionContext)
        {
            var requestScope = actionContext.Request.GetDependencyScope();

            dbContext = dbContext ?? requestScope.GetService(typeof(IDbContext)) as IDbContext;
            membershipService = membershipService ?? requestScope.GetService(typeof(IMembershipService)) as IMembershipService;
        }

        #endregion
    }
}