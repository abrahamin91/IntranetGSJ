using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SignalRTest
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet registrosMonitoreo = SignalRTest.Database.General.Monitoreo.obtieneDSRegistros("Web_Sel_Registros_Fundido", "","",1);

            string id_monitoreo = registrosMonitoreo.Tables[0].Rows[0]["id_monitoreo"].ToString();
            string id_paciente = registrosMonitoreo.Tables[0].Rows[0]["id_paciente"].ToString();
            string fecha_creacion = registrosMonitoreo.Tables[0].Rows[0]["fecha_creacion"].ToString();
            string fecha_recepcion = registrosMonitoreo.Tables[0].Rows[0]["fecha_recepcion"].ToString();
            string fecha_captura = registrosMonitoreo.Tables[0].Rows[0]["fecha_captura"].ToString();
            string Peso = registrosMonitoreo.Tables[0].Rows[0]["Peso"].ToString();
            string Talla = registrosMonitoreo.Tables[0].Rows[0]["Talla"].ToString();
            string FC = registrosMonitoreo.Tables[0].Rows[0]["FC"].ToString();
            string FR = registrosMonitoreo.Tables[0].Rows[0]["FR"].ToString();
            string lectura_ECG = registrosMonitoreo.Tables[0].Rows[0]["lectura_ECG"].ToString();
            string Temperatura = registrosMonitoreo.Tables[0].Rows[0]["Temperatura"].ToString();
            string TASistolica = registrosMonitoreo.Tables[0].Rows[0]["TASistolica"].ToString();
            string TADiastolica = registrosMonitoreo.Tables[0].Rows[0]["TADiastolica"].ToString();
            string Cintura = registrosMonitoreo.Tables[0].Rows[0]["Cintura"].ToString();
            string Cadera = registrosMonitoreo.Tables[0].Rows[0]["Cadera"].ToString();
            string Glucemia = registrosMonitoreo.Tables[0].Rows[0]["Glucemia"].ToString();
            string Hemoglobina = registrosMonitoreo.Tables[0].Rows[0]["Hemoglobina"].ToString();
            string Colesterol = registrosMonitoreo.Tables[0].Rows[0]["Colesterol"].ToString();
            string Trigliceridos = registrosMonitoreo.Tables[0].Rows[0]["Trigliceridos"].ToString();
            string Albuminuria = registrosMonitoreo.Tables[0].Rows[0]["Albuminuria"].ToString();
            string Glucosuria = registrosMonitoreo.Tables[0].Rows[0]["Glucosuria"].ToString();

            string nombre = registrosMonitoreo.Tables[0].Rows[0]["nombre"].ToString();
            string apellido_paterno = registrosMonitoreo.Tables[0].Rows[0]["apellido_paterno"].ToString();
            string apellido_materno = registrosMonitoreo.Tables[0].Rows[0]["apellido_materno"].ToString();
            string calle = registrosMonitoreo.Tables[0].Rows[0]["calle"].ToString();
            string numero_exterior = registrosMonitoreo.Tables[0].Rows[0]["numero_exterior"].ToString();
            string numero_interior = registrosMonitoreo.Tables[0].Rows[0]["numero_interior"].ToString();
            string codigo_postal = registrosMonitoreo.Tables[0].Rows[0]["codigo_postal"].ToString();
            string colonia = registrosMonitoreo.Tables[0].Rows[0]["colonia"].ToString();
            string municipio = registrosMonitoreo.Tables[0].Rows[0]["municipio"].ToString();
            string estado = registrosMonitoreo.Tables[0].Rows[0]["estado"].ToString();
            string pais = registrosMonitoreo.Tables[0].Rows[0]["pais"].ToString();
            string telefono1 = registrosMonitoreo.Tables[0].Rows[0]["telefono1"].ToString();
            string telefono2 = registrosMonitoreo.Tables[0].Rows[0]["telefono2"].ToString();
            string celular = registrosMonitoreo.Tables[0].Rows[0]["celular"].ToString();
            string email = registrosMonitoreo.Tables[0].Rows[0]["email"].ToString();

            string nombre_doctor = registrosMonitoreo.Tables[0].Rows[0]["nombre_doctor"].ToString();
            string ap_pat_doctor = registrosMonitoreo.Tables[0].Rows[0]["ap_pat_doctor"].ToString();
            string ap_mat_doctor = registrosMonitoreo.Tables[0].Rows[0]["ap_mat_doctor"].ToString();
            string grupo_sanguineo = registrosMonitoreo.Tables[0].Rows[0]["tipo_sangre"].ToString();
            string fecha_nacimiento = registrosMonitoreo.Tables[0].Rows[0]["fecha_nacimiento"].ToString();


            LabelPeso.Text = Peso;
            LabelTalla.Text = Talla;
            LabelFrecuenciaCardiaca.Text = FC;
            LabelFR.Text = FR;
            LabelElectroCardiograma.Text = lectura_ECG;
            LabelTemperatura.Text = Temperatura;
            LabelTASistolica.Text = TASistolica;
            LabelTADiasistolica.Text = TADiastolica;
            LabelCintura.Text = Cintura;
            LabelCadera.Text = Cadera;
            LabelGlucemia.Text = Glucemia;
            LabelHemoglobina.Text = Hemoglobina;
            LabelColesterol.Text = Colesterol;
            LabelTrigliceridos.Text = Trigliceridos;
            LabelAlbuminuria.Text = Albuminuria;
            LabelGlucosurina.Text = Glucosuria;


            string parametroIdPaciente = Request.QueryString["val"];

            LabelDatosPaciente.Text = "<strong>Nombre: </strong>" + nombre + " " + apellido_paterno + " " + apellido_materno;
            LabelDatosPaciente.Text = LabelDatosPaciente.Text + "<br/><strong>Calle: </strong> " + calle + " " + numero_exterior;
            LabelDatosPaciente.Text = LabelDatosPaciente.Text + "<br/><strong>Colonia: </strong> " + colonia;
            LabelDatosPaciente.Text = LabelDatosPaciente.Text + "<br/><strong>Estado: </strong> " + estado;
            LabelDatosPaciente.Text = LabelDatosPaciente.Text + "<br/><strong>Telefono: </strong> " + telefono1 + "<br/><br/>";


            LabelDatosDoctor.Text = "<strong>Nombre: </strong> " + nombre_doctor;
            //LabelDatosDoctor.Text = LabelDatosDoctor.Text + " <br/><strong>Telefono: </strong> " ;
        }
        private void creaChart(string parametroColumna)
        {
            string parametroIdPaciente = Request.QueryString["val"];
            DataSet historialMonitoreo = SignalRTest.Database.General.Monitoreo.obtieneDatasetHistorialMonitoreo(parametroIdPaciente);
            Chart1.DataSource = historialMonitoreo;
            if (historialMonitoreo.Tables.Count > 0)
            {
                string x = "";
                string y = "";
                Chart1.Series.Add("serie");
                
                Chart1.Palette = System.Web.UI.DataVisualization.Charting.ChartColorPalette.SeaGreen;

                //Chart1.Series["serie"].LabelStyle = System.Web.UI.DataVisualization.Charting.LabelAlignmentStyles.Left;                    



                for (int i = 0; i <= historialMonitoreo.Tables[0].Rows.Count - 1; i++)
                {
                    x = historialMonitoreo.Tables[0].Rows[i]["fecha_creacion"].ToString();
                    try
                    {
                        y = historialMonitoreo.Tables[0].Rows[i][parametroColumna].ToString();
                    }
                    catch (Exception)
                    {
                        y = "0";
                    }
                    Chart1.Series["serie"].Points.AddXY(x, y);
                }
            }
            ASPxPopupControl1.ShowOnPageLoad = true;
        }


        #region click botones
        protected void Button1_Click(object sender, EventArgs e)
        {
            creaChart("peso");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            creaChart("talla");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            creaChart("FC");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            creaChart("FR");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            creaChart("lectura_ECG");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            creaChart("Temperatura");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            creaChart("Tasistolica");
        }
        protected void Button8_Click(object sender, EventArgs e)
        {
            creaChart("TADiastolica");
        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            creaChart("Cintura");
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            creaChart("Cadera");
        }
        protected void Button11_Click(object sender, EventArgs e)
        {
            creaChart("Glucemia");
        }
        protected void Button12_Click(object sender, EventArgs e)
        {
            creaChart("Hemoglobina");
        }
        protected void Button13_Click(object sender, EventArgs e)
        {
            creaChart("colesterol");
        }
        protected void Button14_Click(object sender, EventArgs e)
        {
            creaChart("trigliceridos");
        }
        protected void Button15_Click(object sender, EventArgs e)
        {
            creaChart("albuminuria");
        }
        protected void Button16_Click(object sender, EventArgs e)
        {
            creaChart("Glucosuria");
        }
        #endregion


    }
}