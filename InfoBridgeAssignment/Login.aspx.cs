﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InfoBridgeAssignment
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUserName.Text=="admin" && txtPassword.Text=="admin")
            {
                Response.Redirect("~/Employee.aspx");
            }
            else
            {
                lblErorr.Text = "*User name or Password is incorrect";
            }
        }
    }
}