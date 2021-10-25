using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Rhy3Studio
{
    public partial class sp_find_client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["GroupE_DemoConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand("sp_find_client", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@ID", Client_ID.Text);

                //SqlParameter add = new SqlParameter();
                //SqlParameter em = new SqlParameter();
                //SqlParameter phone = new SqlParameter();


                //add.ParameterName = "@ADD";
                //add.SqlDbType = System.Data.SqlDbType.NVarChar;
                //add.Direction = System.Data.ParameterDirection.Output;

                //em.ParameterName = "@EA";
                //em.SqlDbType = System.Data.SqlDbType.NVarChar;
                //em.Direction = System.Data.ParameterDirection.Output;

                //phone.ParameterName = "@PN";
                //phone.SqlDbType = System.Data.SqlDbType.NVarChar;
                //phone.Direction = System.Data.ParameterDirection.Output;


                cmd.Parameters.Add("@ADD", System.Data.SqlDbType.VarChar, 25).Direction = System.Data.ParameterDirection.Output;
                cmd.Parameters.Add("@PN", System.Data.SqlDbType.VarChar, 12).Direction= System.Data.ParameterDirection.Output; 
                cmd.Parameters.Add("@EA", System.Data.SqlDbType.VarChar, 20).Direction= System.Data.ParameterDirection.Output; 

                con.Open();
                cmd.ExecuteReader();


                string a = cmd.Parameters["@ADD"].Value.ToString();
                string b = cmd.Parameters["@EA"].Value.ToString();

                string c = cmd.Parameters["@PN"].Value.ToString();

                Address.Text = "The Address of ID NUMBER:  " + Client_ID.Text + " is " + a;

                Email.Text = "The Email Address of ID NUMBER:  " + Client_ID.Text + " is " + b;

                Phone.Text = "The Phone Number of ID NUMBER:  "  + Client_ID.Text + " is " + c;


                Client_ID.Text = null;


            }



        }
    }
}