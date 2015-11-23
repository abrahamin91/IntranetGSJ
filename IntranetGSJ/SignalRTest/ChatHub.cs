using Microsoft.AspNet.SignalR.Hubs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

[HubName("chathub")]
public class ChatHub : Hub
{
    public static string doctorPasar = "";
    public static string celularPasar = "";
    public static string pacientePasar = "";

    public static string registroPasado = "";

    public void Send(string name, string message)
    {
        DateTime today = DateTime.Today;
       
        DataSet registrosMonitoreo = SignalRTest.Database.General.Monitoreo.obtieneDSRegistros("Web_Sel_Registros", today.ToString("yyyy/MM/dd"), today.ToString("yyyy/MM/dd"), 2);


        string divRegistro = "";

        if (registrosMonitoreo.Tables.Count > 0)
        {
            for (int i = 0; i <= registrosMonitoreo.Tables[0].Rows.Count - 1; i++)
            {
                string linea = registrosMonitoreo.Tables[0].Rows[i]["linea"].ToString();
                string fecha = registrosMonitoreo.Tables[0].Rows[i]["fecha"].ToString();
                string num_fundida = registrosMonitoreo.Tables[0].Rows[i]["num_fundida"].ToString();
                string lote = registrosMonitoreo.Tables[0].Rows[i]["lote"].ToString();
                string familia = registrosMonitoreo.Tables[0].Rows[i]["familia"].ToString();


                    string semaforo_verde = "<img src=\"images/semaforo_verde.png\">";
                    string semaforo_ambar = "<img src=\"images/semaforo_amarillo.png\">";
                    string semaforo_rojo = "<img src=\"images/semaforo_rojo.png\">";
                    ////<<<empieza semaforización
                    //string edadPaciente = SignalRTest.Logic.General.Monitoreo.calcular_edad(Convert.ToDateTime(fecha_nacimiento));
                    //string semTAS = SignalRTest.Logic.General.Monitoreo.formTesionArterial(true, edadPaciente, Convert.ToInt32(TASistolica), Convert.ToInt32(TADiastolica));
                    //string semTAD = SignalRTest.Logic.General.Monitoreo.formTesionArterial(false, edadPaciente, Convert.ToInt32(TASistolica), Convert.ToInt32(TADiastolica));
                    //string semGlucemia = SignalRTest.Logic.General.Monitoreo.formGlucemia(Convert.ToInt32(Glucemia));
                    //string semFC = SignalRTest.Logic.General.Monitoreo.formFrecCardiaca(Convert.ToInt32(FC), edadPaciente);
                    ////>>>termina semaforización

                    
                    string htmlImagenSemaforo = "";

                   

                    //divRegistro = String.Format("<div class=\"cuadroRegistro\"><table>      <tr><td><span class=\"letraNombrePaciente\">{0}</span><br /><span class=\"letraGrupoSanguineo\">Grupo Sanguíneo: {1}</span><br /><span class=\"letraNombreDoctor\">Médico: {2}</span><br /></td><td><a href=\"adonde.aspx?val={3}\"><img src=\"images/btn_expediente.png\" border=\"0\"></a><br /><br /><a href=\"adonde.aspx?val={4}\"><img src=\"images/btn_sms.png\" border=\"0\"></a><br /></td></tr>        <tr><td colspan=\"2\"><span class=\"letraTituloDatosContacto\">Datos de contacto:</span><br /><span class=\"letraDatosContacto\">Dirección: {5} {6} {7}, {8}, {9}, {10}, {11}, {12}<br />{13}<br />{15}<br /></span>{20}</td></tr>        <tr><td><span class=\"letraFechaCaptura\">Fecha de Captura: {21}</span><br /><div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\"><img src=\"images/semaforo_verde.png\"></div><div class=\"semaforoLetras\">TA Sistólica: <strong>{16}</strong></div></div>   <div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\"><img src=\"images/semaforo_verde.png\"></div><div class=\"semaforoLetras\">TA Diastólica: {17}</div></div>  <div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\"><img src=\"images/semaforo_verde.png\"></div><div class=\"semaforoLetras\">Glucemia: {18}</div></div>   <div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\"><img src=\"images/semaforo_verde.png\"></div><div class=\"semaforoLetras\">FC: {19}</div></div></td></tr>        </table></div>",
                    //                            nombrePacienteCompleto, grupo_sanguineo, nombreCompletoDoctor, id_paciente, nombreCompletoDoctor, calle, numero_exterior, numero_interior, codigo_postal, colonia, municipio, estado, pais, telefono1, telefono2, celular, TASistolica, TADiastolica, Glucemia, FC, email, fecha_recepcion);


                    //divRegistro = String.Format("<div class=\"cuadroRegistro\"><table>      <tr><td><span class=\"letraNombrePaciente\">{0}</span><br /><span class=\"letraGrupoSanguineo\">Grupo Sanguíneo: {1}</span><br /><span class=\"letraNombreDoctor\">Médico: {2}</span><br /></td><td><a href=\"adonde.aspx?val={3}\"><img src=\"images/btn_expediente.png\" border=\"0\"></a><br /><br /><a href=\"adonde.aspx?val={4}\"><img src=\"images/btn_sms.png\" border=\"0\"></a><br /></td></tr>        <tr><td colspan=\"2\"><span class=\"letraTituloDatosContacto\">Datos de contacto:</span><br /><span class=\"letraDatosContacto\">Dirección: {5} {6} {7}, {8}, {9}, {10}, {11}, {12}<br />{13}<br />{15}<br /></span>{20}</td></tr>        <tr><td><br /><span class=\"letraFechaCaptura\">Fecha de Captura: {21}</span><br /><div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\">{22}</div><div class=\"semaforoLetras\">TA Sistólica: <strong>{16}</strong></div></div>   <div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\">{23}</div><div class=\"semaforoLetras\">TA Diastólica: {17}</div></div>  <div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\">{24}</div><div class=\"semaforoLetras\">Glucemia: {18}</div></div>   <div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\">{25}</div><div class=\"semaforoLetras\">FC: {19}</div></div></td></tr>        </table></div>",
                    //                            nombrePacienteCompleto, grupo_sanguineo, nombreCompletoDoctor, id_paciente, nombreCompletoDoctor, calle, numero_exterior, numero_interior, codigo_postal, colonia, municipio, estado, pais, telefono1, telefono2, celular, TASistolica, TADiastolica, Glucemia, FC, email, fecha_recepcion, htmlImagenSemTASist, htmlImagenSemTADiast, htmlImagenSemGlucemia, htmlImagenSemFC);

                    htmlImagenSemaforo = semaforo_verde;

                    divRegistro = divRegistro + String.Format("<div class=\"cuadroRegistro\"><table>      " +
                    "<tr>" +
                        "<td><span class=\"letraNombrePaciente\"><a href=\"DatosPaciente.aspx?val={3}\" >{0}</a></span><div class=\"cuadroSemaforizado\"><div class=\"semaforoImagen\">{5}</div>" +
                                "<div class=\"semaforoLetras\">Nivel: {1}</div>" +
                                "</div>  <br />" +
                            "<span class=\"letraGrupoSanguineo\">Linea: {1}</span><br />" +
                            "<span class=\"letraNombreDoctor\">Número de Fundida: {3}</span><br />" +
                            "<span class=\"letraNombreDoctor\">Lote: {4}</span>" +

                        "</td>" +
                        //"<td align=\"right\"><img src=\"images/btn_expediente.png\" onclick = \"avisoNoHayCita();\" border=\"0\"> <br /><br /><a href=\"EnvioMensajes.aspx?val={3} \" target=\"_blank\"><img src=\"images/btn_sms.png\" border=\"0\"></a><br />"+
                        //"</td>"+
                    "</tr>" +
                        //<tr><td colspan=\"2\"><span class=\"letraTituloDatosContacto\">Datos de contacto:</span><br /><span class=\"letraDatosContacto\">Dirección: {5} {6} {7}, {8}, {9}, {10}, {11}, {12}<br />{13}<br />{15}<br /></span>{20}</td></tr>        
                    "<tr>" +
                        "<td colspan=\"2\"><br />" +
                            "<span class=\"letraFechaCaptura\">Fecha de captura: {2}</span>" +
                         "</td>" +
                     "</tr>        " +
                     "</table></div>",
                    familia, linea, fecha, num_fundida, lote, htmlImagenSemaforo);

                    
                   


                    Clients.All.broadcastMessage(name, divRegistro, 1);
                
                
            }
        }

        
        //Llama al método broadcastMessage para actualizar los clientes
        //Clients.All.broadcastMessage(name, message);
   
    }    
}