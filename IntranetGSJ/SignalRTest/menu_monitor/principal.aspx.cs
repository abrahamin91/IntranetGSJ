using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.menu_monitor
{
    public partial class principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void ibCuajadoPrincipal_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("../cuajado/monitor_cuajado.aspx");
        }

        protected void ibFundidoPrincipal_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../fundido/monitor_fundido.aspx");
        }

        protected void ibEmpaquePrincipal_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../empaque/monitor_empaque.aspx");
        }

        protected void ibPPPrincipal_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../pp/monitor_pp.aspx");
        }
    }
}