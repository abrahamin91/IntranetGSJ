<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detalle_cuajado.aspx.cs" Inherits="SignalRTest.cuajado.detalle_cuajado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Información Cuajado</title>
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
                    <img src="../images/logo_cuajado.png" border="0" height="150" style="width: 100%"></td>
                            
            </tr>
        </table>

        <table style="width: 100%">
            <tr>
                <td>
                    &nbsp;
                </td>
            <tr>

            <tr>
                <td colspan="0" style="width: 100%">
                    <asp:Panel ID="Panel1" GroupingText="Detalle de Información" Font-Size="22px" Width="100%" ForeColor="#660066" Font-Bold="true" runat="server"> 
                     
                        <table style="width:100%;">
           
            <tr>
                <td class="tamano35">
                    Familia :  <asp:Label ID="LFamiliaF" class="letraDetalleMonitor" runat="server"></asp:Label>
              
                </td>
                <td class="tamano20">
                   Lote :  <asp:Label ID="LLoteF" class="letraDetalleMonitor" runat="server"></asp:Label>
               
                </td>
                <td class="tamano20">
                    Silo :  <asp:Label ID="LSilo" class="letraDetalleMonitor" runat="server"></asp:Label>
               
                </td>
                <td class="tamano20">
                    Número de Tina :  <asp:Label ID="LNumTina" class="letraDetalleMonitor" runat="server"></asp:Label>
               
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
                        <asp:Image ID="Img_grasaleche" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        % Grasa Leche :
                        <asp:Label ID="Lgrasaleche" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_phleche" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        pH Leche :
                        <asp:Label ID="Lph_leche" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_proteina" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        % Proteína :
                        <asp:Label ID="Lproteina" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_grasacrema" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        % Grasa Crema :
                        <asp:Label ID="Lgcrema" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_grasalechetina" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        % Grasa Leche en Tina :
                        <asp:Label ID="Lgtina" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    
                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
            
                <tr>
                    <td class="tamano17">
                        <asp:Image ID="Img_prottina" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        % Proteína Tina :
                        <asp:Label ID="LTempF" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_adicuajo" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        °C Adición Cuajo :
                        <asp:Label ID="LTemCuajo" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                         <asp:Image ID="Img_pasta" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                         pH Pasta :
                         <asp:Label ID="LpHPasta" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                         <asp:Image ID="Img_phdesue" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                         pH Desuerado :
                         <asp:Label ID="LpHDesue" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    <td class="tamano17">
                        <asp:Image ID="Img_solidos" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                        Sólidos Totales :
                        <asp:Label ID="LSolidTot" runat="server" class="letraDetalleMonitor"></asp:Label>
                    </td>
                    
                </tr>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
            
                <tr>
            
                                <td class="tamano17">
                                    <asp:Image ID="Img_humedad" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                                    % Humedad :
                                    <asp:Label ID="LHumedad" runat="server" class="letraDetalleMonitor"></asp:Label>
                                </td>
                                <td class="tamano17">
                                    <asp:Image ID="Img_cocido" runat="server" ImageUrl="~/images/semaforo_verde.png" />
                                    °C Cocido :&nbsp;<asp:Label ID="LTemCocido" runat="server" class="letraDetalleMonitor"></asp:Label>
                                </td>
                                <td class="tamano17">&nbsp;</td>
                                <td class="tamano17">&nbsp;</td>
                                <td class="tamano17">&nbsp;</td>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        
       
    </div>
    </form>
</body>
</html>
