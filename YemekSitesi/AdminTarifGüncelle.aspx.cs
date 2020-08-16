using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifGüncelle : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];

        SqlCommand komut = new SqlCommand("select * from TBL_Yemekler where YemekId=@p1",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();

        while (dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();

        }

        //KategoriListeleme

        if (Page.IsPostBack==false)
        {

        
        SqlCommand komut1 = new SqlCommand("select * from TBL_Kategori", bgl.baglanti());
        SqlDataReader dr2 = komut1.ExecuteReader();

        DropDownList1.DataTextField = "KategoriAd";
        DropDownList1.DataValueField = "KategoriId";

        DropDownList1.DataSource = dr2;
        DropDownList1.DataBind();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Pictures/" + FileUpload1.FileName));
        SqlCommand komut1 = new SqlCommand("Update TBL_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,YemekResim=@p5,Kategoriid=@p6 where YemekId=@p4", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p4", id);
        komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut1.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut1.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut1.Parameters.AddWithValue("@p5", "~/Pictures/" + FileUpload1.FileName);
        komut1.Parameters.AddWithValue("@p6", DropDownList1.SelectedValue);
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    
}