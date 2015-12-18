using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.ComunikSJ
{
    public partial class Formatos_CXC : System.Web.UI.Page
    {
        public string id, Numero, Nombree, CporC;
        public int i, Id_Formato;
        DataSet Formatoss;
        DataTable dt = new DataTable();
        DataTable dt_idimg = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            //id = Request.Form["id"];

            // string Iid_doc = ""; if (Session["Iidrh"] != null) Iid_doc = Session["Iidrh"].ToString();

            DataSet Formatoss = SignalRTest.Database.General.Monitoreo.Cargar_Formatos("Cargar_FormatosCxC");





            dt.Columns.AddRange(new DataColumn[2] { 
                                new DataColumn("Numero", typeof(int)),
                                new DataColumn("Nombre", typeof(string)),
                                });


            if (Formatoss.Tables.Count > 0)
            {
                for (i = 0; i <= Formatoss.Tables[0].Rows.Count - 1; i++)
                {

                    Numero = Formatoss.Tables[0].Rows[i]["IdDocumento"].ToString();
                    Nombree = Formatoss.Tables[0].Rows[i]["nombre_formato"].ToString();
                    dt.Rows.Add(Numero, Nombree);


                }
            }

            Formatos_CporP.DataSource = dt;
            Formatos_CporP.DataBind();




        }
      
        protected void listarFormatos()
        {

            Formatoss = SignalRTest.Database.General.Monitoreo.Cargar_Formatos("Cargar_FormatosCxC");
            Formatos_CporP.DataSource = dt;
            Formatos_CporP.DataBind();
        }
        protected void Formatos_CporP_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            Id_Formato = Convert.ToInt32(Formatos_CporP.DataKeys[e.NewSelectedIndex].Value);


            Response.Redirect(string.Format("ProcesarDocumento.ashx?id={0}", Id_Formato));
        }
    }
}