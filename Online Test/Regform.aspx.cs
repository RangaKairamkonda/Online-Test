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
using System.Web.WebSockets;

namespace Online_Test
{
    public partial class Regform : System.Web.UI.Page
    {
        string Connectionstring = ConfigurationManager.ConnectionStrings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnreg_Click1(object sender, EventArgs e)
        {
            using (SqlConnection regConnection = new SqlConnection(Connectionstring))
            {
                
                try
                {
                    regConnection.Open();
                    string insertProc = "TestReg_SignUp";
                    using (SqlCommand regcommand = new SqlCommand(insertProc, regConnection))
                    {
                        regcommand.Parameters.AddWithValue("@username", txtuname.Text);
                        regcommand.Parameters.AddWithValue("@Email", txtemail.Text);
                        regcommand.Parameters.AddWithValue("@Password", txtpassword.Text);
                        regcommand.CommandType = CommandType.StoredProcedure;
                        int i = regcommand.ExecuteNonQuery();
                        if (i == 1)
                        {
                            SendMail();
                          //  lbldisplay.Text = "Account Created Sucessfully";
                           // lbldisplay.Visible= false;
                            Response.Redirect("Loginform.aspx");
                        }
                        else
                        {
                          //  lbldisplay.Text = "Something error! Please try Again!";
                           // lbldisplay.Visible= false;
                        }
                    }
                }
                catch (Exception ex)
                {
                    //lbldisplay.Text = ex.Message;
                }
                finally
                {
                    regConnection.Close();
                }
            }
        }
        private void SendMail()
        {
            MailMessage message = new MailMessage();
            message.To.Add(txtemail.Text);
            message.From = new MailAddress("sathishpabballa@gmail.com");
            message.Subject = " Sucesfully registred in Online Test ";

            message.Body = "Hi" +txtuname.Text+
                "Thanks For registring into Online Test";

            SmtpClient smtpClient = new SmtpClient();
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Credentials = new NetworkCredential("sathishpabballa@gmail.com", "leju bobt tijm nhwp");
            smtpClient.Send(message);

        }
    }
}