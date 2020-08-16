using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminGununMenusu : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    string id = "";
    string islem = "";
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];

        }

        SqlCommand komut = new SqlCommand("Select * from TBL_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();




      

        if (islem == "sec")
        {
            SqlCommand komut1 = new SqlCommand("Update TBL_Yemekler set GununYemegi=@p1 where YemekId=@p2", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", true);
            komut1.Parameters.AddWithValue("@p2", id);
            
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        if (islem == "kaldır")
        {
            SqlCommand komut1 = new SqlCommand("Update TBL_Yemekler set GununYemegi=@p1 where YemekId=@p2", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", false);
            komut1.Parameters.AddWithValue("@p2", id);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();

            
        }

       
        
    }

}
