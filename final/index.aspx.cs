using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace final
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["BaglantiCumlesi"].ConnectionString);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * from personel",baglanti);
            SqlDataReader listele = komut.ExecuteReader();
            GridView1.DataSource = listele;
            GridView1.DataBind();
            listele.Close();
            baglanti.Close();
            baglanti.Dispose();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int secilenid = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secilenid];
            string sorgu = "delete from personel where Id= '" + row.Cells[1].Text + "'";
            SqlCommand komut = new SqlCommand();
            Crud.EkleSilGuncelle(komut,sorgu);
            Response.Redirect("index.aspx");

        }
    }
}