using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

public class sqlbaglanti
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-8EKHIUI\SQLSERVER2017EXP;Initial Catalog=YemekSitesi;Integrated Security=True");
        baglan.Open();
        return baglan;
    }
}