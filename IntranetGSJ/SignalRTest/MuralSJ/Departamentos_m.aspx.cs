using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.MuralSJ
{
    public partial class Departamentos : System.Web.UI.Page
    {
        string usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (string)Session["var_usu"];
            //lbUsuario_m.Text = usuario;
            ibRecurosH_m.Enabled = false;
            ibcalidad_m.Enabled = false;

            mUsuarios_m.Visible = false;
            if (usuario == "Admin")
            {
                mUsuarios_m.Visible = true;
            }

            DataSet  permisos = SignalRTest.Database.General.Monitoreo.obtieneDptos_m("obtener_deptos", usuario);


            if (permisos.Tables.Count > 0)
            {
                for (int i = 0; i <= permisos.Tables[0].Rows.Count - 1; i++)
                {
                    int id_deptos = Convert.ToInt32(permisos.Tables[0].Rows[i]["id_departamento"].ToString());
                    if (id_deptos == 1)
                    {
                        ibRecurosH_m.Enabled = true;
                    }
                    else if (id_deptos == 2)
                    {
                        ibcalidad_m.Enabled = true;
                    }
                }
            }
        }

        protected void ibRecurosH_m_Click(object sender, ImageClickEventArgs e)
        {
            Session["var_dpto"] = 1;
            Response.Redirect("../MuralSJ/Principal_m.aspx");
        }

        protected void ibcalidad_m_Click(object sender, ImageClickEventArgs e)
        {
            Session["var_dpto"] = 2;
            Response.Redirect("../MuralSJ/Principal_m.aspx");
        }
    }
}