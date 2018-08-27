using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class USER_REGISTRATION : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataTable dt;
    string str,str1;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "select entity_name from entity where entity_id='"+DropDownList1.SelectedValue+"'";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        int n1 = int.Parse(dt.Rows[0]["entity_id"].ToString());
        if (n1 == 1)
        {
            str1 = "insert into ";
        }
        cn.Close();
    }
}