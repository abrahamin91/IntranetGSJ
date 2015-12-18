using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.ComunikSJ
{
    public partial class Quejas_y_sugerencias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void EnviarCorreo()
        {
            /*-------------------------MENSAJE DE CORREO----------------------*/

            //Creamos un nuevo Objeto de mensaje
            System.Net.Mail.MailMessage mmsg = new System.Net.Mail.MailMessage();

            //Direccion de correo electronico a la que queremos enviar el mensaje
            mmsg.To.Add("abraham.ibarra@sanjacinto.com.mx");

            //Nota: La propiedad To es una colección que permite enviar el mensaje a más de un destinatario

            //Asunto
            mmsg.Subject = "Intranet ComunikSJ Queja y/o Sugerencia";
            mmsg.SubjectEncoding = System.Text.Encoding.UTF8;

            //Direccion de correo electronico que queremos que reciba una copia del mensaje
            //mmsg.Bcc.Add("abraham.ibarra@sanjacinto.com.mx"); //Opcional

            //Cuerpo del Mensaje
            String nombre = input_Nombre.Value;
            String mensaje = ta_Quejas_Sugerencias.Value;
            if(nombre == ""){
                nombre = "N/A";
            }
            if (mensaje == "")
            {
                Response.Write("<script>window.alert('Escriba un mensaje');</script>");
            }
            else
            {
                mmsg.Body = "Nombre:  " + nombre + "\n\nMensaje:\n\n" + mensaje;
                mmsg.BodyEncoding = System.Text.Encoding.UTF8;
                mmsg.IsBodyHtml = false; //Si no queremos que se envíe como HTML

                //Correo electronico desde la que enviamos el mensaje
                mmsg.From = new System.Net.Mail.MailAddress("comuniksj@sanjacinto.com.mx");


                /*-------------------------CLIENTE DE CORREO----------------------*/

                //Creamos un objeto de cliente de correo
                System.Net.Mail.SmtpClient cliente = new System.Net.Mail.SmtpClient();

                //Hay que crear las credenciales del correo emisor
                cliente.Credentials =
                    new System.Net.NetworkCredential("comuniksj@sanjacinto.com.mx", "Comuniksj.*472");

                //Lo siguiente es obligatorio si enviamos el mensaje desde Gmail

                //cliente.Port = 587;
                //cliente.EnableSsl = true;


                cliente.Host = "smtp.sanjacinto.com.mx"; //Para Gmail "smtp.gmail.com";


                /*-------------------------ENVIO DE CORREO----------------------*/

                try
                {
                    //Enviamos el mensaje      
                    cliente.Send(mmsg);
                    Response.Write("<script>window.alert('El mensaje se envió correctamente');</script>");

                }
                catch (System.Net.Mail.SmtpException ex)
                {
                    //Aquí gestionamos los errores al intentar enviar el correo
                    Response.Write("<script>window.alert('No se pudo enviar su mensaje');</script>");
                }
            }
        }

        protected void Button_Enviar_Click(object sender, EventArgs e)
        {
            EnviarCorreo();
            input_Nombre.Value = "";
            ta_Quejas_Sugerencias.Value = "";
            //Response.Redirect("../ComunikSJ/Quejas_y_sugerencias.aspx");
        }
    }
}