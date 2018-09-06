using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string comment = TextBox1.Text;
        if (TextBox1.Text != "")
        {
            SqlDataSource1.Insert();
            TextBox1.Text = "Thanks for your comment!";
        }
        else
            TextBox1.Text = "Please type your comment here";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["session state"] = 0;
        Response.Redirect("private/Show.aspx");
    }
}