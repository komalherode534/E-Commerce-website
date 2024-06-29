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
    public partial class order : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-MPE42I2M;Initial Catalog=testcreate;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;");

        protected void Page_Load(object sender, EventArgs e)
        {
            string sid = Session["username"].ToString();


            Label2.Text = "Hello" + " " + sid;





            string pn = null;
            int pr = 0;
            int qyt = 0;

            string imgn = null;
            if (!Page.IsPostBack)
            {
                string or = "yes";
                string qr = $"select pid, pname, pprice, pimg, pquantity, pprice*pquantity as total from tblcart where username= '{sid}' and [order] = '{or}'";
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

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}