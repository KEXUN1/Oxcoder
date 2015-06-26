using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using OXCoder.IDAL;
using OXCoder.DBModel;

namespace OXCoder.DALImpl
{
    public class UserDao:IDAL.IUserDao
    {
        public User FindUserByEmail(string email)
        {
            DBModel.OXUserDataContext context = new OXUserDataContext();
            try 
            {
                User user = context.User.Single(d => d.email == email);
                return user;
            }
            catch(InvalidOperationException e)
            {
                return null;
            }
            
        }

        public bool AddCompanyBasicInfo()
        {
            return true;
        }
        public bool addUser(String email, String pwd, int role)
        {
            DBModel.OXUserDataContext context = new OXUserDataContext();
            try
            {
                context.User.InsertOnSubmit(new User { email = email, pwd = pwd, role = Convert.ToInt16(role) });
                context.SubmitChanges();
                return true;
            }
            catch (InvalidOperationException e)
            {
                return false;
            }
        }

        public void ChangeRole(int uid, short role)
        {
            DBModel.OXUserDataContext context = new OXUserDataContext();
            User user = context.User.Single(d => d.Id == uid);
            user.role = role;
            context.SubmitChanges();
        }
    }
}
