using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != null)
                Session.Add("1", TextBox1.Text);
            if (TextBox2.Text != null)
                Session.Add("2", TextBox2.Text);

            Response.Redirect("WebForm3.aspx");
        }
    }
}