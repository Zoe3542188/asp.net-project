using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class private_Show : System.Web.UI.Page
{
    int count;
    int num;
    private const string ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Lab7.mdf;Integrated Security = True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["session state"] == null)
            count = 0;
        else
            count = Convert.ToInt32(Session["session state"]);
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        try
        {
            DataRow row = dv.Table.Rows[count];
            string s = (string)row["comment"];
            num = count + 1;
            TextBox1.Text = s + "\n" +"-------------------------------"+ "\nThis is comment number " + num + ".";
        }
        catch { TextBox1.Text = "No Comment Exits!"; }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        count++;
        Session["session state"] = count;
        try
        {
            DataRow row = dv.Table.Rows[count];
            string s = (string)row["comment"];
            num = count + 1;
            TextBox1.Text = s + "\n" + "-------------------------------"+"\nThis is comment number " + num + ".";
        }
        catch { TextBox1.Text = "No Comments Any More!"; }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConnectionString);
        conn.Open();
        string query = "TRUNCATE TABLE " + "Comments";
        SqlCommand cmd = new SqlCommand(query, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        TextBox1.Text = "No Comment Exists!";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Default.aspx");
    }
}