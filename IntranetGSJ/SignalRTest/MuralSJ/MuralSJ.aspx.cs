using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.MuralSJ
{
    public partial class MuralSJ : System.Web.UI.Page
    {
        DataTable dt_todo = new DataTable();
        int num_p;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            DataSet registrosPlantillas = SignalRTest.Database.General.Monitoreo.obtienePlantillas_m("obtener_todo");

            dt_todo.Columns.AddRange(new DataColumn[4] {
                                new DataColumn("idimagen",typeof(string)),
                                new DataColumn("num_plant",typeof(string)),
                                new DataColumn("duracion",typeof(string)),
                                new DataColumn("tipo",typeof(string))
            });

            num_p = 0;
            if (registrosPlantillas.Tables.Count > 0)
            {
                for (int i = 0; i <= registrosPlantillas.Tables[0].Rows.Count - 1; i++)
                {
                    string idimg = registrosPlantillas.Tables[0].Rows[i]["idimagen"].ToString();
                    string duracion = registrosPlantillas.Tables[0].Rows[i]["duracion"].ToString();
                    string tipo = registrosPlantillas.Tables[0].Rows[i]["tipo"].ToString();

                    dt_todo.Rows.Add(idimg, num_p, duracion, tipo);
                    num_p++;
                }
            }

            int nrorows = num_p;
            
                rpt_todo.DataSource = dt_todo;
                rpt_todo.DataBind();

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
        protected string mostrar_item(Object o1,Object o2)
        {
            HtmlString contenido = null;
            int id = Convert.ToInt32(o1);
            string tipo = Convert.ToString(o2);
            string content = "";

            if (tipo.Contains("image"))
            {
                content = content + String.Format("<image style=\"height:615px; width:100%\" src='../MuralSJ/ProcesarImage.ashx?id={0}'></image>",id);
            }
            else
            {
                string ruta_vid = SignalRTest.Database.General.Monitoreo.obtieneRutaVideo_m("obtener_video_r", id);
                ruta_vid = ruta_vid.Replace("~", "..");
                content = content + String.Format("<video  style=\"height:615px; width:100%\" autoplay><source src=\"{0}\"></video>", ruta_vid);
            }
            contenido = new HtmlString(content);
            return content;

        }
        protected int validar_tipo(Object o1)
        {
            string tipo = Convert.ToString(o1);
            int validacion = 0;

            if (tipo.Contains("image"))
            {
                validacion = 1;
            }
            else
            {
                validacion = 0;
            }

            return validacion;
        }
        protected string validar_tipo2(Object o1)
        {
            string tipo = Convert.ToString(o1);

            if (tipo.Contains("image"))
            {
                tipo = "image";
            }
            else
            {
                tipo = "video";
            }

            return tipo;
        }
    }
}