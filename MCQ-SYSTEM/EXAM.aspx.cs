using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class EXAM : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    string str;
    SqlDataAdapter sda;
    DataTable dt;

    int n, n2, n3;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        Label1.Text = Session["EMAIL"].ToString();
        Session["MARKS"] = 1;
    }
    protected void SHOWQUES_Click(object sender, EventArgs e)
    {
        cn.Open();
        //str = "select LOGIN_ID from LOGIN where EMAIL ='"+Label1.Text+"' and LOGIN_ID in (select LOGIN_ID from USER_TEST)";
        str = "select STATUS from USER_TEST where LOGIN_ID in (select LOGIN_ID from LOGIN where EMAIL ='"+Label1.Text+"')";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        n = int.Parse(dt.Rows[0]["STATUS"].ToString());
        if (n == 0)
        {
            Session["QI_ID"] = 1;
            
            Response.Redirect("FinalTest.aspx");
        }
        else
        {
            Response.Write("YOU HAVE COMPLETED YOUR TEST....................");
        }
        cn.Close();
    }
}