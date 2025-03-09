using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace Online_Test
{
    public partial class Exam : System.Web.UI.Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            int score = 0;

            // Check answers for each question
            if (q1.SelectedValue == "A") score++;
            if (q2.SelectedValue == "B") score++;
            if (q3.SelectedValue == "C") score++;
            if (q4.SelectedValue == "C") score++;
            if (q5.SelectedValue == "C") score++;
            if (q6.SelectedValue == "B") score++;
            if (q7.SelectedValue == "B") score++;
            if (q8.SelectedValue == "B") score++;
            if (q9.SelectedValue == "B") score++;
            if (q10.SelectedValue == "B") score++;


            using (SqlConnection resultconnection = new SqlConnection(connectionstring))
            {
                try
                {
                    resultconnection.Open();
                    string resultnname = "Proc_result";
                    using (SqlCommand resultcommand = new SqlCommand(resultnname, resultconnection))
                    {
                        resultcommand.Parameters.AddWithValue("@Name", Session["Username"]);
                        resultcommand.Parameters.AddWithValue("@Result", score);
                        resultcommand.CommandType = CommandType.StoredProcedure;
                        int i = resultcommand.ExecuteNonQuery();
                        Getmail();
                        SendMail(score);
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    resultconnection.Close();
                }
            }
            Session["Score"] = score;
            Response.Write($"<script>alert('Your score is: {score}/10');</script>");
           
            Response.Redirect("ResultBoard");
        }
        public void SendMail(int score)
        {
            MailMessage message = new MailMessage();
            message.To.Add(Session["email"].ToString());
            message.From = new MailAddress("sathishpabballa@gmail.com");
            message.Subject = "online Assesment Results";
            message.Body = "Hi " + Session["Username"] + "Your score is :" + score;
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Credentials = new NetworkCredential("sathishpabballa@gmail.com", "leju bobt tijm nhwp");
            smtpClient.Send(message);

        }
        public void Getmail()
        {
            using (SqlConnection getconnection = new SqlConnection(connectionstring))
            {
                try
                { 
                    getconnection.Open();
                    string getmailproc = "Proc_getmail";
                    using (SqlCommand command = new SqlCommand(getmailproc, getconnection))
                    {
                        command.Parameters.AddWithValue("@Username", Session["Username"].ToString());
                        command.CommandType = CommandType.StoredProcedure;
                        string mail = (string)command.ExecuteScalar();
                        Session["email"] = mail;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    getconnection.Close();
                }
            }
        }
    }
}

    
