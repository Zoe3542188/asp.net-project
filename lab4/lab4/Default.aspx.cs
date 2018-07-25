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
        Label2.Text = "";
        ListBox1.Items.Clear();
        try
        {
            int num1 = int.Parse(TextBox1.Text);
            int num2 = int.Parse(TextBox2.Text);
            if (num1 < 0 || num1 > 1000000000) { Label2.Text = "Please enter a positive integer within range."; }
            else if (num2<1||num2>100) { Label2.Text = "Please enter a positive integer within range."; }
            else
            {
                int count = 0;
                while (count < num2)
                {
                    string str1 = Convert.ToString(num1);
                    char[] newArray = str1.ToCharArray();
                    string str2 = String.Empty;
                    for (int i = newArray.Length - 1; i > -1; i--)
                    {
                        str2 += newArray[i];
                    }
                    if (str2 == str1)
                    {
                        ListBox1.Items.Add(str1);
                        count = count + 1;
                    }
                    num1=num1+1;
                }
            }
        }
        catch
        {
            Label2.Text = "Please enter a positive integer within range.";
        }
    }
}