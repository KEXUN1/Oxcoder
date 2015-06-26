using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.DBModel;
using OXCoder.IBLL;
using OXCoder.BLLImpl;
namespace OXCoderClient
{
    public partial class login_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IUserService userService = new UserService();
            string email = Request.Params["email"];
            string password = Request.Params["pwd"];
            
            if (userService.CheckUserByEmailAndPassword(email, password))
            {
                
                User user = userService.GetUser(email);
                int role = (int)user.role;
                Session["user"] = email;
                Session["uid"] = user.Id;
                if (role == 0)
                {
                    //个人用户
                    Response.Redirect("user-index.aspx");
                }
                else if (role == 1)
                {
                    //企业用户，但是还没有激活
                    Response.Redirect("company-register.aspx");
                }
                else if (role == 2)
                {
                    //企业用户，已经激活
                    Response.Redirect("hr-recruit-list.aspx");
                }
                //Response.Write("登录成功"+role);
                
            }
            else
                Response.Write("登录失败");
        }
    }
}