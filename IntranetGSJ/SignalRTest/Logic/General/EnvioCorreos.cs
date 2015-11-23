using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Configuration;
using System.Net.Mime;

namespace SignalRTest.Logic.General
{
    public class EnvioCorreos
    {
        //Obtiene un valor de los AppSettings
        public static string regresaDeAppSettings(string valor)
        {
            return ConfigurationManager.AppSettings[valor].ToString();
        }

        //Envía un correo con los datos proporcionados
        public static string enviaCorreo(string destinatario, string asunto, string contenido)
        {
            string from = regresaDeAppSettings("correo");
            string subject = asunto.Trim();

            String mensaje = contenido;
            string body = mensaje;
            MailMessage message;
            SmtpClient smtpclient;

            try
            {
                message = new MailMessage(from, destinatario, subject, body);
                message.BodyEncoding = System.Text.Encoding.UTF8;
                message.SubjectEncoding = System.Text.Encoding.UTF8;
                message.IsBodyHtml = true;

                smtpclient = new SmtpClient(regresaDeAppSettings("nombreServidor"), Convert.ToInt32(regresaDeAppSettings("puertoDeEnvio")));

                smtpclient.Credentials = new System.Net.NetworkCredential(regresaDeAppSettings("correo"), regresaDeAppSettings("contrasena"));
                smtpclient.Send(message);
                message.Dispose();

                return "true";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        //Envía un correo con los datos proporcionados
        public static string enviaCorreoMensajeCel(string destinatario, string asunto, string contenido)
        {
            string from = regresaDeAppSettings("correoCel");
            string subject = asunto.Trim();

            String mensaje = contenido;
            string body = mensaje;
            MailMessage message;
            SmtpClient smtpclient;

            try
            {
                message = new MailMessage(from, destinatario, subject, body);                
                message.IsBodyHtml = false;

                smtpclient = new SmtpClient(regresaDeAppSettings("nombreServidorCel"), Convert.ToInt32(regresaDeAppSettings("puertoDeEnvioCel")));

                smtpclient.Credentials = new System.Net.NetworkCredential(regresaDeAppSettings("correoCel"), regresaDeAppSettings("contrasenaCel"));
                smtpclient.Send(message);
                message.Dispose();

                return "true";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        //Envía un correo con los datos proporcionados y adjuntos
        public static bool enviaCorreoConAdjunto(string destinatario, string asunto, string contenido, string rutaAdjunto)
        {
            //string from = "sistema@neurologia.org.mx";
            string from = regresaDeAppSettings("correo");
            string subject = asunto.Trim();

            String mensaje = contenido;
            string body = mensaje;

            MailMessage message = new MailMessage(from, destinatario, subject, body);

            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.SubjectEncoding = System.Text.Encoding.UTF8;
            message.IsBodyHtml = true;

            // Create  the file attachment for this e-mail message.
            Attachment data = new Attachment(rutaAdjunto, MediaTypeNames.Application.Octet);
            // Add time stamp information for the file.
            ContentDisposition disposition = data.ContentDisposition;
            disposition.CreationDate = System.IO.File.GetCreationTime(rutaAdjunto);
            disposition.ModificationDate = System.IO.File.GetLastWriteTime(rutaAdjunto);
            disposition.ReadDate = System.IO.File.GetLastAccessTime(rutaAdjunto);
            // Add the file attachment to this e-mail message.
            message.Attachments.Add(data);

            SmtpClient smtpclient = new SmtpClient(regresaDeAppSettings("nombreServidor"), Convert.ToInt32(regresaDeAppSettings("puertoDeEnvio")));

            smtpclient.Credentials = new System.Net.NetworkCredential(regresaDeAppSettings("correo"), regresaDeAppSettings("contrasena"));

            bool varEnvio = false;
            try
            {
                smtpclient.Send(message);
                varEnvio = true;
                message.Dispose();
            }
            catch (Exception)
            {
                // mensaje de prueba en caso de fallo de envio
                Logic.General.ErrorHandler.throwError("Error al enviar correo electrónico");
                return false;
            }

            if (varEnvio == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        //Envía un correo con los datos proporcionados y adjuntos
        public static bool enviaCorreoConAdjunto2(string destinatario, string asunto, string contenido, string rutaAdjunto, string rutaAdjunto2)
        {
            //string from = "sistema@neurologia.org.mx";
            string from = regresaDeAppSettings("correo");
            string subject = asunto.Trim();
            String mensaje = contenido;
            string body = mensaje;

            MailMessage message = new MailMessage(from, destinatario, subject, body);

            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.SubjectEncoding = System.Text.Encoding.UTF8;
            message.IsBodyHtml = true;

            // Create  the file attachment for this e-mail message.
            Attachment data = new Attachment(rutaAdjunto, MediaTypeNames.Application.Octet);
            // Add time stamp information for the file.
            ContentDisposition disposition = data.ContentDisposition;
            disposition.CreationDate = System.IO.File.GetCreationTime(rutaAdjunto);
            disposition.ModificationDate = System.IO.File.GetLastWriteTime(rutaAdjunto);
            disposition.ReadDate = System.IO.File.GetLastAccessTime(rutaAdjunto);
            // Add the file attachment to this e-mail message.
            message.Attachments.Add(data);

            // Create  the file attachment for this e-mail message.
            Attachment data2 = new Attachment(rutaAdjunto2, MediaTypeNames.Application.Octet);
            // Add time stamp information for the file.
            ContentDisposition disposition2 = data2.ContentDisposition;
            disposition2.CreationDate = System.IO.File.GetCreationTime(rutaAdjunto2);
            disposition2.ModificationDate = System.IO.File.GetLastWriteTime(rutaAdjunto2);
            disposition2.ReadDate = System.IO.File.GetLastAccessTime(rutaAdjunto2);
            // Add the file attachment to this e-mail message.
            message.Attachments.Add(data2);

            SmtpClient smtpclient = new SmtpClient(regresaDeAppSettings("nombreServidor"), Convert.ToInt32(regresaDeAppSettings("puertoDeEnvio")));

            smtpclient.Credentials = new System.Net.NetworkCredential(regresaDeAppSettings("correo"), regresaDeAppSettings("contrasena"));

            bool varEnvio = false;
            try
            {
                smtpclient.Send(message);
                varEnvio = true;
                message.Dispose();
            }
            catch (Exception)
            {
                // mensaje de prueba en caso de fallo de envio
                Logic.General.ErrorHandler.throwError("Error al enviar correo electrónico");
                return false;
            }

            if (varEnvio == true)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}