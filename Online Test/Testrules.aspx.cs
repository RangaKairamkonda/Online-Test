using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Test
{
    public partial class Testrules : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Sessionname.Text = Session["Username"].ToString();  
                 
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if(RadioButton1.Checked)
            {
                Response.Redirect("Exam.aspx");
            }
            else if(RadioButton2.Checked)
            {
                Response.Redirect("Testrules.aspx");
            }
            
        }

        
    }
}