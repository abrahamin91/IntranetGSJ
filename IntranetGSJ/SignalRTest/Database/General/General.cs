using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace SignalRTest.Database.General
{
    public class General
    {
        //Obtiene si existen citas de un paciente apartir de su ID
        public static string getIdCitas(string idPaciente)
        {
            string Querystring = "select id_paciente from agendas where id_paciente = " + idPaciente + " group by id_paciente";
            DataSet citas = Database.General.Conexion.creaDataSet(Querystring);

            string cita = "";

            if (citas.Tables.Count > 0)
            {
                for (int i = 0; i <= citas.Tables[0].Rows.Count - 1; i++)
                {
                    cita = citas.Tables[0].Rows[i]["id_paciente"].ToString();
                }
            }
            return cita;
        }

        //Obtiene el nombre de un país a partir de su ID
        public static string getNombrePais(string idPais)
        {
            string Querystring = "Select nombre from tblPais WHERE idPais = '" + idPais + "'";
            DataSet paises = Database.General.Conexion.creaDataSet(Querystring);

            string pais = "";

            if (paises.Tables.Count > 0)
            {
                for (int i = 0; i <= paises.Tables[0].Rows.Count - 1; i++)
                {
                    pais = paises.Tables[0].Rows[i]["nombre"].ToString();
                }
            }
            return pais;
        }

        //Obtiene el nombre de un estado a partir de su ID
        public static string getNombreEstado(string idEstado)
        {
            string Querystring = "Select nombre from tblEstado WHERE idEstado = '" + idEstado + "'";
            DataSet estados = Database.General.Conexion.creaDataSet(Querystring);

            string estado = "";

            if (estados.Tables.Count > 0)
            {
                for (int i = 0; i <= estados.Tables[0].Rows.Count - 1; i++)
                {
                    estado = estados.Tables[0].Rows[i]["nombre"].ToString();
                }
            }
            return estado;
        }

        //Obtiene el nombre de un municipio a partir de su ID
        public static string getNombreMunicipio(string idMunicipio)
        {
            string Querystring = "Select nombre from tblMunicipio WHERE idMunicipio = '" + idMunicipio + "'";
            DataSet municipios = Database.General.Conexion.creaDataSet(Querystring);

            string municipio = "";

            if (municipios.Tables.Count > 0)
            {
                for (int i = 0; i <= municipios.Tables[0].Rows.Count - 1; i++)
                {
                    municipio = municipios.Tables[0].Rows[i]["nombre"].ToString();
                }
            }
            return municipio;
        }

        //Obtiene el id de un estado a partir de un idMunicipio
        public static string getIdEstadoDesdeMunicipio(string idMunicipio)
        {
            string Querystring = "SELECT tblEstado.nombre, tblEstado.idEstado FROM tblEstado " +
                                 "JOIN tblMunicipio ON tblEstado.idEstado = tblMunicipio.idEstado " +
                                 "WHERE tblMunicipio.idMunicipio = '" + idMunicipio + "'";
            DataSet estados = Database.General.Conexion.creaDataSet(Querystring);

            string estado = "";

            if (estados.Tables.Count > 0)
            {
                for (int i = 0; i <= estados.Tables[0].Rows.Count - 1; i++)
                {
                    estado = estados.Tables[0].Rows[i]["idEstado"].ToString();
                }
            }
            return estado;
        }

        //Obtiene el id de un país a partir de un idEstado
        public static string getIdPaisDesdeEstado(string idEstado)
        {
            string Querystring = "SELECT tblPais.nombre, tblPais.idPais FROM tblPais "+
                                 "JOIN tblEstado ON tblPais.idPais = tblEstado.idPais "+
                                 "WHERE tblEstado.idEstado = '" + idEstado + "'";
            DataSet paises = Database.General.Conexion.creaDataSet(Querystring);

            string pais = "";

            if (paises.Tables.Count > 0)
            {
                for (int i = 0; i <= paises.Tables[0].Rows.Count - 1; i++)
                {
                    pais = paises.Tables[0].Rows[i]["idPais"].ToString();
                }
            }
            return pais;
        }

    }
}
