using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace SignalRTest.EnviarSMS
{
    public class envio_sms
    {
        public static void send_sms()
        {
            using (var client = new WebClient())
            {
                //string[] sa = Session["Nombre"].ToString().Split(';');
                //string[] sb = Session["Telefono"].ToString().Split(',');
                string nombresYtel = "";

                //int recordnum = sa.Length;

                //for (int j = 0; j < recordnum - 1; j++)
                //{
                //    nombresYtel += sb[j].ToString() + "," + sa[j].ToString() + ";";

                //}


                string xml = "<SMSWSS10>" +
            "<USER>sj_sistemas</USER>" +
            "<PASS>4c06d1</PASS>" +
            "<SERVICE>1</SERVICE>" +
            "<DATA>" +
            "<BLOCK>" +
            "<CELS>" +
            "4491970681,vicente esparza" +
            "</CELS>" +
            "<TEXT>" +
            "Prueba exitosa" +
            "</TEXT>" +
            "</BLOCK>" +
            "</DATA>" +
            "</ SMSWSS10>";



                var values = new NameValueCollection();
                values["xml"] = xml;


                var response1 = client.UploadValues("http://www.masmensajes.com.mx/wss/smswss10.php", values);

                var responseString = Encoding.UTF8.GetString(response1);

                //Session["Nombre"] = null;
                //Session["Telefono"] = null;
                //dt.Rows.Clear();
                //gridSms.DataSource = dt;
                //gridSms.DataBind();


                //ScriptManager.RegisterStartupScript(this, this.GetType(), "jj", "alert('Los mensajes se enviaron correctamente');", true);


            }
        }
    }
}