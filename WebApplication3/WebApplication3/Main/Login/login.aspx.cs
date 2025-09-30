using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void login_btn_Click(object sender, EventArgs e)
        {
            //Response.Redirect("../Home/home.aspx");
            // Get user input from textboxes   
            string email = txt_email.Text.Trim();
            string password = txt_password.Text.Trim();

            // Connection string (replace with your actual connection string)
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";

            // SQL query to check for valid user
            string query = "SELECT COUNT(*) FROM [Users] WHERE email = @Email AND password = @Password";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        // Use parameterized queries to prevent SQL injection
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password);

                        int userExists = (int)cmd.ExecuteScalar();

                        if (userExists > 0)
                        {
                            // Login successful, redirect to home page
                            SendWelcomeEmail(email);
                            Response.Redirect("../Home/home.aspx");
                            
                        }
                        else
                        {
                            // Login failed, display error message
                            lblMessage.Text = "Invalid email or password.";
                            lblMessage.CssClass = "error-message";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Display error message if database connection fails
                lblMessage.Text = "An error occurred: " + ex.Message;
                lblMessage.CssClass = "error-message";
            }
        }
        private void SendWelcomeEmail(string recipientEmail)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("ejustsupermarket@gmail.com");
                mail.To.Add(recipientEmail);
                mail.Subject = "Login info";
                mail.Body = $"Dear user, You logged in JustSuperMarket Successfully.";
                mail.IsBodyHtml = true;


                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential("ejustsupermarket@gmail.com", "baxgxrwejaednksk");
                smtp.EnableSsl = true;


                smtp.Send(mail);
            }
            catch (Exception ex)
            {

                lblMessage.Text = "Email sending failed: " + ex.Message;
                lblMessage.CssClass = "error-message";
            }
        }
    }
}

