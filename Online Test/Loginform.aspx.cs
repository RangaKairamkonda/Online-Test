using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
namespace Online_Test
{
    public partial class Loginform : System.Web.UI.Page
    {
        string Connectionstring = ConfigurationManager.ConnectionStrings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection loginconnection = new SqlConnection(Connectionstring))
            {
                try
                {
                    loginconnection.Open();
                    string loginproc = "TestReg_login";

                    using (SqlCommand logincommand = new SqlCommand(loginproc, loginconnection))
                    {
                        logincommand.Parameters.AddWithValue("@username", txtuname.Text);
                        logincommand.Parameters.AddWithValue("@password", txtpwd.Text);
                        logincommand.CommandType = CommandType.StoredProcedure;
                        int i = (int)logincommand.ExecuteScalar();
                        if (i == 1)
                        {
                            Session["Username"] = txtuname.Text;
                            Response.Redirect("Testrules.aspx");
                        }
                        else
                        {
                            //lbldisplay.Text = "Invalid Credentials!";
                        }
                    }
                }
                catch (Exception ex)
                {
                    //lbldisplay.Text = ex.Message;
                }
                finally
                {
                    loginconnection.Close();
                }
            }
        }
        

       
    }
}