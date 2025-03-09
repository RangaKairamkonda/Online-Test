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
    public partial class Forgetpassword : System.Web.UI.Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }



        protected void btngetpin_Click(object sender, EventArgs e)
        {
            using(SqlConnection getpinconn = new SqlConnection(connectionstring))
            {
                try
                {
                    getpinconn.Open();
                    string pinproc = "Test_Reg_getpin";
                    using (SqlCommand getpincommand = new SqlCommand(pinproc, getpinconn))
                    {
                        getpincommand.Parameters.AddWithValue("@Email", txtemail.Text);
                        getpincommand.CommandType = CommandType.StoredProcedure;
                        string pin = (string) getpincommand.ExecuteScalar();
                        SendMail(pin);
                        Response.Redirect("Loginform.aspx");
                    }
                }
                catch(Exception ex) 
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    getpinconn.Close();
                }
            }
        }
        public void SendMail(string Pin)
        {
            MailMessage message = new MailMessage();
            message.To.Add(txtemail.Text);
            message.From = new MailAddress("sathishpabballa@gmail.com");
            message.Subject = "Reset your Pin";
            message.Body = "your password is :" + Pin;

            SmtpClient smtp = new SmtpClient();
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("sathishpabballa@gmail.com", "leju bobt tijm nhwp");
            smtp.EnableSsl= true;
            smtp.Send(message);


        }
    }
}