using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SignalRTest.MuralSJ
{
    /// <summary>
    /// Descripción breve de ProcesarImage
    /// </summary>
    public class ProcesarImage : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            int idimg = Convert.ToInt32(context.Request.QueryString[0]);
            byte[] Img = SignalRTest.Database.General.Monitoreo.obtieneImagen_m("obtener_imagen", idimg);
            context.Response.ContentType = "image/jpg";
            context.Response.BinaryWrite(Img);

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