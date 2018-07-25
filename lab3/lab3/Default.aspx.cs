using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            TextBox2.Text = TextBox1.Text;
            TextBox1.Text = "";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        { 
            float text1 = Convert.ToSingle(TextBox1.Text);
            float text2 = Convert.ToSingle(TextBox2.Text);
            float sum = text2 + text1;
            TextBox2.Text = sum.ToString();
            TextBox1.Text = "";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            float text1 = Convert.ToSingle(TextBox1.Text);
            float text2 = Convert.ToSingle(TextBox2.Text);
            float sum = text2 - text1;
            TextBox2.Text = sum.ToString();
            TextBox1.Text = "";
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            float text1 = Convert.ToSingle(TextBox1.Text);
            float text2 = Convert.ToSingle(TextBox2.Text);
            float sum = text2 * text1;
            TextBox2.Text = sum.ToString();
            TextBox1.Text = "";
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            float text1 = Convert.ToSingle(TextBox1.Text);
            float text2 = Convert.ToSingle(TextBox2.Text);
            float sum = text2 / text1;
            TextBox2.Text = sum.ToString();
            TextBox1.Text = "";
        }
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string text1 = TextBox1.Text;
        try
        {
            Decimal Number = Convert.ToDecimal(text1);
            args.IsValid = true;
            CustomValidator1.ErrorMessage = "";
        }
        catch
        {
            args.IsValid = false;
            CustomValidator1.ErrorMessage = "Invalid or missing value!";
        }
    }
}