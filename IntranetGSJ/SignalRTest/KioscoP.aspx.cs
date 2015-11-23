using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest
{
    public partial class MuralSJP : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public string  SaveDropzoneJsUploadedFiles()
        {
            Response.Write("<script>window.alert('Entro Save');</script>"); 
            bool isSavedSuccessfully = false;

            foreach (string fileName in Request.Files)
            {
                HttpPostedFile file = Request.Files[fileName];

                //You can Save the file content here

                isSavedSuccessfully = true;
            }
            return "hola";
        }
    }

}