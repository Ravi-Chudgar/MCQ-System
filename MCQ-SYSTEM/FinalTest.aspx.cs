using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class FinalTest : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd;
    SqlDataAdapter sda;
    DataTable dt;
    string str, str1, str2, str4, str5, str6, str7, op1, op2, op3, op4, op_name, marks = "";
    int n, n2, n3, loin, cans, tmk = 0,cns=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Ravi\Documents\Visual Studio 2010\WebSites\finalproject\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        Session["MARKS"].ToString();
        Response.Write(Session["MARKS"].ToString());
        Session["MARKS"] = cns.ToString();

        marks = "";
        op1 = RadioButton1.Text;
        op2 = RadioButton2.Text;
        op3 = RadioButton3.Text;
        op4 = RadioButton4.Text;
        str7 = "select CORRECT_ANSWER from QUESTION_BANK where QUESTION = '" + Label1.Text + "'";
        sda = new SqlDataAdapter(str7, cn);
        dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            cans = int.Parse(dt.Rows[0]["CORRECT_ANSWER"].ToString());
            str6 = "select * from QUESTION_OPTION where OPTION_PK ='" + cans + "'";
            sda = new SqlDataAdapter(str6, cn);
            dt = new DataTable();
            sda.Fill(dt);
            {
                op_name = dt.Rows[0]["OPTION_NAME"].ToString();
                if (RadioButton1.Text == op_name)
                {

                    tmk = tmk + 1;

                    Response.Write(tmk.ToString());
                    // tmk = marks;
                    //Session["MARKS"] = marks;
                }
                else if (RadioButton2.Text == op_name)
                {
                    tmk = tmk + 1;
                    //tmk = marks;
                    //Session["MARKS"] = marks;
                }
                else if (RadioButton3.Text == op_name)
                {
                    tmk = tmk + 1;
                    //tmk = marks;
                    //Session["MARKS"] = marks;
                }
                else
                {
                    tmk = tmk + 1;
                    //tmk = marks;
                    //Session["MARKS"] = marks;
                }




            }

            }

            //Application["m"] = tmk;
            tmk = cns;
            //Response.Write(Application["m"].ToString());
            tmk = int.Parse(Session["MARKS"].ToString());
            // Session["MARKS"] = tmk;
            Label2.Text = Session["EMAIL"].ToString().Trim();
            cn.Open();
            str4 = "select TEST_PK from USER_TEST where LOGIN_ID in (select LOGIN_ID from LOGIN where EMAIL='" + Label2.Text + "')";
            sda = new SqlDataAdapter(str4, cn);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                loin = int.Parse(dt.Rows[0]["TEST_PK"].ToString());
                str5 = "select QI_ID from TEST_QUES where TEST_PK ='" + loin + "'";
                sda = new SqlDataAdapter(str5, cn);
                dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0]["QI_ID"].ToString() != null)
                {



                    str1 = "select QI_ID from TEST_QUES where TEST_PK ='" + loin + "'";
                    sda = new SqlDataAdapter(str1, cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        n3 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                        // n3 = n3 + 1;
                        //str = "select QI_ID,QUESTION from QUESTION_BANK where QI_ID in (select QI_ID from TEST_QUES where TEST_PK in (select TEST_PK from TEST where TEST_Pk in( select TEST_PK from USER_TEST)))";
                        str = "select * from QUESTION_BANK where QI_ID='" + n3 + "'";
                        sda = new SqlDataAdapter(str, cn);
                        dt = new DataTable();
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            n2 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                            Session["QI_ID"] = n2.ToString();
                            str = "select QUESTION from QUESTION_BANK where QI_ID ='" + n2 + "'";
                            sda = new SqlDataAdapter(str, cn);
                            dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count > 0)
                            {
                                Label1.Text = dt.Rows[0]["QUESTION"].ToString();
                                str2 = "select QI_ID from QUESTION_BANK where QUESTION = '" + Label1.Text + "'";
                                sda = new SqlDataAdapter(str2, cn);
                                dt = new DataTable();
                                sda.Fill(dt);
                                if (dt.Rows.Count > 0)
                                {
                                    n = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                                }

                            }
                            str1 = "select OPTION_NAME from QUESTION_OPTION where QI_ID ='" + n + "'";
                            sda = new SqlDataAdapter(str1, cn);
                            dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count > 0)
                            {
                                RadioButton1.Text = dt.Rows[0]["OPTION_NAME"].ToString();
                                RadioButton2.Text = dt.Rows[1]["OPTION_NAME"].ToString();
                                RadioButton3.Text = dt.Rows[2]["OPTION_NAME"].ToString();
                                RadioButton4.Text = dt.Rows[3]["OPTION_NAME"].ToString();
                            }
                        }

                    }
                }
            }

            cn.Close();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
 
       //op1 = RadioButton1.Text;
       // op2 = RadioButton2.Text;
       // op3 = RadioButton3.Text;
       // op4 = RadioButton4.Text;
       // str7 = "select CORRECT_ANSWER from QUESTION_BANK where QUESTION = '" + Label1.Text + "'";
       // sda = new SqlDataAdapter(str7, cn);
       // dt = new DataTable();
       // sda.Fill(dt);
       // if (dt.Rows.Count > 0)
       // {
       //     cans = int.Parse(dt.Rows[0]["CORRECT_ANSWER"].ToString());
       //     str6 = "select * from QUESTION_OPTION where OPTION_PK ='" + cans + "'";
       //     sda = new SqlDataAdapter(str6, cn);
       //     dt = new DataTable();
       //     sda.Fill(dt);
       //     {
       //         op_name = dt.Rows[0]["OPTION_NAME"].ToString();
       //         if (RadioButton1.Text == op_name)
       //         {
       //             tmk = tmk + 1;
       //         }
       //         else if (RadioButton2.Text == op_name)
       //         {
       //             tmk = tmk + 1;
       //         }
       //         else if (RadioButton3.Text == op_name)
       //         {
       //             tmk = tmk + 1;
       //         }
       //         else
       //         {
       //             tmk = tmk + 1;
       //         }
       //         tmk = marks;
       //         Session["MARKS"] = marks;
       //     }

       // }

        //cn.Open();

        //str4 = "select TEST_PK from USER_TEST where LOGIN_ID in (select LOGIN_ID from LOGIN where EMAIL='"+Label2.Text+"')";
        //sda = new SqlDataAdapter(str4, cn);
        //dt = new DataTable();
        //sda.Fill(dt);
        //if (dt.Rows.Count > 0)
        //{
        //    loin = int.Parse(dt.Rows[0]["TEST_PK"].ToString());
        //    str5 = "select QI_ID from TEST_QUES where TEST_PK ='" + loin + "'";
        //    sda = new SqlDataAdapter(str5, cn);
        //    dt = new DataTable();
        //    sda.Fill(dt);
        //    if (dt.Rows[0]["QI_ID"].ToString() != null)
        //    {
        //        str1 = "select QI_ID from TEST_QUES where TEST_PK in (select TEST_PK from TEST)";
        //        sda = new SqlDataAdapter(str1, cn);
        //        dt = new DataTable();
        //        sda.Fill(dt);
        //        if (dt.Rows.Count > 0)
        //        {
        //            n3 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
        //            n3 = n3 + 1;
        //            //str = "select QI_ID,QUESTION from QUESTION_BANK where QI_ID in (select QI_ID from TEST_QUES where TEST_PK in (select TEST_PK from TEST where TEST_Pk in( select TEST_PK from USER_TEST)))";
        //            str = "select * from QUESTION_BANK where QI_ID='" + n3 + "'";
        //            sda = new SqlDataAdapter(str, cn);
        //            dt = new DataTable();
        //            sda.Fill(dt);
        //            if (dt.Rows.Count > 0)
        //            {
        //                n2 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
        //                n2 = n2 + 1;
        //                str = "select QUESTION from QUESTION_BANK where QI_ID ='" + n2 + "'";
        //                sda = new SqlDataAdapter(str, cn);
        //                dt = new DataTable();
        //                sda.Fill(dt);
        //                if (dt.Rows.Count > 0)
        //                {
        //                    Label1.Text = dt.Rows[0]["QUESTION"].ToString();
        //                    str2 = "select QI_ID from QUESTION_BANK where QUESTION = '" + Label1.Text + "'";
        //                    sda = new SqlDataAdapter(str2, cn);
        //                    dt = new DataTable();
        //                    sda.Fill(dt);
        //                    if (dt.Rows.Count > 0)
        //                    {
        //                        n = int.Parse(dt.Rows[0]["QI_ID"].ToString());
        //                    }

        //                }
        //                str1 = "select OPTION_NAME from QUESTION_OPTION where QI_ID ='" + n + "'";
        //                sda = new SqlDataAdapter(str1, cn);
        //                dt = new DataTable();
        //                sda.Fill(dt);
        //                if (dt.Rows.Count > 0)
        //                {
        //                    RadioButton1.Text = dt.Rows[0]["OPTION_NAME"].ToString();
        //                    RadioButton2.Text = dt.Rows[1]["OPTION_NAME"].ToString();
        //                    RadioButton3.Text = dt.Rows[2]["OPTION_NAME"].ToString();
        //                    RadioButton4.Text = dt.Rows[3]["OPTION_NAME"].ToString();
        //                }
        //            }
        //            cn.Close();
        //        }
        //    }
       // }

        cn.Open();
        str4 = "select TEST_PK from USER_TEST where LOGIN_ID in (select LOGIN_ID from LOGIN where EMAIL='"+Label2.Text+"')";
        sda = new SqlDataAdapter(str4, cn);
        dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            loin = int.Parse(dt.Rows[0]["TEST_PK"].ToString());
            str5 = "select QI_ID from TEST_QUES where TEST_PK ='" + loin + "'";
            sda = new SqlDataAdapter(str5, cn);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0]["QI_ID"].ToString() != null)
            {



                str1 = "select QI_ID from TEST_QUES where TEST_PK ='" + loin + "'";
                sda = new SqlDataAdapter(str1, cn);
                dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    n3 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                    n3 = n3 + 1;
                    //str = "select QI_ID,QUESTION from QUESTION_BANK where QI_ID in (select QI_ID from TEST_QUES where TEST_PK in (select TEST_PK from TEST where TEST_Pk in( select TEST_PK from USER_TEST)))";
                    str = "select * from QUESTION_BANK where QI_ID='" + n3 + "'";
                    sda = new SqlDataAdapter(str, cn);
                    dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        n2 = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                        Session["QI_ID"] = n2.ToString();
                        str = "select QUESTION from QUESTION_BANK where QI_ID ='" + n2 + "'";
                        sda = new SqlDataAdapter(str, cn);
                        dt = new DataTable();
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            Label1.Text = dt.Rows[0]["QUESTION"].ToString();
                            str2 = "select QI_ID from QUESTION_BANK where QUESTION = '" + Label1.Text + "'";
                            sda = new SqlDataAdapter(str2, cn);
                            dt = new DataTable();
                            sda.Fill(dt);
                            if (dt.Rows.Count > 0)
                            {
                                n = int.Parse(dt.Rows[0]["QI_ID"].ToString());
                            }

                        }
                        str1 = "select OPTION_NAME from QUESTION_OPTION where QI_ID ='" + n + "'";
                        sda = new SqlDataAdapter(str1, cn);
                        dt = new DataTable();
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            RadioButton1.Text = dt.Rows[0]["OPTION_NAME"].ToString();
                            RadioButton2.Text = dt.Rows[1]["OPTION_NAME"].ToString();
                            RadioButton3.Text = dt.Rows[2]["OPTION_NAME"].ToString();
                            RadioButton4.Text = dt.Rows[3]["OPTION_NAME"].ToString();
                        }
                    }
                    cn.Close();
                }
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write(Session["MARKS"].ToString());
    }
}