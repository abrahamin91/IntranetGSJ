using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.pp
{
    public partial class detalle_pp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id_pp = Convert.ToInt16(Request.QueryString["val"]);

            DataSet registrosMonitoreo = SignalRTest.Database.General.Monitoreo.obtieneDSRegistros_Seleccionado("Web_Sel_Registro_clic", id_pp, 3);

            string id_pt = registrosMonitoreo.Tables[0].Rows[0]["id_pt"].ToString();
            string num_viaje = registrosMonitoreo.Tables[0].Rows[0]["num_viaje"].ToString();
            string fecha = registrosMonitoreo.Tables[0].Rows[0]["fecha"].ToString();
            string num_piezas = registrosMonitoreo.Tables[0].Rows[0]["num_piezas"].ToString();
            string lote = registrosMonitoreo.Tables[0].Rows[0]["lote"].ToString();
            string codigo_pt = registrosMonitoreo.Tables[0].Rows[0]["codigo_pt"].ToString();
            string kilos = registrosMonitoreo.Tables[0].Rows[0]["kilos"].ToString();
            string fundida = registrosMonitoreo.Tables[0].Rows[0]["numero_fundida"].ToString();

            LViajeP.Text = num_viaje;
            LPiezasP.Text = num_piezas;
            LLoteP.Text = lote;
            LProductoP.Text = codigo_pt;
            LKilosP.Text = kilos;
            LFundidaP.Text = fundida;

        }
    }
}