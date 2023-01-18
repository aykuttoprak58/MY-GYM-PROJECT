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
        SqlConnection Bridge = new SqlConnection(ConfigurationManager.ConnectionStrings["SALON"].ConnectionString);
     
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            string Users = "select * from Users where Username = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'";
            SqlCommand Komando6 = new SqlCommand(Users, Bridge);
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
    }
}