using KPMG.Test.Core.Constants;

namespace KPMG.Test.Web.Models.Response
{
    public class LogInResponse
    {
        public bool Success { get; set; }

        public string Message { get; set; }

        public string NavigateTargetURL { get; set; }

        public static LogInResponse CreateFailedLogInResponse()
        {
            return new LogInResponse() { Success = false, Message = UserFeedbackMessages.InvalidUserMessage };
        }

        public static LogInResponse CreateLogInResponse(string targetUrl)
        {
            return new LogInResponse() { Success = true, NavigateTargetURL = targetUrl, Message = string.Empty };
        }

        public static LogInResponse CreateAccountLockedStatus()
        {
            return new LogInResponse() { Success = false, Message = UserFeedbackMessages.UserAccountLocked };
        }
    }
}