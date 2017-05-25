using Christoc.Modules.UserManager.Data;
using DotNetNuke.Common.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Christoc.Modules.UserManager.Components
{
    public class UserController
    {
        public static List<User> GetUsers(int moduleId)
        {
            return CBO.FillCollection<User>(DataProvider.Instance().GetUsers(moduleId));
        }
        public static void DeleteUser(int UserId)
        {

            DataProvider.Instance().DeleteUser(UserId);
        }
        public static void AddUser(User u)
        {
            u.UserId = DataProvider.Instance().AddUser(u);
        }
    }
}