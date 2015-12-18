using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace SignalRTest.Database.General
{
    public class Monitoreo
    {
        //Regresa un dataset con todos los registros del dia actual
        
        public static DataSet obtieneDSRegistros(string store, string fecha_desde, string fecha_hasta, int tabla)
        {
            
                string Querystring = "EXEC " + store + " '" + fecha_desde + "','" + fecha_hasta + "'," + tabla + " ";
                return Database.General.Conexion.creaDataSet(Querystring);
            
        }
        //Regresa plantillas de usuario y departamento
        public static DataSet obtienePlantillas_m(string store, string usuario, int depto)
        {

            string Querystring = "EXEC " + store + " '" + usuario + "'," + depto;
            return Database.General.Conexion.creaDataSet(Querystring);

        }
        //Regresa todas las plantillas 
        public static DataSet obtienePlantillas_m(string store)
        {

            string Querystring = "EXEC " + store;
            return Database.General.Conexion.creaDataSet(Querystring);

        }
        //Regresa un boolean credenciales correctas

        public static int obtieneCredendiales_m(string store, string usuario, string contrasena)
        {

            string Querystring = "EXEC " + store + " '" + usuario + "','" + contrasena + "' ";
            return Database.General.Conexion.ejecutaQuery_k(Querystring);

        }
        //Regresa ruta de video

        public static string obtieneRutaVideo_m(string store, int idvid)
        {

            string Querystring = "EXEC " + store + " " + idvid;
            return Database.General.Conexion.ejecutaQuery_obtVid(Querystring);

        }
        //Regresa un boolean usuario creado 

        public static int nuevo_usuario_m(string store, string usuario, string contrasena, int depto)
        {

            string Querystring = "EXEC " + store + " '" + usuario + "','" + contrasena + "'," + depto;
            return Database.General.Conexion.ejecutaQuery_k(Querystring);

        }
        //Regresa imagen tipo byte
        public static byte[] obtieneImagen_m(string store, int id_imagen)
        {

            string Querystring = "EXEC " + store +" " + id_imagen;
            return Database.General.Conexion.ejecutaQueryImg_k(Querystring);

        }
        //Regresa video tipo byte
        public static byte[] obtieneVideo_m(string store, int id_video)
        {

            string Querystring = "EXEC " + store + " " + id_video;
            return Database.General.Conexion.ejecutaQueryVideo_k(Querystring);

        }
        //Regresa los departamentos a los cuales tiene permiso de acceder
        public static DataSet obtieneDptos_m(string store, string usuario_k)
        {

            string Querystring = "EXEC " + store + " '" + usuario_k +"'";
            return Database.General.Conexion.creaDataSet(Querystring);
        }
        //Guarda imagen y plantilla
        public static void cargaImagen_m(string store, string ruta, string tipo, string usuario, int depto)
        {
            string Querystring = "EXEC " + store + " '" + ruta + "','"+ tipo + "','"+ usuario +"',"+ depto;
            Database.General.Conexion.guardarArchivo_k(Querystring);
        } 
        //Guarda video y plantilla
        public static void cargaVideo_m(string store, string ruta, string tipo, string usuario, int depto)
        {
            string Querystring = "EXEC " + store + " '" + ruta + "','" + tipo + "','" + usuario + "'," + depto;
            Database.General.Conexion.guardarArchivo_k(Querystring);
        }

        //Regresa un dataset con el registro que se selecciono
        public static DataSet obtieneDSRegistros_Seleccionado(string store, int id, int tabla)
        {
            string Querystring = "EXEC " + store + " " + id + "," + tabla + " ";
            return Database.General.Conexion.creaDataSet(Querystring);
        }

        //Regresa un dataset con todos los registros de la tabla Monitoreo
        public static DataSet obtieneDatasetTodosRegistrosMonitoreo()
        {
            string Querystring = "EXEC sp_obtieneTodosRegistrosMonitoreo";
            return Database.General.Conexion.creaDataSet(Querystring);
        }

        //Regresa un dataset con el historial de peso
        public static DataSet obtieneDatasetHistorialMonitoreo(string idPaciente)
        {
            string Querystring = "select top 10 * from monitoreo where id_paciente =  " + idPaciente;
            return Database.General.Conexion.creaDataSet(Querystring);
        }

        //Regresa un dataset con los datos de un médico a partir de un id_paciente
        public static DataSet obtieneDatasetMedicoSegunIdPaciente(string idPaciente)
        {
            string Querystring = "EXEC ObtenerDatosMedicoSegunIdPaciente " + idPaciente;
            return Database.General.Conexion.creaDataSet(Querystring);
        }
        
        //Regresa un dataset con los datos de un paciente a partir de un id_paciente
        public static DataSet obtieneDatasetPaciente(string idPaciente)
        {
            string Querystring = "SELECT * FROM pacientes WHERE id_paciente='" + idPaciente + "'";
            return Database.General.Conexion.creaDataSet(Querystring);
        }

        //*********************Intranet***************************
        //Regresa documento tipo byte
        public static byte[] obtienedoc_intranet(string store, int id_doc)
        {
            string Querystring = "EXEC " + store + " " + id_doc;
            return Database.General.Conexion.ejecutaQueryDoc_intranet(Querystring);
        }

        //Regresa documento y nombre 
        public static DataSet obtiene_doc_nom_intranet(string store, int id_doc)
        {

            string Querystring = "EXEC " + store + " " + id_doc;
            return Database.General.Conexion.creaDataSet_doc(Querystring);
        }
        public static DataSet Cargar_Formatos(string store)
        {
            string Querystring = " EXEC " + store;
            return Database.General.Conexion.creaDataSet_doc(Querystring);

        }
    }
}