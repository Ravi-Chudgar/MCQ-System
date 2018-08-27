using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class SEE_EXAM : System.Web.UI.Page

{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataTable dt;
    string str, s2, s1;
    int n1;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        DropDownList3.Items.Clear();
        cn.Open();
        str = "select * from SUBJECT where SEM_ID_PK in (select SEMESTER from SEM where SEMESTER='" + DropDownList1.SelectedValue + "')";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DropDownList2.Items.Add(dt.Rows[i]["SUB_CODE"].ToString());
        }

        cn.Close();
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList3.Items.Clear();
        cn.Open();
        str = "select * from UNIT where SUB_PK in (select SUB_PK from SUBJECT where SUB_CODE='" + DropDownList2.SelectedValue + "')";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DropDownList3.Items.Add(dt.Rows[i]["UNIT_NAME"].ToString());
        }

        cn.Close();
    }

    protected void BTNTEST_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "insert into TEST (TEST_NAME,DURATION) values ('"+TextBox1.Text+"','"+DropDownList4.SelectedValue+"')";
        cmd = new SqlCommand(str, cn);
        cmd.ExecuteNonQuery();
        //insert on test table 

        s1 = "select (TEST_PK) from TEST where TEST_NAME = '"+TextBox1.Text+"'";
         sda = new SqlDataAdapter(s1, cn);
        dt = new DataTable();
        sda.Fill(dt);
        
        
            int n1 = int.Parse(dt.Rows[0]["TEST_PK"].ToString());
        
      
        s2 = "select  QI_ID from QUESTION_BANK where UNIT_ID_PK in (select UNIT_ID_PK from UNIT where UNIT_NAME ='"+DropDownList3.SelectedValue+"')";
        sda = new SqlDataAdapter(s2, cn);
        dt = new DataTable();
        sda.Fill(dt);
        for (int i = 0; i < dt.Rows.Count;i++ )
        {
            str = "insert into TEST_QUES (TEST_PK,QI_ID) values('" + n1 + "','" + dt.Rows[i]["QI_ID"].ToString() + "')";
            cmd = new SqlCommand(str, cn);
            cmd.ExecuteNonQuery();
        }
        cn.Close();
    }
}