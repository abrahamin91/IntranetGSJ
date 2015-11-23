<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detalle_fundido.aspx.cs" Inherits="SignalRTest.fundido.detalle_fundido" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Información Fundido</title>
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
         <table style="width: 100%">
            <tr>
                            <td >
                    <img src="../images/logo_fundido.png" border="0" height="150" style="width: 100%"></td>
                            
            </tr>
        </table>

        <table style="width: 100%">
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>

            <tr>
                <table style="width: 100%">
           
               <tr>
                            <td>
                   
                                 <asp:Image ID="Image1" runat="server" style="width: 100%"  ImageUrl="~/images/margen_izq.png" />
                            </td>
                            <td >
                   
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                <asp:Label ID="Label3" runat="server" Text="DETALLE DE INFORMACIÓN" Font-Size="20px" style="width: 100%" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                                </div>
                                 
                            </td>
                               <td >
                   
                                 <asp:Image ID="Image2" runat="server" style="width: 100%" ImageUrl="~/images/margen_der.png" />
                            </td>
                        </table>
            </tr>
                
                <td colspan="0" style="width: 100%">
                    <div id="info_detalle"> 
                     
                        <table style="width:100%;" >
           
            <tr>
                <td class="tamano35">
                    Familia :  <asp:Label ID="LFamiliaF" class="letraDetalleMonitor" runat="server"></asp:Label>
              
                </td>
                <td class="tamano20">
                   Lote :  <asp:Label ID="LLoteF" class="letraDetalleMonitor" runat="server"></asp:Label>
               
                </td>
                <td class="tamano20">
                   Linea :  <asp:Label ID="LLineaF" class="letraDetalleMonitor" runat="server"></asp:Label>
               
                </td>
                <td class="tamano20">
                   Número de Fundida :  <asp:Label ID="LNumfundidaF" class="letraDetalleMonitor" runat="server"></asp:Label>
               
                </td>
                
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
                    <td class="tamano17">
                        <asp:Image ID="Img_ph_cj01" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        PH CJ01 :
                        <asp:Label ID="Lph_cj01" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_ph_cj01_2" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        PH CJ01 2 :
                        <asp:Label ID="Lph_cj01_2" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_ph_cj01_3" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        PH CJ01 3 :
                        <asp:Label ID="Lph_cj01_3" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_ph_cj01_4" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        PH CJ01 4 :
                        <asp:Label ID="Lph_cj01_4" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_ph_cj011" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        PH CJ01.1 :
                        <asp:Label ID="Lph_cj011" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    
                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
            
                <tr>
                    <td class="tamano17">
                        <asp:Image ID="Img_Temp" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        Temperatura:
                        <asp:Label ID="LTempF" runat="server" class="letraDetalleMonitor"></asp:Label>
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
                    <td class="tamano17">
                        &nbsp;
                    </td>
                    
                </tr>
            
                    
                    </div>
                </td>
            </tr>
        </table>
        
       
    </div>
    </form>
</body>
</html>