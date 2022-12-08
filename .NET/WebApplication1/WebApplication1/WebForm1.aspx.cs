using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text; /* ΘΕΤΕΙ ΤΟ ΚΕΙΜΕΝΟ ΤΟΥ LABEL ΙΔΙΟ ΜΕ ΤΟ BOX*/
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           Label1.Text = "Επιλέξατε τη καταχώριση με δείκτη " +GridView1.SelectedIndex;
        }
    }
}