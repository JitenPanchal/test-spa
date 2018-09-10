using System;

namespace KPMG.Test.Core.Enums
{
    [Flags]
    public enum PermissionType
    {
        Create = 1,
        Read = 2,
        Update = 4,
        Delete = 8,
        Allow = 16,
        All = Create | Read | Update | Delete,
    }
}
