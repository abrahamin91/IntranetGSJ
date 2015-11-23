using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SignalRTest.MuralSJ
{
    public partial class Plantillas_m : System.Web.UI.Page
    {
        string usuario;
        int dpto;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (string)Session["var_usu"];
            //lbUsuario_m.Text = usuario;
            dpto = (int)Session["var_dpto"];
            //videoTag.Attributes["src"] = "ProcesaVideo.ashx";
            mUsuarios_m.Visible = false;
            if (usuario == "Admin")
            {
                mUsuarios_m.Visible = true;
            }
        }

        

        protected void bt_Subir_Click(object sender, EventArgs e)
        {
            if (fileUpload1.PostedFile.FileName == "")
            {
                Response.Write("<script>window.alert('No selecciono ningu archivo');</script>");
            }
            else
            {
                //obtiene tipo de imagen
                string tipo = (String)fileUpload1.PostedFile.ContentType;
                bool resp;
                resp = tipo.Contains("image");
                if (resp == true)
                {
                    //obtiene el nombre de la imagen
                    string filename = Path.GetFileName(fileUpload1.FileName);
                    fileUpload1.SaveAs(Server.MapPath("~\\temp_imagenes\\") + filename);
                    //string path2 = "~\\temp_imagenes\\" + filename;
                    string path = Server.MapPath("~\\temp_imagenes\\") + filename;
                    SignalRTest.Database.General.Monitoreo.cargaImagen_m("Cargar_imagen",path, tipo, usuario, dpto);
                    System.IO.File.Delete(path);
                }
                else 
                {
                    //obtiene el nombre del video
                    string filename = Path.GetFileName(fileUpload1.FileName);
                    fileUpload1.SaveAs(Server.MapPath("~\\Videos\\") + filename);
                    string path = "~\\Videos\\";
                    string path2 = path + filename;
                    SignalRTest.Database.General.Monitoreo.cargaVideo_m("cargar_video", path2, tipo, usuario, dpto);
                }
                Session["var_usu"] = usuario;
                Session["var_dpto"] = dpto;
                Response.Redirect("../MuralSJ/Administrar_plantillas_m.aspx");
            }
        }      
    }
}