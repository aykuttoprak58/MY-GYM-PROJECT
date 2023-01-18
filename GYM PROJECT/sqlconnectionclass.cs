using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GYM_PROJECT
{
    public class sqlconnectionclass
    {

        public void sqldataconnection(string query,DataTable Veriler)
        {
            string baglantı = "Data Source=DELL;Initial Catalog=SALON;Integrated Security=True";
            SqlConnection Bridge = new SqlConnection(baglantı);
            SqlCommand Komando = new SqlCommand(query, Bridge);
            SqlDataAdapter Adaptör = new SqlDataAdapter(Komando);
            Adaptör.Fill(Veriler);
            Bridge.Open();
            Komando.ExecuteNonQuery();
            Bridge.Close();

           
           

        }


    }
}