using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GününMenüsü : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * from TBL_Yemekler Where Kategoriid=1 and GununYemegi=1", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList5.DataSource = dr;
        DataList5.DataBind();

        SqlCommand komut1= new SqlCommand("Select * from TBL_Yemekler Where Kategoriid=2 and GununYemegi=1", bgl.baglanti());
        SqlDataReader dr1 = komut1.ExecuteReader();
        DataList6.DataSource = dr1;
        DataList6.DataBind();

        SqlCommand komut2 = new SqlCommand("Select * from TBL_Yemekler Where Kategoriid=3 and GununYemegi=1", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList7.DataSource = dr2;
        DataList7.DataBind();

        SqlCommand komut3 = new SqlCommand("Select * from TBL_Yemekler Where Kategoriid=4 and GununYemegi=1", bgl.baglanti());
        SqlDataReader dr3 = komut3.ExecuteReader();
        DataList4.DataSource = dr3;
        DataList4.DataBind();








    }
}