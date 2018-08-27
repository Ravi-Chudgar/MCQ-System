using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ADD_UNIT : System.Web.UI.Page
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
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        DropDownList3.Items.Clear();
        cn.Open();
        str = "select * from SEM where C_ID_PK in(select C_ID_PK from COURCES where C_ID ='" + DropDownList1.SelectedValue + "')";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DropDownList2.Items.Add(dt.Rows[i]["SEMESTER"].ToString());
        }
        cn.Close();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
        str = "select * from SUBJECT where SEM_ID_PK in(select SEM_ID_PK from SEM where SEM_ID_PK ='" + DropDownList2.SelectedValue + "')";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DropDownList3.Items.Add(dt.Rows[i]["SUB_CODE"].ToString());
        }
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "select * from SUBJECT where SUB_CODE=('" + DropDownList3.SelectedValue + "')";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str = "insert into UNIT (SUB_PK,UNIT_NAME) values ('" + dt.Rows[i]["SUB_PK"].ToString() + "','" + TextBox1.Text + "')";
            cmd = new SqlCommand(str, cn);
            cmd.ExecuteNonQuery();
        }
        cn.Close();
    }
    
}