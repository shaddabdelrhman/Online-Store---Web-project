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

namespace WebApplication3.Main.Register
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con =new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State==ConnectionState.Open) { 
                con.Close();
            }
            con.Open();
            //display_data();
        }
        string username = "";
        protected void signup_btn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Users values('"+ txt_username.Text+ "','"+txt_email.Text+"','"+password.Text+"')";
            cmd.ExecuteNonQuery();

            username = txt_username.Text;
            string email = txt_email.Text;

            txt_username.Text = "";
            txt_email.Text = "";
            password.Text = "";

            SendWelcomeEmail(email);
            Response.Redirect("../Home/home.aspx");
            display_data();
        }

        public void display_data() {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Users";
            cmd.ExecuteNonQuery();
            DataTable dt= new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }

        private void SendWelcomeEmail(string recipientEmail)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("abdelrahmanamer07@gmail.com");
                mail.To.Add(recipientEmail);
                mail.Subject = "Welcome to Our Application";
                mail.Body = $"Dear {username}, welcome to our application! We are excited to have you on board";
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