using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace temppractise
{
    public partial class addtocart : System.Web.UI.Page
    {
        int prr;
        int qtyy;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=LAPTOP-MPE42I2M;Initial Catalog=testcreate;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;");
            string pid = Request.QueryString["PID"].ToString();
           // Response.Write(pid);
            string sid = Session["username"].ToString();

            
            int tot=0;
            string query = "select * from tblcart where pid=@pid and username=@sid";
            SqlCommand cmd1 = new SqlCommand(query, con);
            cmd1.Parameters.AddWithValue("@pid", pid);
            cmd1.Parameters.AddWithValue("@sid", sid);
            con.Open();
            SqlDataReader drr = cmd1.ExecuteReader();
            int flag = 0;
            while (drr.Read())
            {
                 prr = Convert.ToInt32(drr["pprice"].ToString());
                 qtyy = Convert.ToInt32(drr["pquantity"].ToString());
                 qtyy = qtyy + 1;
                 
                flag++;
            }
            tot = prr * qtyy;
            drr.Close();
            con.Close();
            if (flag > 0)
            {
                
                string qr1 = "update tblcart set pquantity=pquantity+1,ptp=@tot  where pid=@pid and username=@sid";
                SqlCommand com1 = new SqlCommand(qr1, con);
                com1.Parameters.AddWithValue("@pid", pid);
                com1.Parameters.AddWithValue("@sid", sid);
                com1.Parameters.AddWithValue("@tot", tot);

                con.Open();
                com1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('update successfully')</script>");

            }
            else
            {
                Response.Write("session id " + Session["username"].ToString());
                string pn = null;
                int pr = 0;
                int bidd = 0;
                int qq = 1;
                string imgn = null;
                string qr = "select * from tblproduct where pid=" + pid + "";
                SqlCommand com = new SqlCommand(qr, con);
                con.Open();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    pn = dr["pname"].ToString();
                    pr = Convert.ToInt32(dr["pprice"].ToString());
                    imgn = dr["pimg"].ToString();
                    bidd = Convert.ToInt32(dr["bid"].ToString());


                }
               
                dr.Close();
                con.Close();

                
                string qr1 = "insert into tblcart(pid,bid,pname,pprice,pquantity,pimg,username,ptp) values (@pid,@bid,@pn,@pr,@qty,@imgn,@sid,@ptotal)";
                SqlCommand com1 = new SqlCommand(qr1, con);
                com1.Parameters.AddWithValue("@pid", pid);
                com1.Parameters.AddWithValue("@bid", bidd);
                com1.Parameters.AddWithValue("@pn", pn);
                com1.Parameters.AddWithValue("@pr", pr);
                com1.Parameters.AddWithValue("@qty", qq);
                com1.Parameters.AddWithValue("@imgn", imgn);
                com1.Parameters.AddWithValue("@sid", sid);
                com1.Parameters.AddWithValue("@ptotal", pr);


                con.Open();
                com1.ExecuteNonQuery();
                con.Close();
              //  Response.Write("<script>alert('save successfully')</script>");
            }
           

            Response.Redirect("viewcart.aspx");

        }
    }
}