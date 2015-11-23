using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SignalRTest.MuralSJ
{
    /// <summary>
    /// Descripción breve de ProcesaVideo
    /// </summary>
    public class ProcesaVideo : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {

            byte[] video = SignalRTest.Database.General.Monitoreo.obtieneVideo_m("obtener_video", 1);
            context.Response.ContentType = "video/mp4";
            context.Response.BinaryWrite(video);
            context.Response.End();
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