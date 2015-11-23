using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.MuralSJ
{
    public partial class Prueba : System.Web.UI.Page
    {
        HttpPostedFile file;
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (string s in Request.Files)
            {

                file = Request.Files[s];
            }
            
        }

        protected void z_btnAceptar_Click(object sender, EventArgs e)
        {
            z_lblMensaje.Text = "Usted hizo Click";
        }

        protected void Button_Prueba_Click_k(HttpPostedFile archivo)
        {
            
            file = archivo;
            int fileSizeInBytes = file.ContentLength;
            string fileName = Request.Headers["X-File-Name"];
            string fileExtension = "";

            if (!string.IsNullOrEmpty(fileName))
                fileExtension = Path.GetExtension(fileName);

            // IMPORTANT! Make sure to validate uploaded file contents, size, etc. to prevent scripts being uploaded into your web app directory
            string savedFileName = Path.Combine(@"C:\Temp\", Guid.NewGuid().ToString() + fileExtension);
            file.SaveAs(savedFileName);
        }
        public void Cargar(object sender, EventArgs e)
        {
            hn_SimpeFileUploader obj = new hn_SimpeFileUploader();
            string met = obj.ToString();
        }
        protected string obtener_rv(int idv)
        {
            string ruta_vid = SignalRTest.Database.General.Monitoreo.obtieneRutaVideo_m("obtener_video_r", idv);
            ruta_vid = ruta_vid.Replace("~", "..");
            return ruta_vid;
        }
    }
}