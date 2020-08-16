using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class AdminYorumSil : System.Web.UI.Page
{    
    sqlbaglanti bgl = new sqlbaglanti();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    { id = Request.QueryString["Yorumid"];

        if (Page.IsPostBack==false)
        {

        
        SqlCommand komut = new SqlCommand("Select * from TBL_YORUM where YorumId=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[5].ToString();
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();

        }
            bgl.baglanti().Close();
        }
    
    }

protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut1 = new SqlCommand("Update TBL_Yorum set YorumAdSoyad=@p1,YorumMail=@p2,YorumIcerik=@p3,YorumOnay=@p4 where YorumId=@p5", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", TextBox2.Text);
        komut1.Parameters.AddWithValue("@P2", TextBox3.Text);
        komut1.Parameters.AddWithValue("@p3", TextBox1.Text);
        komut1.Parameters.AddWithValue("@p5",id);
        komut1.Parameters.AddWithValue("@p4", true);
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Yorum onaylanmıştır.");

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand komut2 = new SqlCommand("Delete from TBL_Yorum where YorumId=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Yorum Silinmiştir.");
    }

    
}