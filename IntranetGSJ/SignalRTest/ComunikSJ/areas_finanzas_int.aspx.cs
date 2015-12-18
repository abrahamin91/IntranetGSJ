using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.ComunikSJ
{
    public partial class Departamentos_int : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
         protected void ibContabilidad_intranet_Click(object sender, ImageClickEventArgs e)
        {

        

            Response.Redirect("../ComunikSJ/Formatos_Contabilidad.aspx");
        }

        protected void ibcxc_intranet_Click(object sender, ImageClickEventArgs e)
        {


            Response.Redirect("../ComunikSJ/Formatos_CXC.aspx");
        }

        protected void ibcxp_intranet_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../ComunikSJ/Formatos_CXP.aspx");
        }
    }
}