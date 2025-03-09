using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Test
{
    public partial class ResultBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           lblname.Text = Session["Username"].ToString();
            lblscore.Text = Session["Score"].ToString();
            Session.Abandon();
        }
    }
}