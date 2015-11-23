<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detalle_empaque.aspx.cs" Inherits="SignalRTest.empaque.detalle_empaque" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Información Producto en Proceso</title>
    <link rel="stylesheet" type="text/css" href="../styles.css" />
    <style type="text/css">
        .auto-style1 {
            height: 94px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
         <table align="center">
            <tr>
                <td class="auto-style1">
                    <img src="../images/logo_transparente.png" border="0" alt="" height="120" style="width: 150px"><br />
                    <span class="letraTituloCentralMonitoreo">&nbsp; Información PP</span>                   
                </td>              
            </tr>
        </table>

        <table style="width: 100%">
            

            <tr>
                <td colspan="0" style="width: 100%">
                    <asp:Panel ID="Panel1" GroupingText="Detalle de Información" Font-Size="22px" Width="100%" ForeColor="#660066" Font-Bold="true" runat="server"> 
                     
                        <table style="width:100%;">
           
            <tr>
                <td class="tamano35">
                    Producto :  <asp:Label ID="LProductoP" class="letraDetalleMonitor" runat="server"></asp:Label>
              
                </td>
                <td class="tamano20">
                   Lote :  <asp:Label ID="LLoteP" class="letraDetalleMonitor" runat="server"></asp:Label>
               
                </td>
                <td class="tamano20">
                    &nbsp;</td>
                <td class="tamano20">
                    &nbsp;</td>
                
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
                            <table style="width: 100%">
                <tr>
                    <td class="tamano25">
                        Número de Piezas :
                        <asp:Label ID="LPiezasP" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano25">
                        Total de Kilos :
                        <asp:Label ID="LKilosP" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano25">
                        Número de Viaje :
                        <asp:Label ID="LViajeP" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano25">
                        Número de Fundida :
                        <asp:Label ID="LFundidaP" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
            
                <tr>
                    <td class="tamano17">
                        &nbsp;</td>
                    <td class="tamano17">
                        &nbsp;
                    </td>
                    <td class="tamano17">
                         &nbsp;
                    </td>
                    <td class="tamano17">
                         &nbsp;
                    </td>
                    <td class="tamano17">
                        &nbsp;
                    </td>
                    
                </tr>
            
                    
                    </asp:Panel>
                </td>
            </tr>
        </table>
        
       
    </div>
    </form>
</body>
</html>
