using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.MuralSJ
{
    public partial class Preview : System.Web.UI.Page
    {
        string usuario;
        int dpto;
        DataTable dt_idimg = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (string)Session["var_usu"];
            dpto = (int)Session["var_dpto"];
            mUsuarios_m.Visible = false;
            //Mostrar Menu Usuarios para Administrador
            if (usuario == "Admin")
            {
                mUsuarios_m.Visible = true;
            }
            DataSet registrosPlantillas = SignalRTest.Database.General.Monitoreo.obtienePlantillas_m("obtener_plantillas", usuario, dpto);

            dt_idimg.Columns.AddRange(new DataColumn[2] {
                                new DataColumn("idimagen",typeof(string)),
                                new DataColumn("num_plant",typeof(string))
            });

            int num_p = 0;
            if (registrosPlantillas.Tables.Count > 0)
            {
                for (int i = 0; i <= registrosPlantillas.Tables[0].Rows.Count - 1; i++)
                {
                    string idimg = registrosPlantillas.Tables[0].Rows[i]["idimagen"].ToString();

                    dt_idimg.Rows.Add(idimg,num_p);
                    num_p++;
                }
            }
            

          

            
            if (!Page.IsPostBack)
            {
                Repeater2.DataSource = dt_idimg;
                Repeater2.DataBind();
            }
        }

        protected string Activador_Item(Object o1)
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