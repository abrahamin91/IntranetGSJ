using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.MuralSJ
{
    public partial class inicio_MuralSJ : System.Web.UI.Page 
    {
        string usuario;
        string contrasena;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button_Inicio_Click_k(object sender, EventArgs e)
        {
            usuario = Request.Form[InputUsuario_k.UniqueID];
            contrasena = Request.Form[InputContrasena_k.UniqueID];
            int credenciales = SignalRTest.Database.General.Monitoreo.obtieneCredendiales_m("login_usuario", usuario, contrasena);
            if(credenciales == 1){
                Session["var_usu"] = usuario;
                Response.Redirect("../MuralSJ/Departamentos_m.aspx");
            }
            else{
                Response.Write("<script>window.alert('No tiene los suficientes privilegios para acceder a la pagina');</script>"); 
            }
        }

        
    }
}