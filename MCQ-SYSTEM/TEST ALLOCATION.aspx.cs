using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class TEST_ALLOCATION : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataTable dt;
    int n, n1,inc;
    string str, str1,str2;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "select TEST_PK from TEST where TEST_NAME ='"+DropDownList1.SelectedValue+"'";
        sda = new SqlDataAdapter(str,cn);
        dt = new DataTable();
        sda.Fill(dt);
        n = int.Parse(dt.Rows[0]["TEST_PK"].ToString());

        str1 = "select LOGIN_ID from LOGIN where EMAIL='"+DropDownList2.SelectedValue+"'";
        sda = new SqlDataAdapter(str1, cn);
        dt = new DataTable();
        sda.Fill(dt);
        n1 = int.Parse(dt.Rows[0]["LOGIN_ID"].ToString());
        
        {
            str2 = "insert into USER_TEST (TEST_PK,LOGIN_ID,STATUS) values('" + n + "','" + n1 + "','"+0+"')";
            cmd = new SqlCommand(str2, cn);
            cmd.ExecuteNonQuery();
        }
        cn.Close();
    }
}