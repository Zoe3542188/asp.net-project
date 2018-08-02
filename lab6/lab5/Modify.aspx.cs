using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
            if (TextBox1.Text == "")
            {
                Label1.Text = "Please Enter a Unit";
            }
            else
            {
                if (TextBox2.Text == "")
                {
                    Label1.Text = "Please Enter a Factor";
                }
                else
                {
                    try
                    {
                        System.Convert.ToDouble(TextBox2.Text);
                        if (DropDownList1.Items.FindByText(TextBox1.Text)==null)
                        {
                            Label1.Text = "";
                            SqlDataSource1.Insert();
                            TextBox1.Text = "";
                            TextBox2.Text = "";
                        }
                        else
                        {
                            TextBox1.Text = "";
                            Label1.Text = "Item Already Exists";
                        }
                    }
                    catch
                    {
                        TextBox2.Text = "";
                        Label1.Text = "Please Enter a Digital Factor";
                    }
            }

    }
}

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Items.Count!=0)
        {
            Label1.Text = "";
            SqlDataSource1.Delete();
        }
        else
        {
            Label1.Text = "The Database is Empty";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}