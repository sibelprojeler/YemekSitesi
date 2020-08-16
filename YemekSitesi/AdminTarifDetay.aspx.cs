using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class AdminTarifDetay : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];

        SqlCommand komut = new SqlCommand("Select * from TBL_Tarif where TarifId=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();

        while (dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[4].ToString();
            TextBox5.Text = dr[5].ToString();


        }


        SqlCommand komut1 = new SqlCommand("select * from TBL_Kategori", bgl.baglanti());
        SqlDataReader dr2 = komut1.ExecuteReader();

        DropDownList1.DataTextField = "KategoriAd";
        DropDownList1.DataValueField = "KategoriId";

        DropDownList1.DataSource = dr2;
        DropDownList1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        SqlCommand komut = new SqlCommand("insert into TBL_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid,YemekTarih) values (@t1,@t2,@t3,@t4,@t5)", bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", TextBox1.Text);
        komut.Parameters.AddWithValue("@t2", TextBox2.Text);
        komut.Parameters.AddWithValue("@t3", TextBox3.Text);
        komut.Parameters.AddWithValue("@t4",DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@t5",DateTime.Today);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Onaylanan tarif yayınlanmıştır.");

        SqlCommand komut1 = new SqlCommand("Update TBL_Tarif set Durum=1 where TarifId=@p1", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", id);
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();

        
    }
}