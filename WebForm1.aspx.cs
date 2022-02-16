using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace test
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static string connects = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;

        SqlConnection conn = new SqlConnection(connects);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand available = new SqlCommand();
            available.CommandText = "SELECT * from [dbo].[user] where username=@username";
            available.Parameters.AddWithValue("@username", username.Text);
            available.Connection = conn;
            SqlDataReader reader = available.ExecuteReader();
            if (!reader.HasRows)
            {
                exists.Text = "User does not exist. Sign Up to Play";
                exists.ForeColor = System.Drawing.Color.Red;
                conn.Close();
            }
            else
            {

                if (reader.Read() && password.Text != String.Format("{0}",reader["password"]))
                {
                    exists.Text = "Wrong Password!";
                    exists.ForeColor = System.Drawing.Color.Red;
                    conn.Close();
                }
                else
                {
                    //string strCommand;
                    //strCommand = "/C python D:\\VS\\Projects\\test\\3-Pati\\app.py";
                    //System.Diagnostics.Process.Start("CMD.exe", strCommand);

                    Response.Redirect("/3-Pati/home.html", false);
                    HttpContext.Current.ApplicationInstance.CompleteRequest();
                    conn.Close();
                }
            }


        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }
    }
}