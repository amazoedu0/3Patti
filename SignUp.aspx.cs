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

    public partial class SignUp : System.Web.UI.Page
    {
        static string connects = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;

        SqlConnection conn = new SqlConnection(connects);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand available = new SqlCommand();
            available.CommandText = "SELECT * from [dbo].[user] where username=@username";
            available.Parameters.AddWithValue("@username", username.Text);
            available.Connection = conn;
            SqlDataReader reader = available.ExecuteReader();
            if (reader.HasRows)
            {
                exists.Text = "User already exists.";
                exists.ForeColor = System.Drawing.Color.DarkRed;
                conn.Close();
                reader.Close();
            }
            else
            {
                reader.Close();
                SqlCommand insert = new SqlCommand(@"INSERT INTO [dbo].[user]
           ([username]
           ,[password]
           ,[email])
     VALUES('" + username.Text + "','" + password.Text + "','" + email.Text + "')", conn);
                insert.ExecuteNonQuery();
                Response.Redirect("WebForm1.aspx");
                conn.Close();
            }

        }

        protected void confirmpass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void email_TextChanged(object sender, EventArgs e)
        {

        }
    }
}