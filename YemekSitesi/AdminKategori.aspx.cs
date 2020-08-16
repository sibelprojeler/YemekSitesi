using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminKategori : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];

        }
        Panel2.Visible = false;
        Panel4.Visible = false;

        SqlCommand komut = new SqlCommand("Select * from TBL_Kategori", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        if (islem=="sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete from TBL_Kategori where KategoriId=@p1",bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr1 = komutsil.ExecuteReader();
            DataList1.DataSource = dr1;
            DataList1.DataBind();
        }
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into TBL_Kategori (KategoriAd) values (@p1)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}