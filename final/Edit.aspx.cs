using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextID_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            string sorgu = "update personel set adi=@p1,soyadi=@p2,bolumu=@p3,maasi=@p4,adresi=@p5,memleketi=@p6 where Id='"+TextID.Text+"'";
            SqlCommand komut = new SqlCommand();
            komut.Parameters.Add("@p1", SqlDbType.VarChar).Value = TextName.Text;
            komut.Parameters.Add("@p2", SqlDbType.VarChar).Value = TextSurname.Text;
            komut.Parameters.Add("@p3", SqlDbType.VarChar).Value = TextDepartment.Text;
            komut.Parameters.Add("@p4", SqlDbType.Decimal).Value = TextWage.Text;
            komut.Parameters.Add("@p5", SqlDbType.NChar).Value = TextAddress.Text;
            komut.Parameters.Add("@p6", SqlDbType.VarChar).Value = TextDogumYeri.Text;
            Crud.EkleSilGuncelle(komut, sorgu);
            Response.Redirect("index.aspx");
        }

        protected void btnKayitGetir_Click(object sender, EventArgs e)
        {
            Crud.KayitGetir(ID:TextID, TextName, TextSurname, TextDepartment, TextWage, TextAddress, TextDogumYeri);
        }
    }
}