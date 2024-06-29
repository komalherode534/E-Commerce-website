using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace temppractise
{
    public partial class Women : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=LAPTOP-MPE42I2M;Initial Catalog=testcreate;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;");
            string qr = "select * from tblproduct where bid=" + 4;
            SqlDataAdapter adapter = new SqlDataAdapter(qr, connection);
            DataSet dataSet = new DataSet();
            adapter.Fill(dataSet);
            DataList1.DataSource = dataSet;
            DataList1.DataBind();


            string qrr = "select * from tblproduct where bid=" + 5;
            SqlDataAdapter adapter1 = new SqlDataAdapter(qrr, connection);
            DataSet dataSet1 = new DataSet();
            adapter1.Fill(dataSet1);
            DataList2.DataSource = dataSet1;
            DataList2.DataBind();

            string qrrr = "select * from tblproduct where bid=" + 6;
            SqlDataAdapter adapter2 = new SqlDataAdapter(qrrr, connection);
            DataSet dataSet2 = new DataSet();
            adapter2.Fill(dataSet2);
            DataList3.DataSource = dataSet2;
            DataList3.DataBind();

        }
    }
}