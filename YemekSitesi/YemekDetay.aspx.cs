using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class YemekDetay : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    string Yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
       Yemekid= Request.QueryString["Yemekid"];
        SqlCommand komut = new SqlCommand("Select * from TBL_Yemekler where YemekId=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Yemekid);
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

    }
}