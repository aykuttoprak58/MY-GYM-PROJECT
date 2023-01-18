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
    public partial class WebForm6 : System.Web.UI.Page
    {
     

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            string baglanti = "Data Source=DELL;Initial Catalog=SALON;Integrated Security=True";
            SqlConnection Bridge = new SqlConnection(baglanti);

            string Users = "select * from Users where Username = @Username and Password = @Password";
            SqlCommand Komando6 = new SqlCommand(Users, Bridge);
            Komando6.Parameters.AddWithValue("@Username ", TextBox1.Text);
            Komando6.Parameters.AddWithValue("@Password", TextBox2.Text);
            DataTable Veriler6 = new DataTable();
            SqlDataAdapter Adaptör3 = new SqlDataAdapter(Komando6);
            Adaptör3.Fill(Veriler6);
            Bridge.Open();
            Komando6.ExecuteNonQuery();
            Bridge.Close();

            if (Veriler6.Rows.Count > 0)
            {
                Response.Redirect("WebForm1.aspx");
            }

            else
            {
                Label1.Visible = true;
                Label1.Text = "Username or Password is incorrect";
            }

          
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            try
            {
                string baglanti2 = "Data Source=DELL;Initial Catalog=SALON;Integrated Security=True";
                SqlConnection Bridge2 = new SqlConnection(baglanti2);

                string Users = "INSERT INTO Users (Username,Password) VALUES (@Username,@Password)";
                SqlCommand Komando6 = new SqlCommand(Users, Bridge2);
                Komando6.Parameters.AddWithValue("@Username ", TextBox1.Text);
                Komando6.Parameters.AddWithValue("@Password", TextBox2.Text);
                DataTable Veriler6 = new DataTable();
                Bridge2.Open();
                Komando6.ExecuteNonQuery();
                Bridge2.Close();

                Label1.Visible = true;
                Label1.Text = "registration has been done";

            }
            catch (Exception)
            {

                throw;
            }
           

            


        }
    }
}