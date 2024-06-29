using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace temppractise
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "Data Source=LAPTOP-MPE42I2M;Initial Catalog=testcreate;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;";

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = $"select * from tbllogin where username='{txtuser.Text}'";
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    if (txtpass.Text == dr["pass"].ToString())
                    {
                        Response.Write("login successfully");
                        Session["username"] = txtuser.Text;
                        Response.Redirect("yuga.aspx");

                    }
                    else
                    {
                        Response.Redirect("login.aspx");
                        Response.Write("invalid password");
                    }

                    dr.Close();
                }
                else
                {
                    Response.Write("invalid username");
                }
                con.Close();
            }
            catch (Exception ex)
            {

                Response.Write(ex.Message);
            }
           
            
        }
    }
}