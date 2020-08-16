using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminAnasayfa : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();

    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("select * from TBL_ASayfa", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Aid"];
            islem = Request.QueryString["islem"];

        }

        if (islem=="sil")
        {
            SqlCommand komutsil = new SqlCommand("Delete from TBL_ASayfa where id=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr1 = komutsil.ExecuteReader();
            DataList2.DataSource = dr1;
            DataList2.DataBind();
            

        }
    }

     
}