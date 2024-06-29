using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace temppractise
{
    public partial class viewcart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-MPE42I2M;Initial Catalog=testcreate;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;");
       

        protected void Page_Load(object sender, EventArgs e)
        {
            string sid = Session["username"].ToString();


            Label2.Text = "Hello"+" "+ sid;





            string pn = null;
            int pr = 0;
            int qyt = 0;
            string or = "yes";
            string imgn = null;
            if (!Page.IsPostBack)
            {
                string qr = $"select pid, pname, pprice, pimg, pquantity, pprice*pquantity as total from tblcart where username= '{sid}' and [order] IS  NULL ";
                SqlDataAdapter da = new SqlDataAdapter(qr, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "tblcart");
                DataList1.DataSource = ds.Tables["tblcart"];
                DataList1.DataBind();
                int gtotal = 0;
                foreach (DataRow dr in ds.Tables["tblcart"].Rows)
                {
                    gtotal = gtotal + Convert.ToInt32(dr["total"]);
                }
                lblgtotal.Text = gtotal.ToString();
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string cn = e.CommandName.ToString();
            TextBox txtBox = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("txtqty"));
            if (cn == "bplus")
            {
               
                txtBox.Text = (Convert.ToInt32(txtBox.Text) + 1).ToString();
               

            }

            else if (cn == "bminus")
            {
               // TextBox txtBox = ((TextBox)DataList1.Items[e.Item.ItemIndex].FindControl("txtqty"));
                txtBox.Text = (Convert.ToInt32(txtBox.Text) - 1).ToString();
            }

            Label pr = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("Label1"));
            Label pn = ((Label)DataList1.Items[e.Item.ItemIndex].FindControl("pn"));
            int tt = Convert.ToInt32(txtBox.Text) * Convert.ToInt32(pr.Text);

            string qr = "update tblcart set pquantity=@t11,ptp=@pr where pname=@pn and username=@sid";
            SqlCommand com = new SqlCommand(qr, con);
            con.Open();
            com.Parameters.AddWithValue("@t11", txtBox.Text);
            com.Parameters.AddWithValue("@pn", pn.Text);
            com.Parameters.AddWithValue("@pr", tt);
            string sid = Session["username"].ToString();
            com.Parameters.AddWithValue("@sid", sid);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("viewcart.aspx");



        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            foreach (DataListItem li in DataList1.Items)
            {
                CheckBox cb = li.FindControl("CheckBox1") as CheckBox;

                if (cb != null)
                {
                    Label5.Text = "found";
                    if (cb.Checked)
                    {
                        TextBox t11 = li.FindControl("txtqty") as TextBox;
                        Label pn = li.FindControl("pn") as Label;
                        Label pr=li.FindControl("Label1") as Label;   
                        int tota=Convert.ToInt32(pr.Text)*Convert.ToInt32(t11.Text);

                        string qr = "update tblcart set pquantity=@t11,ptp=@tot where pname=@pn and username=@sid ";
                        SqlCommand com = new SqlCommand(qr, con);
                        con.Open();
                        com.Parameters.AddWithValue("@t11", t11.Text);
                        com.Parameters.AddWithValue("@pn", pn.Text);
                        com.Parameters.AddWithValue("@tot", tota);

                        string sid = Session["username"].ToString();
                        com.Parameters.AddWithValue("@sid", sid);
                        com.ExecuteNonQuery();
                        con.Close();
                        //  if (t1.Va.Length > 0)
                        // Label5.Text +=t1.Text;

                        // LblText.Text += cb.Value;
                        Response.Redirect("viewcart.aspx");
                    }
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            foreach (DataListItem li in DataList1.Items)
            {
                CheckBox cb = li.FindControl("CheckBox1") as CheckBox;

                if (cb != null)
                {
                    Label5.Text = "found";
                    if (cb.Checked)
                    {
                        Label t1 = li.FindControl("pn") as Label;
                        string qr = "delete from tblcart where pname=@pn and username=@sid";
                        SqlCommand com = new SqlCommand(qr, con);
                        con.Open();
                        com.Parameters.AddWithValue("@pn", t1.Text);
                        string sid = Session["username"].ToString();
                        com.Parameters.AddWithValue("@sid", sid);
                        com.ExecuteNonQuery();
                        con.Close();
                        
                        Response.Redirect("viewcart.aspx");
                    }
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("yuga.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("addtobuy.aspx");
        }
    }
}