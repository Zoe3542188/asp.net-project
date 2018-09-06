using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class private_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FormsAuthentication.Authenticate(user.Text, pass.Text))
            FormsAuthentication.RedirectFromLoginPage(user.Text, false);
        else
            Label3.Text = "Login failed. Please check your user name and password and try again.";
    }
}