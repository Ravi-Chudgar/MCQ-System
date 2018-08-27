using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ADD_SEMESTER : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    string str;
    SqlDataAdapter sda;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "select * from COURCES where C_ID = '" + DropDownList1.SelectedValue + "'";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            str = "insert into SEM (SEMESTER,C_ID_PK) values ('" + TextBox1.Text + "','" + dt.Rows[0]["C_ID_PK"].ToString() + "')";
            cmd = new SqlCommand(str, cn);
            cmd.ExecuteNonQuery();
        }
        cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADD SUBJECT.aspx");
    }
}