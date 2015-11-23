using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SignalRTest.fundido
{
    public partial class detalle_fundido : System.Web.UI.Page
    {
      
        private static string semaforo_verde = "../images/semaforo_verde.png";
        private static string semaforo_ambar = "../images/semaforo_amarillo.png";
        private static string semaforo_rojo = "../images/semaforo_rojo.png";

      

        protected void Page_Load(object sender, EventArgs e)
        {
            int id_fundida = Convert.ToInt16(Request.QueryString["val"]);

            DataSet registrosMonitoreo = SignalRTest.Database.General.Monitoreo.obtieneDSRegistros_Seleccionado("Web_Sel_Registro_clic", id_fundida, 2);


            string linea = registrosMonitoreo.Tables[0].Rows[0]["linea"].ToString();
            string fecha = registrosMonitoreo.Tables[0].Rows[0]["fecha"].ToString();
            string num_fundida = registrosMonitoreo.Tables[0].Rows[0]["num_fundida"].ToString();
            string lote = registrosMonitoreo.Tables[0].Rows[0]["lote"].ToString();
            string familia = registrosMonitoreo.Tables[0].Rows[0]["familia"].ToString();
            
            string ph_cj01 = registrosMonitoreo.Tables[0].Rows[0]["ph_cj01"].ToString();
            string ph_cj011 = registrosMonitoreo.Tables[0].Rows[0]["ph_cj011"].ToString();
            string temperatura = registrosMonitoreo.Tables[0].Rows[0]["temperatura"].ToString();
            string ph_cj01_1 = registrosMonitoreo.Tables[0].Rows[0]["ph_cj01_1"].ToString();
            string ph_cj01_2 = registrosMonitoreo.Tables[0].Rows[0]["ph_cj01_2"].ToString();
            string ph_cj01_3 = registrosMonitoreo.Tables[0].Rows[0]["ph_cj01_3"].ToString();

            LFamiliaF.Text = familia;
            LLoteF.Text=lote;
            LLineaF.Text = linea;
            LNumfundidaF.Text = num_fundida;
            LTempF.Text = temperatura;

            Lph_cj01.Text = ph_cj01;
            Lph_cj011.Text = ph_cj011;
            Lph_cj01_2.Text = ph_cj01_1;
            Lph_cj01_3.Text = ph_cj01_2;
            Lph_cj01_4.Text = ph_cj01_3;


            #region Parametrizado de Valores
            //Parametrizar el ph_cj01

            string subsFamilia = familia.Substring(0, 4);

            

            float int_ph_cj01 = 0;
            if (!(ph_cj01 == ""))
            {
                int_ph_cj01 = float.Parse(ph_cj01);
            }

            if (int_ph_cj01>6.1)
            {
                Img_ph_cj01.ImageUrl = semaforo_rojo;
                
            }
           

            //Parametrizar el ph_cj011
            float int_ph_cj011 = 0;
            if (!(ph_cj011 == ""))
            {
                int_ph_cj011 = float.Parse(ph_cj011);
            }

            if (int_ph_cj011 > 6.1)
            {
                Img_ph_cj011.ImageUrl = semaforo_rojo;
            }
           

            //Parametrizar temperatura
            float int_temperatura = 0;
            if (!(temperatura == ""))
            {
                int_temperatura = float.Parse(temperatura);
            }

            if (int_temperatura < 68)
            {
                Img_Temp.ImageUrl = semaforo_rojo;
            }
            

            //Parametrizar ph_cj01_1
            float int_ph_cj01_1 = 0;
            if (!(ph_cj01_1 == ""))
            {
                int_ph_cj01_1 = float.Parse(ph_cj01_1);
            }

            if (int_ph_cj01_1 > 6.1)
            {
                Img_ph_cj01_2.ImageUrl = semaforo_rojo;
            }
          

            //Parametrizar ph_cj01_2
            float int_ph_cj01_2 = 0;
            if (!(ph_cj01_2 == ""))
            {
                int_ph_cj01_2 = float.Parse(ph_cj01_2);
            }

            if (int_ph_cj01_2 > 6.1)
            {
                Img_ph_cj01_3.ImageUrl = semaforo_rojo;
            }
           

            //Parametrizar int_ph_cj01_3
            float int_ph_cj01_3 = 0;
            if (!(ph_cj01_3 == ""))
            {
                int_ph_cj01_3 = float.Parse(ph_cj01_3);
            }

            if (int_ph_cj01_3 > 6.1)
            {
                Img_ph_cj01_4.ImageUrl = semaforo_rojo;
            }
           

            #endregion



            //string parametroIdPaciente = Request.QueryString["val"];

            //LabelDatosPaciente.Text = "<strong>Nombre: </strong>" + nombre + " " + apellido_paterno + " " + apellido_materno;
            //LabelDatosPaciente.Text = LabelDatosPaciente.Text + "<br/><strong>Calle: </strong> " + calle + " " + numero_exterior;
            

        }
    }
}