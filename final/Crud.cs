using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI.WebControls;

namespace final
{
    public class Crud
    { 
        public static void KayitGetir(TextBox ID, TextBox adi, TextBox soyadi, TextBox bolumu, TextBox maasi, TextBox adresi, TextBox memleketi)
        {
            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["BaglantiCumlesi"].ConnectionString);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from personel where Id='"+ID.Text+"'", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while(dr.Read())
            {
                adi.Text = dr[1].ToString();
                soyadi.Text = dr[2].ToString();
                bolumu.Text = dr[3].ToString();
                maasi.Text = dr[4].ToString();
                adresi.Text = dr[5].ToString();
                memleketi.Text = dr[6].ToString();
            }

            dr.Close();
            baglanti.Close();
            komut.Dispose();
            baglanti.Dispose();


        }
        public static void EkleSilGuncelle(SqlCommand komut, string sql)
        {
            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["BaglantiCumlesi"].ConnectionString);
            baglanti.Open();
            komut.Connection = baglanti;
            komut.CommandText = sql;
            komut.ExecuteNonQuery();
            baglanti.Close();
            komut.Dispose();
            baglanti.Dispose();
        }
    }

   
}