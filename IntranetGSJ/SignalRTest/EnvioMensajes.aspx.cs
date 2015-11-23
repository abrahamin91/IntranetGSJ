using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data;

namespace SignalRTest
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Enviar_Click(object sender, EventArgs e)
        {
            string envio = "";
            //string celular = Label2.Text;
            string celular = TextBoxCelularDoctor.Text;
            string celularStripped = Regex.Replace(celular, "[^0-9]", "");

            if (celularStripped.Length == 10)
            {
                //envio = Logic.General.EnvioCorreos.enviaCorreo("daniel.ruiz@neoteck.com.mx", "Asunto", TextBoxMensage.Text);
                envio = Logic.General.EnvioCorreos.enviaCorreoMensajeCel(celularStripped + "@masmensajes.com.mx", "Asunto", "Monitoreo VMK - " + TextBoxMensage.Text);

                if (envio == "true")
                {
                    Response.Write("<script language='JavaScript'> window.alert('Se ha enviado su mensaje correctamente') </script>");
                    Response.Write("<script>self.close();</script>");
                }
                else
                {
                    envio = envio.Replace("'", "-");
                    envio = envio.Remove(envio.IndexOf('.'));

                    Response.Write(String.Format("<script language='JavaScript'>window.alert('" + envio + "')</script>"));
                }
            }
            else 
            {
                Response.Write(String.Format("<script language='JavaScript'>window.alert('El número telefónico no es válido')</script>"));
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {                
                    //Label1.Text = ChatHub.doctorPasar;
                    //Label2.Text = ChatHub.celularPasar.Replace("-", "");
                    //TextBoxCelularDoctor.Text = ChatHub.celularPasar.Replace("-", "");                    
                    //TextBoxMensage.Text = "El paciente " + ChatHub.pacientePasar+", ";

                    string telFijoMedico = "";
                    string celularMedico = "";
                    string nombreMedico = "";
                    string nombrePaciente = "";

                    DataSet datosMedico = SignalRTest.Database.General.Monitoreo.obtieneDatasetMedicoSegunIdPaciente(Request.QueryString["val"]);

                    if (datosMedico.Tables.Count > 0)
                    {
                        for (int j = 0; j <= datosMedico.Tables[0].Rows.Count - 1; j++)
                        {
                            telFijoMedico = datosMedico.Tables[0].Rows[j]["telefono"].ToString();
                            celularMedico = datosMedico.Tables[0].Rows[j]["celular"].ToString();
                            nombreMedico = datosMedico.Tables[0].Rows[j]["nombre"].ToString() + " " + datosMedico.Tables[0].Rows[j]["apellido_paterno"].ToString() + " " + datosMedico.Tables[0].Rows[j]["apellido_materno"].ToString();
                        }
                    }

                    Label1.Text = nombreMedico;
                    LabelTelFijo.Text = telFijoMedico;
                    TextBoxCelularDoctor.Text = celularMedico.Replace("-", "");

                    DataSet datosPaciente = SignalRTest.Database.General.Monitoreo.obtieneDatasetPaciente(Request.QueryString["val"]);

                    if (datosPaciente.Tables.Count > 0)
                    {
                        for (int j = 0; j <= datosPaciente.Tables[0].Rows.Count - 1; j++)
                        {
                            nombrePaciente = datosPaciente.Tables[0].Rows[j]["nombre"].ToString() + " " + datosPaciente.Tables[0].Rows[j]["apellido_paterno"].ToString() + " " + datosPaciente.Tables[0].Rows[j]["apellido_materno"].ToString();
                        }
                    }

                    TextBoxMensage.Text = "El paciente " + nombrePaciente + ", ";
  
            }
        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            Response.Write("<script>self.close();</script>");
        }
    }
}