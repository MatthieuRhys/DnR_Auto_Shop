using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rhy3Studio
{
    public partial class Verify2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Label1.Text = "P98XL3";
        }



        private bool Validate(String pass, String Confirm)
        {
            return String.IsNullOrEmpty(pass) == false && pass == Confirm;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Validate(verify.Text, Label1.Text) == true)
            {
                Response.Redirect("~/Default.aspx");
                verify.Text = null;
            }
            else
            {
                err.Text = "You entered a wrong code";
            }
        }
    }
}