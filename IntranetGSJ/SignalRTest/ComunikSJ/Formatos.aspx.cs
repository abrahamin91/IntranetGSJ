using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.ComunikSJ
{
    public partial class Formatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Id", typeof(int)),  
                            new DataColumn("Nombre", typeof(string)),  
                            new DataColumn("Ciudad",typeof(string));
                dt.Rows.Add(1, "Jonathan Orozco", "Monterrey","Descargar");
                dt.Rows.Add(2, "Jesus Corona", "México", "Descargar");
                dt.Rows.Add(3, "Cirilo Zaucedo", "Tijuana", "Descargar");
                dt.Rows.Add(4, "Humberto Suazo", "Chile", "Descargar");
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
             */

        }
        protected void ibRecurosH_intranet_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../ComunikSJ/Formatos_rh.aspx");
        }
        protected void ibfinanzas_intranet_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../ComunikSJ/areas_finanzas_int.aspx");
        }
    }
}