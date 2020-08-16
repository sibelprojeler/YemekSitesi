using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminTarifOnay : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
      
        SqlCommand komut = new SqlCommand("Select * from TBL_Tarif where Durum=0", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}