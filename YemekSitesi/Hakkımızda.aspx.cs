using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Hakkımızda : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select metin from TBL_Hakkımızda", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label2.Text = dr[0].ToString();
        }


    }
}