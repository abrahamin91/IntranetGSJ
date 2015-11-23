using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SignalRTest.Database.General
{
    public class Conexion
    {    
        public static string cadenaDeConexion()
        {
            return ConfigurationManager.ConnectionStrings["virtumedikConnectionString"].ToString();                          
        }

        public static SqlConnection creaConexion() 
        {
            SqlConnection conlSqlConn = new SqlConnection(cadenaDeConexion());

            try
            {
                conlSqlConn.Open();
            }
            catch(Exception ex)
            {
                HttpContext.Current.Session["Error"] = ex.Message.ToString();
                return null;
            }
            return conlSqlConn;
        }
        public static DataTable EjecutaconsultaTable(string query)
        {
            SqlConnection conexion = creaConexion();
            DataTable tabla = new DataTable();
            //SqlCommand comando = new SqlCommand(query,conexion);

            try
            {
                SqlDataAdapter adaptador = new SqlDataAdapter(query, conexion);
                adaptador.Fill(tabla);


            }
            catch (Exception e)
            {
                HttpContext.Current.Session["Error"] = e.Message.ToString();
                return null;
            }
            finally
            {
                conexion.Close();

            }
            return tabla;
        }
        public static DataSet creaDataSet(string query) 
        {
            SqlConnection Con = creaConexion();
            SqlDataAdapter dalSqlDataAdapter = new SqlDataAdapter(query,Con);
            DataSet dslDataSet = new DataSet();
            try
            {
                dalSqlDataAdapter.Fill(dslDataSet);
            }catch(Exception ex)
            {
                HttpContext.Current.Session["Error"] = ex.Message.ToString();
                return null;
            }
            finally
            {
                Con.Close();
            }
            return dslDataSet;
        }

        public static int ejecutaQuery(string query) 
        {
            int ilError = 0;
            //SqlConnection sqlConn = new SqlConnection();
            //sqlConn = creaConexion();
            SqlConnection sqlConn = creaConexion();
            try
            {
                SqlCommand comSqlCommand = new SqlCommand();
                comSqlCommand.Connection = sqlConn;
                comSqlCommand.CommandText = query;
                ilError = comSqlCommand.ExecuteNonQuery();
            }catch(Exception ex)
            {
                HttpContext.Current.Session["Error"] = ex.Message.ToString();
                ilError=-1;
            }finally
            {
                sqlConn.Close();
            }
            return ilError;                       
        }
        public static int ejecutaQuery_k(string query)
        {
            int inicio = 0;
            //SqlConnection sqlConn = new SqlConnection();
            //sqlConn = creaConexion();
            SqlConnection sqlConn = creaConexion();
            try
            {
                SqlCommand comSqlCommand = new SqlCommand();
                comSqlCommand.Connection = sqlConn;
                comSqlCommand.CommandText = query;
                inicio = Convert.ToInt32(comSqlCommand.ExecuteScalar());
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["Error"] = ex.Message.ToString();
                inicio = -1;
            }
            finally
            {
                sqlConn.Close();
            }
            return inicio;
        }
       
        public static byte[] ejecutaQueryImg_k(string query)
        {
            byte[] img = null;
            //SqlConnection sqlConn = new SqlConnection();
            //sqlConn = creaConexion();
            SqlConnection sqlConn = creaConexion();
            try
            {
                SqlCommand comSqlCommand = new SqlCommand();
                comSqlCommand.Connection = sqlConn;
                comSqlCommand.CommandText = query;
                img = (byte[])comSqlCommand.ExecuteScalar();
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["Error"] = ex.Message.ToString();
            }
            finally
            {
                sqlConn.Close();
            }
            return img;
        }
        public static byte[] ejecutaQueryVideo_k(string query)
        {
            byte[] video = null;
            //SqlConnection sqlConn = new SqlConnection();
            //sqlConn = creaConexion();
            SqlConnection sqlConn = creaConexion();
            try
            {
                SqlCommand comSqlCommand = new SqlCommand();
                comSqlCommand.Connection = sqlConn;
                comSqlCommand.CommandText = query;
                video = (byte[])comSqlCommand.ExecuteScalar();
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["Error"] = ex.Message.ToString();
            }
            finally
            {
                sqlConn.Close();
            }
            return video;
        }
        public static void guardarArchivo_k(string query)
        {
            //SqlConnection sqlConn = new SqlConnection();
            //sqlConn = creaConexion();
            SqlConnection sqlConn = creaConexion();
            try
            {
                SqlCommand comSqlCommand = new SqlCommand();
                comSqlCommand.Connection = sqlConn;
                comSqlCommand.CommandText = query;
                comSqlCommand.ExecuteScalar();
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["Error"] = ex.Message.ToString();
            }
            finally
            {
                sqlConn.Close();
            }
        }
        public static string ejecutaQuery_obtVid(string query)
        {
            string inicio = "";
            //SqlConnection sqlConn = new SqlConnection();
            //sqlConn = creaConexion();
            SqlConnection sqlConn = creaConexion();
            try
            {
                SqlCommand comSqlCommand = new SqlCommand();
                comSqlCommand.Connection = sqlConn;
                comSqlCommand.CommandText = query;
                inicio = Convert.ToString(comSqlCommand.ExecuteScalar());
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["Error"] = ex.Message.ToString();
                inicio = "";
            }
            finally
            {
                sqlConn.Close();
            }
            return inicio;
        }
       
    }
}
