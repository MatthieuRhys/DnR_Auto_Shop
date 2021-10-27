using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rhy3Studio
{
    public partial class Update_Client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            ID.Text = null;
            Address.Text = null;
            Email.Text = null;
            Phone.Text = null;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Label1.Text = "1 Record has been updated succesfully";

           
            
        }
    }
}