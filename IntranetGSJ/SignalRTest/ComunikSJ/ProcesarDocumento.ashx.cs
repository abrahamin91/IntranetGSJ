using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SignalRTest.ComunikSJ
{
    /// <summary>
    /// Descripción breve de ProcesarDocumento1
    /// </summary>
    public class ProcesarDocumento1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int id_documento = Convert.ToInt32(context.Request.QueryString[0]);
            DataSet documento = SignalRTest.Database.General.Monitoreo.obtiene_doc_nom_intranet("obtener_documento", id_documento);
            byte[] Doc = (byte[])documento.Tables[0].Rows[0]["FileData"];
            string nombre_doc = documento.Tables[0].Rows[0]["nombre_doc"].ToString();


            context.Response.ClearHeaders();
            context.Response.ClearContent();
            context.Response.Buffer = false;
            context.Response.AppendHeader("content-disposition", "inline; filename=" + nombre_doc);
            context.Response.ContentEncoding = System.Text.Encoding.UTF8;
            if (nombre_doc.Contains(".dotx"))
            {
                context.Response.ContentType = "application/msword";
            }
            else if (nombre_doc.Contains(".doc") || nombre_doc.Contains(".docx"))
            {
                context.Response.ContentType = "application/msword";
            }
            else if (nombre_doc.Contains(".xls"))
            {
                context.Response.ContentType = "application/vnd.ms-excel";
            }
            else if (nombre_doc.Contains(".xlsx"))
            {
                context.Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            }
            context.Response.BinaryWrite(Doc);
            context.Response.Flush();
            context.Response.Close();
            context.ApplicationInstance.CompleteRequest();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}