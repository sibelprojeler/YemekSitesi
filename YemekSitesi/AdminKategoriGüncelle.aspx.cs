using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class KategoriGüncelleAdmin : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategoriid"];

        if (Page.IsPostBack==false)
        {

        
        SqlCommand komut = new SqlCommand("select * from TBL_Kategori where KategoriId=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while(dr.Read())
        { TextBox1.Text = dr[1].ToString();
          TextBox2.Text = dr[2].ToString();
        }
        bgl.baglanti().Close();
        }


    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand komut1 = new SqlCommand("Update TBL_Kategori set KategoriAd=@p1,KategoriAdet=@p2 where KategoriId=@p3", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut1.Parameters.AddWithValue("@p3", id);
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}