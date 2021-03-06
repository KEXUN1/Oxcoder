﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OXCoder.IBLL;
using OXCoder.BLLImpl;

namespace OXCoderClient
{
    public partial class hr_to_new_info_handle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cname = Request.Params["cname"];
            HttpFileCollection files = Request.Files;
            HttpPostedFile file = files[0];
            file.SaveAs("logo_pic\\"+Session["uid"]+".jpg");
            string telephone = Request.Params["phone"];
            ICompanyService companyService = new CompanyService();
            companyService.AddNewCompany(Convert.ToInt32(Session["uid"]), cname, telephone, Session["uid"] + ".jpg");
            Response.Redirect("hr-recruit-list.aspx");
        }
    }
}