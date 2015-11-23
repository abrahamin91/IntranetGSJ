using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.MuralSJ
{
    public partial class Principal_m : System.Web.UI.Page
    {
        string usuario;
        int dpto;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (string)Session["var_usu"];
            dpto = (int)Session["var_dpto"];
           mUsuarios_m.Visible = false;
           if (usuario == "Admin")
           {
               mUsuarios_m.Visible = true;
           }
        }

        protected void ibSubir_Archivos_m_Click(object sender, ImageClickEventArgs e)
        {
            Session["var_usu"] = usuario;
            Session["var_dpto"] = dpto;
            Response.Redirect("../MuralSJ/Plantillas_m.aspx");
        }

        protected void ibPreview_m_Click(object sender, ImageClickEventArgs e)
        {
            Session["var_usu"] = usuario;
            Session["var_dpto"] = dpto;
            Response.Redirect("../MuralSJ/Administrar_plantillas_m.aspx");
        }
    }
}