using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Yorum : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    string id = "";
    int puan = 0;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];

       
    }


    protected void Button2_Click(object sender, EventArgs e)
    {

        id = Request.QueryString["Yemekid"];

        SqlCommand komut = new SqlCommand("insert into TBL_Yorum (YorumAdSoyad,YorumMail,YorumIcerik,YorumTarih,YorumOnay,Yemekİd) values (@p1,@p2,@p3,@p5,@p6,@p4) ", bgl.baglanti());
        komut.Parameters.AddWithValue("@p4", id);
        komut.Parameters.AddWithValue("@p1", TextBox2.Text);
        komut.Parameters.AddWithValue("@p2", TextBox3.Text);
        komut.Parameters.AddWithValue("@p3", TextBox1.Text);
        komut.Parameters.AddWithValue("@p5", DateTime.Now);
        komut.Parameters.AddWithValue("@p6", false);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


        if (TextBox5.Text!=null)
        {
            SqlCommand komut1 = new SqlCommand("Update TBL_Yemekler set PuanKisi=PuanKisi+1,YemekPuan=YemekPuan+@p2 where YemekId=@p1", bgl.baglanti());
            komut1.Parameters.AddWithValue("@p1", id);
            komut1.Parameters.AddWithValue("@p2", TextBox5.Text);
            komut1.ExecuteNonQuery();
            bgl.baglanti().Close();
        }


        
    }
}