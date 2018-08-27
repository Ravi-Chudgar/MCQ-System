using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ADD_COURCES : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "insert into COURCES (C_ID,C_NAME) values ('"+TextBox1.Text+"','"+TextBox2.Text+"')";
        cmd = new SqlCommand(str, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADD SEMESTER.aspx");
    }
}