using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class AdminYorumOnay : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;
        

        SqlCommand komut = new SqlCommand("Select * from TBL_YORUM where YorumOnay=0", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();


        SqlCommand komut1    = new SqlCommand("Select * from TBL_YORUM where YorumOnay=1", bgl.baglanti());
        SqlDataReader dr1 = komut1.ExecuteReader();
        DataList2.DataSource = dr1;
        DataList2.DataBind();

        if (Page.IsPostBack==false)
        {
            id = Request.QueryString["Yorumid"];
            islem = Request.QueryString["islem"];

        }

        if (islem=="sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete from TBL_Yorum where YorumId=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr2 = komutsil.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            Response.Write("Onaylı Yorum Silinmiştir");
        }

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click1(object sender, EventArgs e)
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
}

