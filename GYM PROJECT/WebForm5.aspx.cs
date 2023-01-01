using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GYM_PROJECT
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection Bridge = new SqlConnection(ConfigurationManager.ConnectionStrings["SALON"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                String Salon1 = "select * from Salon";
                SqlCommand Komando = new SqlCommand(Salon1, Bridge);
                DataTable Veriler = new DataTable();
                SqlDataAdapter Adaptör = new SqlDataAdapter(Komando);
                Adaptör.Fill(Veriler);
                Bridge.Open();
                Komando.ExecuteNonQuery();
                Bridge.Close();

                DropDownList1.DataSource = Veriler;
                DropDownList1.DataTextField = "SalonName";
                DropDownList1.DataValueField = "SalonId";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "PLEASE SELECT SALON");
            }

            if (!IsPostBack)
            {
                String C1 = "select * from Course";
                SqlCommand Komando2 = new SqlCommand(C1, Bridge);
                DataTable VerilerC1 = new DataTable();
                SqlDataAdapter Adaptör2 = new SqlDataAdapter(Komando2);
                Adaptör2.Fill(VerilerC1);
                Bridge.Open();
                Komando2.ExecuteNonQuery();
                Bridge.Close();

                DropDownList2.DataSource = VerilerC1;
                DropDownList2.DataTextField = "CourseName";
                DropDownList2.DataValueField = "CourseId";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "PLEASE SELECT COURSE");
            }

            if (!IsPostBack)
            {
                String C2 = "select * from Tranier";
                SqlCommand Komando3 = new SqlCommand(C2, Bridge);
                DataTable VerilerC2 = new DataTable();
                SqlDataAdapter Adaptör3 = new SqlDataAdapter(Komando3);
                Adaptör3.Fill(VerilerC2);
                Bridge.Open();
                Komando3.ExecuteNonQuery();
                Bridge.Close();

                DropDownList3.DataSource = VerilerC2;
                DropDownList3.DataTextField = "TranierName";
                DropDownList3.DataValueField = "TranierId";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, "PLEASE SELECT TRANIER");
            }

            if (!IsPostBack)
            {
                String C3 = "select * from Time";
                SqlCommand Komando4 = new SqlCommand(C3, Bridge);
                DataTable VerilerC3 = new DataTable();
                SqlDataAdapter Adaptör4 = new SqlDataAdapter(Komando4);
                Adaptör4.Fill(VerilerC3);
                Bridge.Open();
                Komando4.ExecuteNonQuery();
                Bridge.Close();

                DropDownList4.DataSource = VerilerC3;
                DropDownList4.DataTextField = "TimeName";
                DropDownList4.DataValueField = "TimeId";
                DropDownList4.DataBind();
                DropDownList4.Items.Insert(0, "PLEASE SELECT TIME");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                 


                string gender = "";

                if (RadioButton1.Checked == true)
                {
                    gender = "MALE";
                }
                else
                {
                    RadioButton2.Checked = true;
                    gender = "FEMALE";
                }

                if (DropDownList1.SelectedIndex == 0 || DropDownList2.SelectedIndex == 0 || DropDownList3.SelectedIndex == 0 || DropDownList4.SelectedIndex == 0 )
                {
                    DropDownList1.SelectedIndex = 1;
                    DropDownList2.SelectedIndex = 1;
                    DropDownList3.SelectedIndex = 1;
                    DropDownList4.SelectedIndex = 1;
                }
           

                string Register = "INSERT INTO Register (Name,Surname,Age,Gender,Height,Weight,Email,Phone,SalonId,CourseId,TranierId,TimeId) VALUES (@Name,@Surname,@Age,@Gender,@Height,@Weight,@Email,@Phone,@SalonId,@CourseId,@TranierId,@TimeId)";
                SqlCommand Komando2 = new SqlCommand(Register, Bridge);
                Komando2.Parameters.AddWithValue("@Name", TextBox1.Text);
                Komando2.Parameters.AddWithValue("@Surname", TextBox2.Text);
                Komando2.Parameters.AddWithValue("@Age", TextBox3.Text);
                Komando2.Parameters.AddWithValue("@Gender", gender);
                Komando2.Parameters.AddWithValue("@Height", TextBox4.Text);
                Komando2.Parameters.AddWithValue("@Weight", TextBox5.Text);
                Komando2.Parameters.AddWithValue("@Email", TextBox6.Text);
                Komando2.Parameters.AddWithValue("@Phone", TextBox7.Text);
                Komando2.Parameters.AddWithValue("@SalonId", DropDownList1.SelectedValue.ToString());
                Komando2.Parameters.AddWithValue("@CourseId", DropDownList2.SelectedValue.ToString());
                Komando2.Parameters.AddWithValue("@TranierId", DropDownList3.SelectedValue.ToString());
                Komando2.Parameters.AddWithValue("@TimeId", DropDownList4.SelectedValue.ToString());
                Bridge.Open();
                Komando2.ExecuteNonQuery();
                Bridge.Close();
            }
            catch (Exception)
            {

                DropDownList1.SelectedIndex= 0;
                DropDownList2.SelectedIndex= 0;
                DropDownList3.SelectedIndex = 0;
                DropDownList4.SelectedIndex = 0;

            }
  
        }
    }
}