using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekYorumları : System.Web.UI.Page
{ sqlbaglanti bgl = new sqlbaglanti();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        SqlCommand komut = new SqlCommand("Select * from TBL_Yemekler inner join TBL_Yorum on TBL_Yemekler.YemekId=TBL_Yorum.Yemekİd where TBL_Yemekler.YemekId=@p1",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}