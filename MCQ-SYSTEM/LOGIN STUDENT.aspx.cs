using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class LOGIN_STUDENT : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    string str;
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        str ="select * from LOGIN where EMAIL='"+TextBox1.Text+"' and PASS ='"+TextBox2.Text+"'";
        cmd = new SqlCommand(str, cn);
        rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            Session["EMAIL"] = rd[2].ToString().Trim();
            Response.Redirect("EXAM.aspx");
        }
        else
        {
            Response.Write("invalid eamil and  password..............");
        }
        cn.Close();
    }
}