using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace temppractise
{
    public partial class addtobuy : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-MPE42I2M;Initial Catalog=testcreate;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sid = Session["username"].ToString();
            string order = "yes";
            string qr = "update tblcart set [order]=@od where  username=@sid";
            SqlCommand com = new SqlCommand(qr, con);
            con.Open();
            com.Parameters.AddWithValue("@od", order);
            com.Parameters.AddWithValue("@sid", sid);
            com.ExecuteNonQuery();
            con.Close();

            string mode=RadioButton1.Checked ? "cash" : "card";
            string qrr="";
            if (mode == "cash")
            {
                 qrr = "insert into tbldel(name,mobile,pincode,address,city,paymentmode,username ) values (@na,@mob,@pin,@add,@city,@pay,@user )";
                SqlCommand comm = new SqlCommand(qrr, con);
                con.Open();
                comm.Parameters.AddWithValue("@na", TextBox1.Text);
                comm.Parameters.AddWithValue("@mob", TextBox2.Text);
                comm.Parameters.AddWithValue("@pin", TextBox3.Text);
                comm.Parameters.AddWithValue("@add", TextBox4.Text);
                comm.Parameters.AddWithValue("@city", TextBox5.Text);
                comm.Parameters.AddWithValue("@pay", mode);
               

                comm.Parameters.AddWithValue("@user", sid);
                comm.ExecuteNonQuery();
                con.Close();



            }
            else
            {
                qrr = "insert into tbldel(name,mobile,pincode,address,city,paymentmode,cardnumber,expirydate,username ) values (@na,@mob,@pin,@add,@city,@pay,@cdno,@exdate,@user )";
                SqlCommand comm = new SqlCommand(qrr, con);
                con.Open();
                comm.Parameters.AddWithValue("@na", TextBox1.Text);
                comm.Parameters.AddWithValue("@mob", TextBox2.Text);
                comm.Parameters.AddWithValue("@pin", TextBox3.Text);
                comm.Parameters.AddWithValue("@add", TextBox4.Text);
                comm.Parameters.AddWithValue("@city", TextBox5.Text);
                comm.Parameters.AddWithValue("@pay", mode);
                comm.Parameters.AddWithValue("@cdno", TextBox6.Text);
                comm.Parameters.AddWithValue("@exdate", TextBox7.Text);
                comm.Parameters.AddWithValue("@user", sid);
                comm.ExecuteNonQuery();
                con.Close();
            }
            
            Response.Redirect("order.aspx");

        }
    }
}