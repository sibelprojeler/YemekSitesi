using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class AdminHakkımızda : System.Web.UI.Page
{
    sqlbaglanti bgl = new sqlbaglanti();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack==false)
        {

       
        SqlCommand komut = new SqlCommand("Select * from TBL_Hakkımızda", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[0].ToString();

        }
        
        bgl.baglanti().Close();
    }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut1 = new SqlCommand("Update TBL_Hakkımızda set Metin=@p1", bgl.baglanti());
        komut1.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut1.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}