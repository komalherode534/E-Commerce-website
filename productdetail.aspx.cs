using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace temppractise
{
    public partial class productdetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            SqlConnection connection = new SqlConnection("Data Source=LAPTOP-MPE42I2M;Initial Catalog=testcreate;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;");
            string qr = "select * from tblproduct where pid="+id;
            SqlDataAdapter adapter = new SqlDataAdapter(qr, connection);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            DataList1.DataSource = dataSet;
            DataList1.DataBind();


            string qrr = "select * from tblproduct where pid !=" + id;
            SqlDataAdapter adapter1 = new SqlDataAdapter(qrr, connection);
            DataSet dataSet1 = new DataSet();
            adapter1.Fill(dataSet1);
            DataList2.DataSource = dataSet1;
            DataList2.DataBind();

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
          
           
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}