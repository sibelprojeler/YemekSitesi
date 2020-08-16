using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KullanıcıMasterPage : System.Web.UI.MasterPage
{
    sqlbaglanti bgl = new sqlbaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select * from TBL_Kategori",bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();

       
    }


}
