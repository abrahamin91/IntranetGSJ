using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel; 

namespace SignalRTest.descarga_info
{
    

    public partial class descarga : System.Web.UI.Page
    {

        private static string fecha_desde,fecha_hasta;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                //Calendar1.Visible = false;
            }

        }

        //protected void ibEmpaque_Click(object sender, ImageClickEventArgs e)
        //{
        //    Save_excel("Web_Sel_Registros", "Empaque",3);
        //}

        //protected void ibTexturizador_Click(object sender, ImageClickEventArgs e)
        //{
        //    Save_excel("Web_Sel_Registros", "Texturizador",5);
        //}

        //protected void ibPP_Click(object sender, ImageClickEventArgs e)
        //{
        //    Save_excel("Web_Sel_Registros", "Producto_Proceso",4);
        //}

        //protected void ibFundido_Click(object sender, ImageClickEventArgs e)
        //{
        //    Save_excel("Web_Sel_Registros", "Fundido",2);
        //}

        //protected void ibCuajado_Click(object sender, ImageClickEventArgs e)
        //{
        //    //Response.Redirect("../fundido/monitor.aspx");
        //    //Response.Redirect("../fundido/monitor_fundido.aspx");
        //    Save_excel("Web_Sel_Registros", "Cuajado",1);

        //}
       

        private void releaseObject(object obj)
        {
            try
            {
                System.Runtime.InteropServices.Marshal.ReleaseComObject(obj);
                obj = null;
            }
            catch (Exception ex)
            {
                obj = null;
               // MessageBox.Show("Exception Occured while releasing object " + ex.ToString());
            }
            finally
            {
                GC.Collect();
            }
        }

     

        protected void calEventDate_SelectionChanged(object sender, EventArgs e)
        {
            txtEventDateDesde.Text = calEventDate.SelectedDate.ToString("d");
            fecha_desde = calEventDate.SelectedDate.ToString("yyyy/MM/dd");
        }

        protected void calEventDate_SelectionChangedHasta(object sender, EventArgs e)
        {
            txtEventDateHasta.Text = CalendarHasta.SelectedDate.ToString("d");
            fecha_hasta = CalendarHasta.SelectedDate.ToString("yyyy/MM/dd");
        }
        

       

        public void Save_excel(string store, string nombre_excel, int tabla) {

            string data = null;

            int i = 0;
            int j = 0;

            Excel.Application xlApp;
            Excel.Workbook xlWorkBook;
            Excel.Worksheet xlWorkSheet;
            object misValue = System.Reflection.Missing.Value;

            xlApp = new Excel.Application();
            xlWorkBook = xlApp.Workbooks.Add(misValue);
            xlWorkSheet = (Excel.Worksheet)xlWorkBook.Worksheets.get_Item(1);


            if (txtEventDateDesde.Text.Length == 0 || txtEventDateHasta.Text.Length == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Alerta", "alert('Seleccione un rango de fechas');", true);

            }
            else
            {

                try
                {

                    DateTime today = DateTime.Today;
                    DataSet DSGeneral = SignalRTest.Database.General.Monitoreo.obtieneDSRegistros(store, descarga.fecha_desde, descarga.fecha_hasta, tabla);
                    //String[] name_colum;

                    foreach (DataTable table in DSGeneral.Tables)
                    {
                        foreach (DataColumn column in table.Columns)
                        {
                            Console.WriteLine(column.ColumnName);
                            xlWorkSheet.Cells[1, j + 1] = column.ColumnName;
                            j++;
                        }
                    }
                    int m = 1;
                    for (i = 0; i <= DSGeneral.Tables[0].Rows.Count - 1; i++)
                    {
                        
                        for (j = 0; j <= DSGeneral.Tables[0].Columns.Count - 1; j++)
                        {
                           
                            data = DSGeneral.Tables[0].Rows[i].ItemArray[j].ToString();
                            xlWorkSheet.Cells[m + 1, j + 1] = data;
                        }
                        m++;
                    }

                    xlWorkBook.SaveAs(nombre_excel +" "+ today.ToString("dd-MM-yyyy")+".xls", Excel.XlFileFormat.xlWorkbookNormal, misValue, misValue, misValue, misValue, Excel.XlSaveAsAccessMode.xlExclusive, misValue, misValue, misValue, misValue, misValue);
                    xlWorkBook.Close(true, misValue, misValue);
                    xlApp.Quit();

                    releaseObject(xlWorkSheet);
                    releaseObject(xlWorkBook);
                    releaseObject(xlApp);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Exito", "alert('Documento Guardado');", true);

                }

                catch (Exception ex)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Error", "alert('Error en guardado, verifique que no este abierto el documento');", true);
                }
            }
        }

        protected void ibCuajadoPrincipal_Click(object sender, ImageClickEventArgs e)
        {
            Save_excel("Web_Sel_Registros", "Cuajado", 1);
        }

        protected void ibFundidoPrincipal_Click(object sender, ImageClickEventArgs e)
        {
            Save_excel("Web_Sel_Registros", "Fundido", 2);
        }

        protected void ibEmpaquePrincipal_Click(object sender, ImageClickEventArgs e)
        {
            Save_excel("Web_Sel_Registros", "Empaque", 3);
        }

        protected void ibPPPrincipal_Click(object sender, ImageClickEventArgs e)
        {
            Save_excel("Web_Sel_Registros", "Producto_Proceso", 4);
        }

        protected void ibTexturizador_Click(object sender, ImageClickEventArgs e)
        {
            Save_excel("Web_Sel_Registros", "Texturizador",5);
        }
        
        

        
    }
}