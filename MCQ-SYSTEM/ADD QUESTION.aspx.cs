using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ADD_QUESTION : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    string str ,no,s1,s2,s3,s4,n3;
    SqlDataAdapter sda;
    DataTable dt;
    int n1,n5;
    protected void Page_Load(object sender, EventArgs e)
    {
    cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        
       
        cn.Open();
        str = "select QI_ID from QUESTION_BANK where QI_ID in (select max(QI_ID) from QUESTION_BANK)";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        
        if(dt.Rows.Count>0)
        {
            //no = rd[0].ToString().Trim();
            //n3 = Int.Parse(no);
            //no = no + 1;



            n5 = int.Parse(dt.Rows[0]["QI_ID"].ToString().Trim());
            n5 = n5 + 1;
            //no =dt.Rows[0]["QI_ID"].ToString().Trim() ;
            //n1 = int.Parse(no);
            //n1 = n1 + 1;
            TextBox6.Text = n5.ToString();  
        }
        cn.Close();
        if (TextBox6.Text == "")
        {
            TextBox6.Text = "1";
        }
       
    }
   
   
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        str = "select * from UNIT where UNIT_NAME='" + DropDownList4.SelectedValue + "' and SUB_PK in (select SUB_PK from SUBJECT where SUB_CODE='" + DropDownList3.SelectedValue + "' and SEM_ID_PK in (select SEM_ID_PK from SEM where SEMESTER='" + DropDownList2.SelectedValue + "' and C_ID_PK in (select C_ID_PK from COURCES where C_ID='" + DropDownList1.SelectedValue + "')))";
        //str = "select * from unit where unit_name ='"+DropDownList4.SelectedValue+"'";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            str = "insert into QUESTION_BANK (UNIT_ID_PK,QUESTION) values ('" + dt.Rows[0]["UNIT_ID_PK"].ToString() + "','" + TextBox1.Text + "')";
            cmd = new SqlCommand(str, cn);
            cmd.ExecuteNonQuery();
        }
        
        if (TextBox2.Text != "")
        {
            str = "select QI_ID from QUESTION_BANK";
            sda = new SqlDataAdapter(str,cn);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                str = "insert into QUESTION_OPTION (QI_ID,OPTION_NAME) values ('" +n5 +"','" + TextBox2.Text + "')";
                cmd = new SqlCommand(str, cn);
                cmd.ExecuteNonQuery();
                if (TextBox2.Text == TXTANS.Text)
                {
                    str = "select OPTION_PK from QUESTION_OPTION where OPTION_NAME = '"+TextBox2.Text+"'";
                    sda = new SqlDataAdapter(str, cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    n1 = int.Parse(dt.Rows[0]["OPTION_PK"].ToString());
                    string s1 = "select QI_ID from QUESTION_BANK where QI_ID ='"+TextBox6.Text+"'";
                    sda = new SqlDataAdapter(s1,cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    int n2 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                    if (dt.Rows.Count > 0)
                    {
                        str = "update QUESTION_BANK set CORRECT_ANSWER = '" + n1 + "' where QI_ID = '" + n2+ "'";
                        cmd = new SqlCommand(str, cn);
                        cmd.ExecuteNonQuery();
                    }
                }

            }
        }
        if (TextBox3.Text != "")
        {
            str = "select QI_ID from QUESTION_BANK";
            sda = new SqlDataAdapter(str, cn);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                str = "insert into QUESTION_OPTION (QI_ID,OPTION_NAME) values ('" + n5 + "','" + TextBox3.Text + "')";
                cmd = new SqlCommand(str, cn);
                cmd.ExecuteNonQuery();
                if (TextBox3.Text == TXTANS.Text)
                {
                    str = "select OPTION_PK from QUESTION_OPTION where OPTION_NAME = '" + TextBox3.Text + "'";
                    sda = new SqlDataAdapter(str, cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    n1 = int.Parse(dt.Rows[0]["OPTION_PK"].ToString());
                    string s1 = "select QI_ID from QUESTION_BANK where QI_ID ='" + TextBox6.Text + "'";
                    sda = new SqlDataAdapter(s1, cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    int n2 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                    if (dt.Rows.Count > 0)
                    {
                        str = "update QUESTION_BANK set CORRECT_ANSWER = '" + n1 + "' where QI_ID = '" + n2 + "'";
                        cmd = new SqlCommand(str, cn);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }
        if (TextBox4.Text != "")
        {
            str = "select QI_ID from QUESTION_BANK";
            sda = new SqlDataAdapter(str, cn);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                str = "insert into QUESTION_OPTION (QI_ID,OPTION_NAME) values ('" + n5 + "','" + TextBox4.Text + "')";
                cmd = new SqlCommand(str, cn);
                cmd.ExecuteNonQuery();
                if (TextBox4.Text == TXTANS.Text)
                {
                    str = "select OPTION_PK from QUESTION_OPTION where OPTION_NAME = '" + TextBox4.Text + "'";
                    
                    sda = new SqlDataAdapter(str, cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    n1 = int.Parse(dt.Rows[0]["OPTION_PK"].ToString());
                    string s1 = "select QI_ID from QUESTION_BANK where QI_ID ='" + TextBox6.Text + "'";
                    sda = new SqlDataAdapter(s1, cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    int n2 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                    if (dt.Rows.Count > 0)
                    {
                        str = "update QUESTION_BANK set CORRECT_ANSWER = '" + n1 + "' where QI_ID = '" + n2 + "'";
                        cmd = new SqlCommand(str, cn);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }
        if (TextBox5.Text != "")
        {
            str = "select QI_ID from QUESTION_BANK";
            sda = new SqlDataAdapter(str, cn);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                str = "insert into QUESTION_OPTION (QI_ID,OPTION_NAME) values ('" + n5 + "','" + TextBox5.Text + "')";
                cmd = new SqlCommand(str, cn);
                cmd.ExecuteNonQuery();
                if (TextBox5.Text == TXTANS.Text)
                {
                    str = "select OPTION_PK from QUESTION_OPTION where OPTION_NAME = '" + TextBox5.Text + "'";
                    sda = new SqlDataAdapter(str, cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    n1 = int.Parse(dt.Rows[0]["OPTION_PK"].ToString());
                    string s1 = "select QI_ID from QUESTION_BANK where QI_ID ='" + TextBox6.Text + "'";
                    sda = new SqlDataAdapter(s1, cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    int n2 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                    if (dt.Rows.Count > 0)
                    {
                        str = "update QUESTION_BANK set CORRECT_ANSWER = '" + n1 + "' where QI_ID = '" + n2 + "'";
                        cmd = new SqlCommand(str, cn);
                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TXTANS.Text  = "";
        str = "select QI_ID from QUESTION_BANK where QI_ID in (select max(QI_ID) from QUESTION_BANK)";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            TextBox6.Text = "";
            n5 = int.Parse(dt.Rows[0]["QI_ID"].ToString().Trim());
            n5 = n5 + 1;
            TextBox6.Text = n5.ToString();
        }
        

    }









    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
        DropDownList2.Items.Clear();
        DropDownList3.Items.Clear();
        DropDownList4.Items.Clear();
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
        DropDownList3.Items.Clear();
        DropDownList4.Items.Clear();
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
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        cn.Open();
        DropDownList4.Items.Clear();
        str = "select * from UNIT where SUB_PK in (select SUB_PK from SUBJECT where SUB_CODE ='"+DropDownList3.SelectedValue+"')";
        sda = new SqlDataAdapter(str, cn);
        dt = new DataTable();
        sda.Fill(dt);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            DropDownList4.Items.Add(dt.Rows[i]["UNIT_NAME"].ToString());
        }
            cn.Close();
    }
}