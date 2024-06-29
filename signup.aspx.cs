using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace temppractise
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            try {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=LAPTOP-MPE42I2M;Initial Catalog=testcreate;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;";

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = $"insert into tbllogin values ('{txtuser.Text}','{txtpass.Text}','{txtdob.Text}','{txtphone.Text}','{txtemail.Text}')";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write (ex.Message);
            }
            

        }
    }
}