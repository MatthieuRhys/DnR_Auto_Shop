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
    public partial class Find_Client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string cs = ConfigurationManager.ConnectionStrings["GroupE_Demo1ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand("sp_find_client", con);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ID", ID.Text);

                cmd.Parameters.Add("@ADD", System.Data.SqlDbType.VarChar, 25).Direction = System.Data.ParameterDirection.Output;

                cmd.Parameters.Add("@EA", System.Data.SqlDbType.VarChar, 20).Direction = System.Data.ParameterDirection.Output;

                cmd.Parameters.Add("@PN", System.Data.SqlDbType.VarChar, 12).Direction = System.Data.ParameterDirection.Output;

                con.Open();
                cmd.ExecuteReader();

                string Ad = cmd.Parameters["@ADD"].Value.ToString();

                string Em = cmd.Parameters["@EA"].Value.ToString();

                string Ph = cmd.Parameters["@PN"].Value.ToString();


                Address.Text = "The Address of ID NUMBER:  " + ID.Text + " is " + Ad;

                Email.Text = "The Email Address of ID NUMBER:  " + ID.Text + " is " + Em;

                Phone.Text = "The Phone Number of ID NUMBER:  " + ID.Text + " is " + Ph;


                ID.Text = null;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


         

        }
    }
}