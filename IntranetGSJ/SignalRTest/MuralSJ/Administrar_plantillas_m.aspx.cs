using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.MuralSJ
{
    public partial class Administrar_plantillas : System.Web.UI.Page
    {
        string usuario;
        int dpto;
        DataTable dt = new DataTable();
        DataTable dt_idimg = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = (string)Session["var_usu"];
            dpto = (int)Session["var_dpto"];
            mUsuarios_m.Visible = false;
            //Mostrar Menu Usuarios para Administrador
            if (usuario == "Admin")
            {
                mUsuarios_m.Visible = true;
            }
            DataSet registrosPlantillas = SignalRTest.Database.General.Monitoreo.obtienePlantillas_m("obtener_plantillas", usuario, dpto);

            /*
            if (registrosPlantillas.Tables.Count > 0)
            {
                for (int i = 0; i <= registrosPlantillas.Tables[0].Rows.Count - 1; i++)
                {

                    string id_plantilla = registrosPlantillas.Tables[0].Rows[i]["idplantilla"].ToString();
                    string fecha = registrosPlantillas.Tables[0].Rows[i]["fecha"].ToString();
                    string duracion = registrosPlantillas.Tables[0].Rows[i]["duracion"].ToString();
                    string transicion = registrosPlantillas.Tables[0].Rows[i]["transicion"].ToString();
                    string idimagen = registrosPlantillas.Tables[0].Rows[i]["idimagen"].ToString();
                    string idvideo = registrosPlantillas.Tables[0].Rows[i]["idvideo"].ToString();

                }
            }
            
            GridView1.DataSource = registrosPlantillas;
            GridView1.DataBind();*/


            
            dt.Columns.AddRange(new DataColumn[4] { 
                                new DataColumn("Id_Plantilla", typeof(int)),
                                new DataColumn("Duracion", typeof(string)),
                                new DataColumn("Transicion",typeof(string)),
                                new DataColumn("idimagen",typeof(string))});
            

            if (registrosPlantillas.Tables.Count > 0)
            {
                for (int i = 0; i <= registrosPlantillas.Tables[0].Rows.Count - 1; i++)
                {

                            
                            string id_plantilla = registrosPlantillas.Tables[0].Rows[i]["idplantilla"].ToString();
                            string duracion = registrosPlantillas.Tables[0].Rows[i]["duracion"].ToString();
                            string transicion = registrosPlantillas.Tables[0].Rows[i]["transicion"].ToString();
                           string idimg = registrosPlantillas.Tables[0].Rows[i]["idimagen"].ToString();
                            dt.Rows.Add(id_plantilla, duracion, transicion, idimg);
                }
            }
            

            //GridView2.DataSource = dt;
            //GridView2.DataBind();
            gvPlantilla.DataSource = dt;
            gvPlantilla.DataBind();
            
        }
        protected void btnRetrieveImage_Click(object sender, EventArgs e)
        {

          // Image1.ImageUrl = "ProcesarImage.ashx";

        }

        protected void btnRetrieveVideo_Click(object sender, EventArgs e)
        {
            //Video1.Attributes["scr"] = "../MuralSJ/ProcesaVideo.ashx";
        }


        //Cargar, Editar, Actualizar Gridview
        protected void gvPlantilla_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvPlantilla.PageIndex = e.NewPageIndex;
            listarPlantillas();
        }

        protected void gvPlantilla_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPlantilla.EditIndex = -1;
            listarPlantillas();
        }

        protected void gvPlantilla_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPlantilla.EditIndex = e.NewEditIndex;
            listarPlantillas();
        }

        protected void gvPlantilla_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            var nintcodigo = gvPlantilla.DataKeys[e.RowIndex].Value;
            TextBox txtduracion = (TextBox)gvPlantilla.Rows[e.RowIndex].FindControl("txtduracion");
            TextBox txt_transicion = (TextBox)gvPlantilla.Rows[e.RowIndex].FindControl("txt_transicion");
            if (txtduracion.Text != "" && txt_transicion.Text != "")
            {
                gvPlantilla.EditIndex = -1;
                listarPlantillas();

            }
        }
        protected void listarPlantillas()
        {
            DataSet registrosPlantillas = SignalRTest.Database.General.Monitoreo.obtienePlantillas_m("obtener_plantillas", usuario, dpto);
            gvPlantilla.DataSource = dt;
            gvPlantilla.DataBind();
        }

        protected void ibUTerminar_m_Click(object sender, ImageClickEventArgs e)
        {
            Session["var_usu"] = usuario;
            Session["var_dpto"] = dpto;
            Response.Redirect("../MuralSJ/Departamentos_k.aspx");
        }

        protected void ibPreview_m_Click(object sender, ImageClickEventArgs e)
        {
            Session["var_usu"] = usuario;
            Session["var_dpto"] = dpto;
            Response.Redirect("../MuralSJ/Preview.aspx");
        }
    }
}