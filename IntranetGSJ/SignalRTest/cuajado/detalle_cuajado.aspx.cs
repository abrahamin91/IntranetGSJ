using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRTest.cuajado
{
    public partial class detalle_cuajado : System.Web.UI.Page
    {
      
             private static string semaforo_verde = "../images/semaforo_verde.png";
        private static string semaforo_ambar = "../images/semaforo_amarillo.png";
        private static string semaforo_rojo = "../images/semaforo_rojo.png";

      

        protected void Page_Load(object sender, EventArgs e)
        {
            int id_cuajada = Convert.ToInt16(Request.QueryString["val"]);

            DataSet registrosMonitoreo = SignalRTest.Database.General.Monitoreo.obtieneDSRegistros_Seleccionado("Web_Sel_Registro_clic", id_cuajada, 1);


            //string id_cuajada = registrosMonitoreo.Tables[0].Rows[0]["id_cuajada"].ToString();
            string num_tina = registrosMonitoreo.Tables[0].Rows[0]["num_tina"].ToString();
            string fecha = registrosMonitoreo.Tables[0].Rows[0]["fecha"].ToString();
            string silo = registrosMonitoreo.Tables[0].Rows[0]["silo"].ToString();
            string lote = registrosMonitoreo.Tables[0].Rows[0]["lote"].ToString();
            string familia = registrosMonitoreo.Tables[0].Rows[0]["familia"].ToString();

            string s_porcen_grasa_leche = registrosMonitoreo.Tables[0].Rows[0]["porcen_grasa_leche"].ToString();
            string ph_leche = registrosMonitoreo.Tables[0].Rows[0]["ph_leche"].ToString();
            string porce_proteina = registrosMonitoreo.Tables[0].Rows[0]["porce_proteina"].ToString();
            string porce_grasa_crema = registrosMonitoreo.Tables[0].Rows[0]["porce_grasa_crema"].ToString();
            string porce_grasa_leche_tina = registrosMonitoreo.Tables[0].Rows[0]["porce_grasa_leche_tina"].ToString();
            string porce_prot_tina = registrosMonitoreo.Tables[0].Rows[0]["porce_prot_tina"].ToString();
            string Temp_adi_cuajo = registrosMonitoreo.Tables[0].Rows[0]["Temp_adi_cuajo"].ToString();
            string ph_pasta_coag = registrosMonitoreo.Tables[0].Rows[0]["ph_pasta_coag"].ToString();
            string temp_cocido = registrosMonitoreo.Tables[0].Rows[0]["temp_cocido"].ToString();
            string ph_desuerado = registrosMonitoreo.Tables[0].Rows[0]["ph_desuerado"].ToString();
            string solidos_totales = registrosMonitoreo.Tables[0].Rows[0]["solidos_totales"].ToString();
            string porcentaje_humedad = registrosMonitoreo.Tables[0].Rows[0]["porcentaje_humedad"].ToString();

            LNumTina.Text = num_tina;
            LSilo.Text=silo;
            LLoteF.Text = lote;
            LFamiliaF.Text = familia;
            
            Lgrasaleche.Text = s_porcen_grasa_leche;
            Lph_leche.Text = ph_leche;
            Lproteina.Text = porce_proteina;
            Lgcrema.Text = porce_grasa_crema;
            Lgtina.Text = porce_grasa_leche_tina;
            LTempF.Text = porce_prot_tina;
            LTemCuajo.Text = Temp_adi_cuajo;
            LpHPasta.Text = ph_pasta_coag;
            LTemCocido.Text = temp_cocido;
            LpHDesue.Text = ph_desuerado;
            LSolidTot.Text = solidos_totales;
            LHumedad.Text = porcentaje_humedad;

            #region Parametrizado de Valores

            string subsFamilia = familia.Substring(0, 4);
            
            float float_porcentaje_humedad = 0;
            if (!(porcentaje_humedad == ""))
            {
                float_porcentaje_humedad = float.Parse(porcentaje_humedad);
            }
            float porcen_grasa_leche = 0;
            if (!(s_porcen_grasa_leche == ""))
            {
                porcen_grasa_leche = float.Parse(s_porcen_grasa_leche);
            }
            float float_ph_leche = 0;
            if (!(ph_leche == ""))
            {
                float_ph_leche = float.Parse(ph_leche);
            }
            //Parametrizar el Porcentaje Proteina
            float float_porce_protei = 0;
            if (!(porce_proteina == ""))
            {
                float_porce_protei = float.Parse(porce_proteina);
            }
            //Parametrizar el Porcentaje Grasa Crema
            float float_porce_grasa_crema = 0;
            if (!(porce_grasa_crema == ""))
            {
                float_porce_grasa_crema = float.Parse(porce_grasa_crema);
            }
            //Parametrizar el Porcentaje Grasa Leche Tina
            float float_porce_grasa_leche_tina = 0;
            if (!(porce_grasa_leche_tina == ""))
            {
                float_porce_grasa_leche_tina = float.Parse(porce_grasa_leche_tina);
            }
            //Parametrizar el Porcentaje Proteina Tina
            float float_porce_prot_tina = 0;
            if (!(porce_prot_tina == ""))
            {
                float_porce_prot_tina = float.Parse(porce_prot_tina);
            }
            //Parametrizar Temperatura de adicion cuajo
            float float_Temp_adi_cuajo = 0;
            if (!(Temp_adi_cuajo == ""))
            {
                float_Temp_adi_cuajo = float.Parse(Temp_adi_cuajo);
            }
            //Parametrizar pH pasta coagulacion
            float float_ph_pasta_coag = 0;
            if (!(ph_pasta_coag == ""))
            {
                float_ph_pasta_coag = float.Parse(ph_pasta_coag);
            }
            //Parametrizar Temperatura Cocido
            float float_temp_cocido = 0;
            if (!(temp_cocido == ""))
            {
                float_temp_cocido = float.Parse(temp_cocido);
            }
            //Parametrizar pH Desuerado
            float float_ph_desuerado = 0;
            if (!(ph_desuerado == ""))
            {
                float_ph_desuerado = float.Parse(ph_desuerado);
            }
            //Parametrizar Solidos totales
            float float_solidos_totales = 0;
            if (!(solidos_totales == ""))
            {
                float_solidos_totales = float.Parse(solidos_totales);
            }
            switch (subsFamilia)
            {
                case "CJ01":
                    
                    if ((porcen_grasa_leche < 3.3 && porcen_grasa_leche > 0) || (porcen_grasa_leche > 3.5) )
                    {
                        Img_grasaleche.ImageUrl = semaforo_rojo;
                    }

                    if ((float_ph_leche < 6.6 && float_ph_leche > 0) || float_ph_leche > 6.8)
                    {
                        Img_phleche.ImageUrl = semaforo_rojo;
                    }

                    if (float_porce_protei < 2.8)
                    {
                        Img_proteina.ImageUrl = semaforo_rojo;
                    }

                    if (float_porce_grasa_crema > 55)
                    {
                        if ((float_porce_grasa_crema < 69 && float_porce_grasa_crema > 0) || (float_porce_grasa_crema > 72))
                        {
                            Img_grasacrema.ImageUrl = semaforo_rojo;
                        }
                    }
                    else
                    {
                        if ((float_porce_grasa_crema < 40 && float_porce_grasa_crema > 0) || (float_porce_grasa_crema > 43))
                        {
                            Img_grasacrema.ImageUrl = semaforo_rojo;
                        }
                    }

                    if (float_porce_grasa_leche_tina !=0)
                    {
                        Img_grasalechetina.ImageUrl = semaforo_rojo;
                    }
                   
                     if ((float_porce_prot_tina < 2.9 && float_porce_prot_tina > 0))
                    {
                        Img_prottina.ImageUrl = semaforo_rojo;
                    }
            
                    if ((float_Temp_adi_cuajo < 30 && float_Temp_adi_cuajo > 0) || (float_Temp_adi_cuajo > 33))
                    {
                       Img_adicuajo.ImageUrl = semaforo_rojo;
                    }
                    if ((float_ph_pasta_coag < 6.4 && float_ph_pasta_coag > 0) || (float_ph_pasta_coag > 6.6))
                    {
                        Img_pasta.ImageUrl = semaforo_rojo;
                    }
                    if ((float_temp_cocido < 38 && float_temp_cocido > 0) || (float_temp_cocido > 38.6))
                    {
                        Img_cocido.ImageUrl = semaforo_rojo;
                    }
                    if ((float_ph_desuerado < 5.8 && float_ph_desuerado > 0) || (float_ph_desuerado > 6.1))
                    {
                        Img_phdesue.ImageUrl = semaforo_rojo;
                    }
                    if ((float_solidos_totales < 6 && float_solidos_totales > 0) || (float_solidos_totales > 6.5))
                    {
                        Img_solidos.ImageUrl = semaforo_rojo;
                    }
                    if ((float_porcentaje_humedad < 57 && float_porcentaje_humedad > 0) || (float_porcentaje_humedad > 60))
                    {
                        Img_humedad.ImageUrl = semaforo_rojo;
                    }

                    break;


                case "CJ02":
                    if ((porcen_grasa_leche < 3.3 && porcen_grasa_leche > 0) || (porcen_grasa_leche > 3.5) )
                    {
                        Img_grasaleche.ImageUrl = semaforo_rojo;
                    }

                    if ((float_ph_leche < 6.6 && float_ph_leche > 0) || float_ph_leche > 6.8)
                    {
                        Img_phleche.ImageUrl = semaforo_rojo;
                    }

                    if (float_porce_protei < 2.8)
                    {
                        Img_proteina.ImageUrl = semaforo_rojo;
                    }

                    if (float_porce_grasa_crema > 55)
                    {
                        if ((float_porce_grasa_crema < 69 && float_porce_grasa_crema > 0) || (float_porce_grasa_crema > 72))
                        {
                            Img_grasacrema.ImageUrl = semaforo_rojo;
                        }
                    }
                    else {
                        if ((float_porce_grasa_crema < 40 && float_porce_grasa_crema > 0) || (float_porce_grasa_crema > 43))
                        {
                            Img_grasacrema.ImageUrl = semaforo_rojo;
                        }
                    }

                    if (float_porce_grasa_leche_tina !=0)
                    {
                        Img_grasalechetina.ImageUrl = semaforo_rojo;
                    }
                   
                     if ((float_porce_prot_tina < 2.9 && float_porce_prot_tina > 0))
                    {
                        Img_prottina.ImageUrl = semaforo_rojo;
                    }
            
                    if ((float_Temp_adi_cuajo < 38 && float_Temp_adi_cuajo > 0) || (float_Temp_adi_cuajo > 38))////Revisar if  *************
                    {
                       Img_adicuajo.ImageUrl = semaforo_rojo;
                    }
                    if ((float_ph_pasta_coag < 6.4 && float_ph_pasta_coag > 0) || (float_ph_pasta_coag > 6.6))
                    {
                        Img_pasta.ImageUrl = semaforo_rojo;
                    }
                    if ((float_temp_cocido < 42 && float_temp_cocido > 0) || (float_temp_cocido > 42))////Revisar if  *************
                    {
                        Img_cocido.ImageUrl = semaforo_rojo;
                    }
                    if ((float_ph_desuerado < 5.2 && float_ph_desuerado > 0) || (float_ph_desuerado > 5.35))
                    {
                        Img_phdesue.ImageUrl = semaforo_rojo;
                    }
                    if ((float_solidos_totales < 6 && float_solidos_totales > 0) || (float_solidos_totales > 6.5))
                    {
                        Img_solidos.ImageUrl = semaforo_rojo;
                    }
                    if ((float_porcentaje_humedad < 46 && float_porcentaje_humedad > 0) || (float_porcentaje_humedad > 50))
                    {
                        Img_humedad.ImageUrl = semaforo_rojo;
                    }

                    break;
               
                default:
                    break;

            }


            #endregion




        }
    }
}