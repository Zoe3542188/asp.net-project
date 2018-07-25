using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    private const string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Lab4DB.mdf;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Fid = (string)DropDownList1.Text;
        string Sid = (string)DropDownList2.Text;
        double Ini = 1;
        double F = 1;
        double S = 1;
        try
        {
            Ini = System.Convert.ToDouble(TextBox1.Text);
            if (Fid == Sid)
            {
                Label1.Text = "Please select different types";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
                Label5.Text = "";
                Label6.Text = "";
            }
            else
            {
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT*FROM Conversions WHERE ID='" + Fid + "' ", conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    F = (double)rdr["Factor"];
                    Label3.Text = (string)rdr["Unit"];
                }
                conn.Close();
                SqlConnection sconn = new SqlConnection(connString);
                sconn.Open();
                SqlCommand scmd = new SqlCommand("SELECT*FROM Conversions WHERE ID='" + Sid + "' ", sconn);
                SqlDataReader srdr = scmd.ExecuteReader();
                while (srdr.Read())
                {
                    S = (double)srdr["Factor"];
                    Label6.Text = (string)srdr["Unit"];
                }
                sconn.Close();
                double result = (Ini / F) * S;
                Label1.Text = "";
                Label2.Text = TextBox1.Text;
                Label4.Text = "=";
                Label5.Text = result.ToString();
                TextBox1.Text = "";
                DropDownList1.ClearSelection();
                DropDownList2.ClearSelection();
            }
        }
        catch
        {
            Label1.Text = "Please input a valid number";
            TextBox1.Text = "";
            DropDownList1.ClearSelection();
            DropDownList2.ClearSelection();
        }    
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}