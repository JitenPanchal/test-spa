using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KPMG.Test.Core.Constants
{
    public static class UserFeedbackMessages
    {
        public const string InvalidUserMessage = "Your login attempt was not successful. Please try again.";
        public const string UserAccountLocked = @"Your account has been locked out because of a maximum number of incorrect login attempts. 
                                                  Please contact administrator to unlock your account";


        public const string InvalidArticleFeedbackOperation = "User has exceeded max feedback attempts";
    }
}
