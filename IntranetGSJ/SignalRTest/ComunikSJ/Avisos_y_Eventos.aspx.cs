using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.ComunikSJ
{
    public partial class Avisos_y_Eventos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        DataTable dt = new DataTable();

        DataSet registros_avisos_eventos = SignalRTest.Database.General.Monitoreo.obtienePlantillas_m("obtener_plantillas_rh");

            
            dt.Columns.AddRange(new DataColumn[2] { 
                                new DataColumn("idimagen",typeof(string)),
                                new DataColumn("num_plant",typeof(string))
            });

            int num_p = 0;
            if (registros_avisos_eventos.Tables.Count > 0)
            {
                for (int i = 0; i <= registros_avisos_eventos.Tables[0].Rows.Count - 1; i++)
                {
                    string idimg = registros_avisos_eventos.Tables[0].Rows[i]["idimagen"].ToString();
                            dt.Rows.Add(idimg, num_p);
                            num_p++;
                }
            }

            //gvEventos.DataSource = dt;
            //gvEventos.DataBind();
            ImagesList.DataSource = dt;
            ImagesList.DataBind();

            Repeater2.DataSource = dt;
            Repeater2.DataBind();

        }
        protected string Activador_Item_comuniksj(Object o1)
        {
            int d1 = Convert.ToInt32(o1);
            string act = "";
            if (d1 == 0)
            {
                act = "item active";
            }
            else
            {
                act = "item";
            }
            return act;

        }
    }
}