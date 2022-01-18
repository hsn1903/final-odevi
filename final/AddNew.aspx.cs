using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class AddNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            string sorgu = "insert into personel values(@p1,@p2,@p3,@p4,@p5,@p6)";
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
    }
}