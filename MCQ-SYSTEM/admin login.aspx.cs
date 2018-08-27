using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
public partial class admin_login_ : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    string str,str1,str2,str3;
    int n;
    SqlDataAdapter sda;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void BTNLOGIN_Click(object sender, EventArgs e)
    {
       
    }
}