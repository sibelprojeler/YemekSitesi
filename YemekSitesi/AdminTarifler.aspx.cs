using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TariflerAdmin : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    string id = "";
    string islem = "";
    int oysayısı = 0;
  
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];

        }

        Panel2.Visible = false;
        Panel4.Visible = false;

        SqlCommand komut = new SqlCommand("Select * from TBL_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //KategoriListeleme
        SqlCommand komut1 = new SqlCommand("select * from TBL_Kategori", bgl.baglanti());
        SqlDataReader dr2 = komut1.ExecuteReader();

        DropDownList1.DataTextField = "KategoriAd";
        DropDownList1.DataValueField = "KategoriId";

        DropDownList1.DataSource = dr2;
        DropDownList1.DataBind();

        if (islem=="sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete from TBL_Yemekler where YemekId=@p1", bgl.baglanti());
           komutsil.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr1 = komutsil.ExecuteReader();
            DataList1.DataSource = dr1;
            DataList1.DataBind();




                 }

       
    }

   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

   

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible =false;

    }



    protected void Button5_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Pictures/" + FileUpload1.FileName));

        SqlCommand komut = new SqlCommand("insert into TBL_Yemekler (YemekAd,YemekMalzeme,YemekTarif,Kategoriid,YemekResim) values (@p1,@p2,@p3,@p5,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p4", "~/Pictures/" + FileUpload1.FileName);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //Kategori sayısını artıırma
        SqlCommand komut1 = new SqlCommand("Update TBL_Kategori set KategoriAdet=KategoriAdet+1 where KategoriId=@p1", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();

        // Puanı güncelleme

    }



}