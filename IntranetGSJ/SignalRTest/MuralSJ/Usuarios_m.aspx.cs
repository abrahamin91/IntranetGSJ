using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.MuralSJ
{
    public partial class Usuarios_m : System.Web.UI.Page
    {
        string usuario;
        string contrasena;
        int depto;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (string)Session["var_usu"];
            mUsuarios_m.Visible = false;
            if (usuario == "Admin")
            {
                mUsuarios_m.Visible = true;
            }
            InputContrasenaN_m.Disabled = true;
            selectDepto_m.Disabled = true;
            ibUEditar_m.Enabled = false;
            ibUEliminar_m.Enabled = false;
            ibUGuardar_m.Enabled = false;
        }

        protected void ibUBuscar_m_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void ibUNUevo_m_Click(object sender, ImageClickEventArgs e)
        {
            InputContrasenaN_m.Disabled = false;
            selectDepto_m.Disabled = false;
            ibUGuardar_m.Enabled = true;
        }

        protected void ibUEditar_m_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ibUEliminar_m_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ibUGuardar_m_Click(object sender, ImageClickEventArgs e)
        {
            usuario = Request.Form[InputUsuarioN_m.UniqueID];
            contrasena = Request.Form[InputContrasenaN_m.UniqueID];
            depto = Convert.ToInt32(selectDepto_m.Value);
            if ((depto == 0) || (usuario == "") || (contrasena == ""))
            {
                Response.Write("<script>window.alert('Error: Usuario Vacio, Contraseña Vacia, No Selecciono un Departarmento');</script>");
            }
            else
            {
                int usuariocreado = SignalRTest.Database.General.Monitoreo.nuevo_usuario_m("nuevo_usuario", usuario, contrasena, depto);
                if (usuariocreado == 1)
                {
                    Response.Write("<script>window.alert('Usuario Creado Exitosamente');</script>");
                }
                else
                {
                    Response.Write("<script>window.alert('Este usuario ya Existe');</script>");
                }
            }
            InputUsuarioN_m.Value = "";
            InputContrasenaN_m.Value = "";
            selectDepto_m.SelectedIndex = 0;
            InputContrasenaN_m.Disabled = true;
            selectDepto_m.Disabled = true;
            ibUEditar_m.Enabled = false;
            ibUEliminar_m.Enabled = false;
            ibUGuardar_m.Enabled = false;
        }
    }
}