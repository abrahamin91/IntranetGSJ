using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Net;
using System.Collections.Specialized;
using System.Text;
using System.Web.UI;

namespace SignalRTest.Logic.General
{
    public class Monitoreo
    {
        private static string semaforo_verde = "<img src=\"../images/semaforo_verde.png\">";
        private static string semaforo_ambar = "<img src=\"../images/semaforo_amarillo.png\">";
        private static string semaforo_rojo = "<img src=\"../images/semaforo_rojo.png\">";

        private static string htmlImagenSemaforo = "";

        
       


        //Regresa un dataset con el útimo registro de la tabla Monitoreo
        public static DataSet obtieneDatasetUltimoRegistroMonitoreo()
        {
            string Querystring = "EXEC sp_obtieneUltimoRegistroMonitoreo";
            return Database.General.Conexion.creaDataSet(Querystring);
        }

        //Regresa un dataset con todos los registros de la tabla Monitoreo
        public static DataSet obtieneDatasetTodosRegistrosMonitoreo()
        {
            string Querystring = "EXEC sp_obtieneTodosRegistrosMonitoreo";
            return Database.General.Conexion.creaDataSet(Querystring);
        }

        public static int divi = 0;

        public static string imprimeTodo(int modulo)  // 1 Cuajado, 2 Fundido, 3 PP, 4 Empaque
        {
            DateTime today = DateTime.Today;

            DataSet registrosMonitoreo = SignalRTest.Database.General.Monitoreo.obtieneDSRegistros("Web_Sel_Registros", today.ToString("yyyy/MM/dd"), today.ToString("yyyy/MM/dd"), modulo);

            string divRegistro = "";
            divi = 0;

            if (registrosMonitoreo.Tables.Count > 0 & modulo==1)
            {
                for (int i = 0; i <= registrosMonitoreo.Tables[0].Rows.Count - 1; i++)
                {

                    htmlImagenSemaforo = semaforo_verde;

                    string id_cuajada = registrosMonitoreo.Tables[0].Rows[i]["id_cuajada"].ToString();
                    string num_tina = registrosMonitoreo.Tables[0].Rows[i]["num_tina"].ToString();
                    string fecha = registrosMonitoreo.Tables[0].Rows[i]["fecha"].ToString();
                    string silo = registrosMonitoreo.Tables[0].Rows[i]["silo"].ToString();
                    string lote = registrosMonitoreo.Tables[0].Rows[i]["lote"].ToString();
                    string familia = registrosMonitoreo.Tables[0].Rows[i]["familia"].ToString();

                    string s_porcen_grasa_leche = registrosMonitoreo.Tables[0].Rows[i]["porcen_grasa_leche"].ToString();
                    string ph_leche = registrosMonitoreo.Tables[0].Rows[i]["ph_leche"].ToString();
                    string porce_proteina = registrosMonitoreo.Tables[0].Rows[i]["porce_proteina"].ToString();
                    string porce_grasa_crema = registrosMonitoreo.Tables[0].Rows[i]["porce_grasa_crema"].ToString();
                    string porce_grasa_leche_tina = registrosMonitoreo.Tables[0].Rows[i]["porce_grasa_leche_tina"].ToString();
                    string porce_prot_tina = registrosMonitoreo.Tables[0].Rows[i]["porce_prot_tina"].ToString();
                    string Temp_adi_cuajo = registrosMonitoreo.Tables[0].Rows[i]["Temp_adi_cuajo"].ToString();
                    string ph_pasta_coag = registrosMonitoreo.Tables[0].Rows[i]["ph_pasta_coag"].ToString();
                    string temp_cocido = registrosMonitoreo.Tables[0].Rows[i]["temp_cocido"].ToString();
                    string ph_desuerado = registrosMonitoreo.Tables[0].Rows[i]["ph_desuerado"].ToString();
                    string solidos_totales = registrosMonitoreo.Tables[0].Rows[i]["solidos_totales"].ToString();
                    string porcentaje_humedad = registrosMonitoreo.Tables[0].Rows[i]["porcentaje_humedad"].ToString();

                    DataRow lastrow = registrosMonitoreo.Tables[0].Rows[registrosMonitoreo.Tables[0].Rows.Count - 1];

                    if (lastrow != null)
                    {
                        DataRow actualrow = registrosMonitoreo.Tables[0].Rows[i];

                        if (actualrow != lastrow)
                        {

                            #region Parametrizado de Valores
                            //Parametrizar el porcentaje grasa leche
                            float porcen_grasa_leche = 0;
                            if (!(s_porcen_grasa_leche == ""))
                            {
                                porcen_grasa_leche = float.Parse(s_porcen_grasa_leche);
                            }

                            if (porcen_grasa_leche < 5 && porcen_grasa_leche > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                           
                            else if (porcen_grasa_leche > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar el PH leche
                            float float_ph_leche = 0;
                            if (!(ph_leche == ""))
                            {
                                float_ph_leche = float.Parse(ph_leche);
                            }

                            if (float_ph_leche < 5 && float_ph_leche > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_ph_leche > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar el Porcentaje Proteina
                            float float_porce_protei = 0;
                            if (!(porce_proteina == ""))
                            {
                                float_porce_protei = float.Parse(porce_proteina);
                            }

                            if (float_porce_protei < 5 && float_porce_protei > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_porce_protei > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar el Porcentaje Grasa Crema
                            float float_porce_grasa_crema = 0;
                            if (!(porce_grasa_crema == ""))
                            {
                                float_porce_grasa_crema = float.Parse(porce_grasa_crema);
                            }

                            if (float_porce_grasa_crema < 5 && float_porce_grasa_crema > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_porce_grasa_crema > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar el Porcentaje Grasa Leche Tina
                            float float_porce_grasa_leche_tina = 0;
                            if (!(porce_grasa_leche_tina == ""))
                            {
                                float_porce_grasa_leche_tina = float.Parse(porce_grasa_leche_tina);
                            }

                            if (float_porce_grasa_leche_tina < 5 && float_porce_grasa_leche_tina > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_porce_grasa_leche_tina > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar el Porcentaje Proteina Tina
                            float float_porce_prot_tina = 0;
                            if (!(porce_prot_tina == ""))
                            {
                                float_porce_prot_tina = float.Parse(porce_prot_tina);
                            }

                            if (float_porce_prot_tina < 5 && float_porce_prot_tina > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_porce_prot_tina > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar Temperatura de adicion cuajo
                            float float_Temp_adi_cuajo = 0;
                            if (!(Temp_adi_cuajo == ""))
                            {
                                float_Temp_adi_cuajo = float.Parse(Temp_adi_cuajo);
                            }

                            if (float_Temp_adi_cuajo < 5 && float_Temp_adi_cuajo > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_Temp_adi_cuajo > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar pH pasta coagulacion
                            float float_ph_pasta_coag = 0;
                            if (!(ph_pasta_coag == ""))
                            {
                                float_ph_pasta_coag = float.Parse(ph_pasta_coag);
                            }

                            if (float_ph_pasta_coag < 5 && float_ph_pasta_coag > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_ph_pasta_coag > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar Temperatura Cocido
                            float float_temp_cocido = 0;
                            if (!(temp_cocido == ""))
                            {
                                float_temp_cocido = float.Parse(temp_cocido);
                            }

                            if (float_temp_cocido < 5 && float_temp_cocido > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_temp_cocido > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar pH Desuerado
                            float float_ph_desuerado = 0;
                            if (!(ph_desuerado == ""))
                            {
                                float_ph_desuerado = float.Parse(ph_desuerado);
                            }

                            if (float_ph_desuerado < 5 && float_ph_desuerado > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_ph_desuerado > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar Solidos totales
                            float float_solidos_totales = 0;
                            if (!(solidos_totales == ""))
                            {
                                float_solidos_totales = float.Parse(solidos_totales);
                            }

                            if (float_solidos_totales < 5 && float_solidos_totales > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_solidos_totales > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar porcentaje_humedad
                            float float_porcentaje_humedad = 0;
                            if (!(porcentaje_humedad == ""))
                            {
                                float_porcentaje_humedad = float.Parse(porcentaje_humedad);
                            }

                            if (float_porcentaje_humedad < 5 && float_porcentaje_humedad > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (float_porcentaje_humedad > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            #endregion

                            //string nombrePacienteCompleto = String.Format("{0} {1} {2}", nombre, apellido_paterno, apellido_materno);


                            divRegistro = divRegistro + String.Format("<div class=\"cuadroRegistro\"><table>      " +
                            "<tr>" +
                                "<td><span class=\"letraNombrePaciente\"><a href=\"detalle_cuajado.aspx?val={6}\" >{0}</a></span><div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\">{5}</div>" +
                                        "<div class=\"semaforoLetras\">Nivel: {1}</div>" +
                                        "</div>  <br />" +
                                    "<span class=\"letraGrupoSanguineo\">Número Tina: {1}</span><br />" +
                                    "<span class=\"letraNombreDoctor\">Silo: {3}</span><br />" +
                                    "<span class=\"letraNombreDoctor\">Lote: {4}</span>" +

                                "</td>" +
                            "</tr>" +
                            "<tr>" +
                                "<td colspan=\"2\"><br />" +
                                    "<span class=\"letraFechaCaptura\">Fecha de captura: {2}</span>" +

                                 "</td>" +
                             "</tr>        " +
                             "</table></div>",
                            familia, num_tina, fecha, silo, lote, htmlImagenSemaforo, id_cuajada);
                        }
                    }
                }
            }

            else if (registrosMonitoreo.Tables.Count > 0 & modulo == 2)
            {
                for (int i = 0; i <= registrosMonitoreo.Tables[0].Rows.Count - 1; i++)
                {
                    htmlImagenSemaforo = semaforo_verde;

                    string id_fundida = registrosMonitoreo.Tables[0].Rows[i]["id_fundida"].ToString();
                    string linea = registrosMonitoreo.Tables[0].Rows[i]["linea"].ToString();
                    string fecha = registrosMonitoreo.Tables[0].Rows[i]["fecha"].ToString();
                    string num_fundida = registrosMonitoreo.Tables[0].Rows[i]["num_fundida"].ToString();
                    string lote = registrosMonitoreo.Tables[0].Rows[i]["lote"].ToString();
                    string familia = registrosMonitoreo.Tables[0].Rows[i]["familia"].ToString();

                    string ph_cj01 = registrosMonitoreo.Tables[0].Rows[i]["ph_cj01"].ToString();
                    string ph_cj011 = registrosMonitoreo.Tables[0].Rows[i]["ph_cj011"].ToString();
                    string temperatura = registrosMonitoreo.Tables[0].Rows[i]["temperatura"].ToString();
                    string ph_cj01_1 = registrosMonitoreo.Tables[0].Rows[i]["ph_cj01_1"].ToString();
                    string ph_cj01_2 = registrosMonitoreo.Tables[0].Rows[i]["ph_cj01_2"].ToString();
                    string ph_cj01_3 = registrosMonitoreo.Tables[0].Rows[i]["ph_cj01_3"].ToString();

                    DataRow lastrow = registrosMonitoreo.Tables[0].Rows[registrosMonitoreo.Tables[0].Rows.Count - 1];

                    if (lastrow != null)
                    {
                        DataRow actualrow = registrosMonitoreo.Tables[0].Rows[i];

                        if (actualrow != lastrow)
                        {

                            #region Parametrizado de Valores
                            //Parametrizar el ph_cj01
                            float int_ph_cj01 = 0;
                            if (!(ph_cj01 == ""))
                            {
                                int_ph_cj01 = float.Parse(ph_cj01);
                            }

                            if (int_ph_cj01 < 5 && int_ph_cj01 > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            //else if (porcen_grasa_leche >= 5 & porcen_grasa_leche <= 6) {
                            //    htmlImagenSemaforo = semaforo_verde;
                            //    divi++;
                            //}
                            else if (int_ph_cj01 > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar el ph_cj011
                            float int_ph_cj011 = 0;
                            if (!(ph_cj011 == ""))
                            {
                                int_ph_cj011 = float.Parse(ph_cj011);
                            }

                            if (int_ph_cj011 < 5 && int_ph_cj011 > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (int_ph_cj011 > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar temperatura
                            float int_temperatura = 0;
                            if (!(temperatura == ""))
                            {
                                int_temperatura = float.Parse(temperatura);
                            }

                            if (int_temperatura < 5 && int_temperatura > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (int_temperatura > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar ph_cj01_1
                            float int_ph_cj01_1 = 0;
                            if (!(ph_cj01_1 == ""))
                            {
                                int_ph_cj01_1 = float.Parse(ph_cj01_1);
                            }

                            if (int_ph_cj01_1 < 5 && int_ph_cj01_1 > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (int_ph_cj01_1 > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar ph_cj01_2
                            float int_ph_cj01_2 = 0;
                            if (!(ph_cj01_2 == ""))
                            {
                                int_ph_cj01_2 = float.Parse(ph_cj01_2);
                            }

                            if (int_ph_cj01_2 < 5 && int_ph_cj01_2 > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (int_ph_cj01_2 > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            //Parametrizar int_ph_cj01_3
                            float int_ph_cj01_3 = 0;
                            if (!(ph_cj01_3 == ""))
                            {
                                int_ph_cj01_3 = float.Parse(ph_cj01_3);
                            }

                            if (int_ph_cj01_3 < 5 && int_ph_cj01_3 > 0)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }
                            else if (int_ph_cj01_3 > 6)
                            {
                                htmlImagenSemaforo = semaforo_rojo;
                                divi++;
                            }

                            #endregion

                            if (0 != 0)
                            {
                                EnviarSMS.envio_sms.send_sms();

                            }

                            //Logic.General.EnvioCorreos.enviaCorreo("vicente.esparza@sanjacinto.com.mx, ing.vic.esparza@gmail.com", "Exitoso", "Holaaaaaa");

                            divRegistro = divRegistro + String.Format("<div class=\"cuadroRegistro\"><table>      " +
                            "<tr>" +
                                "<td><span class=\"letraNombrePaciente\"><a href=\"detalle_fundido.aspx?val={6}\" >{0}</a></span><div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\">{5}</div>" +
                                        "<div class=\"semaforoLetras\">Nivel: {1}</div>" +
                                        "</div>  <br />" +
                                    "<span class=\"letraGrupoSanguineo\">Linea: {1}</span><br />" +
                                    "<span class=\"letraNombreDoctor\">Número de Fundida: {3}</span><br />" +
                                    "<span class=\"letraNombreDoctor\">Lote: {4}</span>" +

                                "</td>" +

                            "</tr>" +
                            "<tr>" +
                                "<td colspan=\"2\"><br />" +
                                    "<span class=\"letraFechaCaptura\">Fecha de captura: {2}</span>" +

                                 "</td>" +
                             "</tr>        " +
                             "</table></div>",
                             familia, linea, fecha, num_fundida, lote, htmlImagenSemaforo, id_fundida);
                        }
                    }
                }
            }

            else if (registrosMonitoreo.Tables.Count > 0 & modulo == 3)
            {
                for (int i = 0; i <= registrosMonitoreo.Tables[0].Rows.Count - 1; i++)
                {
                    string id_pt = registrosMonitoreo.Tables[0].Rows[i]["id_pt"].ToString();
                    string num_viaje = registrosMonitoreo.Tables[0].Rows[i]["num_viaje"].ToString();
                    string fecha = registrosMonitoreo.Tables[0].Rows[i]["fecha"].ToString();
                    string num_piezas = registrosMonitoreo.Tables[0].Rows[i]["num_piezas"].ToString();
                    string lote = registrosMonitoreo.Tables[0].Rows[i]["lote"].ToString();
                    string codigo_pt = registrosMonitoreo.Tables[0].Rows[i]["codigo_pt"].ToString();
                    string kilos = registrosMonitoreo.Tables[0].Rows[i]["kilos"].ToString();

                    htmlImagenSemaforo = semaforo_verde;
                    DataRow lastrow = registrosMonitoreo.Tables[0].Rows[registrosMonitoreo.Tables[0].Rows.Count - 1];

                    if (lastrow != null)
                    {
                        DataRow actualrow = registrosMonitoreo.Tables[0].Rows[i];

                        if (actualrow != lastrow)
                        {

                            divRegistro = divRegistro + String.Format("<div class=\"cuadroRegistro\"><table>      " +
                            "<tr>" +
                                "<td><span class=\"letraNombrePaciente\"><a href=\"detalle_pp.aspx?val={6}\" >{0}</a></span>" +
                                        "  <br />" +
                                    "<span class=\"letraGrupoSanguineo\">Número de Viaje: {1}</span><br />" +
                                    "<span class=\"letraNombreDoctor\">Número de Piezas: {3} </span><span class=\"letraNombreDoctor\">&nbsp; &nbsp; &nbsp; Kilogramos: {5}</span><br />" +
                                    "<span class=\"letraNombreDoctor\">Lote: {4}</span>" +

                                "</td>" +

                            "</tr>" +
                            "<tr>" +
                                "<td colspan=\"2\"><br />" +
                                    "<span class=\"letraFechaCaptura\">Fecha de captura: {2}</span>" +

                                 "</td>" +
                             "</tr>        " +
                             "</table></div>",
                            codigo_pt, num_viaje, fecha, num_piezas, lote, kilos, id_pt);
                        }
                    }
                }
            }

            else if (registrosMonitoreo.Tables.Count > 0 & modulo == 4)
            {
                for (int i = 0; i <= registrosMonitoreo.Tables[0].Rows.Count - 1; i++)
                {
                    string piezas_empacadas = registrosMonitoreo.Tables[0].Rows[i]["piezas_empacadas"].ToString();
                    string fecha = registrosMonitoreo.Tables[0].Rows[i]["fecha"].ToString();
                    string lote_origen = registrosMonitoreo.Tables[0].Rows[i]["lote_origen"].ToString();
                    string lote = registrosMonitoreo.Tables[0].Rows[i]["lote"].ToString();
                    string prod_terminado = registrosMonitoreo.Tables[0].Rows[i]["prod_terminado"].ToString();
                    string caducidad = registrosMonitoreo.Tables[0].Rows[i]["caducidad"].ToString();


                    htmlImagenSemaforo = semaforo_verde;

                    DataRow lastrow = registrosMonitoreo.Tables[0].Rows[registrosMonitoreo.Tables[0].Rows.Count - 1];

                    if (lastrow != null)
                    {
                        DataRow actualrow = registrosMonitoreo.Tables[0].Rows[i];

                        if (actualrow != lastrow)
                        {

                            divRegistro = divRegistro + String.Format("<div class=\"cuadroRegistro\"><table>      " +
                            "<tr>" +
                                "<td><span class=\"letraNombrePaciente\"><a href=\"DatosPaciente.aspx?val={3}\" >{0}</a></span>" +
                                        "  <br />" +
                                    "<span class=\"letraNombreDoctor\">Piezas Empacadas: {1} </span><span class=\"letraNombreDoctor\">&nbsp; &nbsp; &nbsp;Caducidad: {5} </span><br />" +
                                    "<span class=\"letraGrupoSanguineo\">Lote Origen: {3}</span><br />" +
                                    "<span class=\"letraNombreDoctor\">Lote: {4}</span>" +

                                "</td>" +

                            "</tr>" +
                            "<tr>" +
                                "<td colspan=\"2\"><br />" +
                                    "<span class=\"letraFechaCaptura\">Fecha de captura: {2}</span>" +

                                 "</td>" +
                             "</tr>        " +
                             "</table></div>",
                            prod_terminado, piezas_empacadas, fecha, lote_origen, lote, caducidad);
                        }
                    }
                }
            }

            return divRegistro;
        }

        

    }
}