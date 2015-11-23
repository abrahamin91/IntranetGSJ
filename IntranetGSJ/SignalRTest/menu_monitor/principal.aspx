<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="SignalRTest.menu_monitor.principal" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Selección de Modulos</title>
   
    

    <link rel="stylesheet" type="text/css" href="../styles.css" />
    <style type="text/css">
        .auto-style5 {
            width: 20%;
            
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%">
           
                <tr>
                            <td >
                    <img src="../images/logo_transparente2.png" border="0" height="150" style="width: 100%"></td>
                            
            </tr>
        </table>

        <table style="width: 100%">
           <tr>
                            <td>
                                &nbsp;
                            </td>
                              </tr>
               <tr>
                   
                            <td >
                   
                                 <asp:Image ID="Image1" runat="server" style="width: 100%" ImageUrl="~/images/margen_izq.png" />
                            </td>
                            <td >
                   
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                <asp:Label ID="Label1" runat="server" Text="MÓDULOS DE MONITOREO" Font-Size="20px" style="width: 100%" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                                </div>
                                 
                            </td>
                               <td >
                   
                                 <asp:Image ID="Image2" runat="server" style="width: 100%" ImageUrl="~/images/margen_der.png" />
                            </td>
                        </table>
       

       <table style="width: 100%">
            

            <tr>
                <td colspan="0" style="width: 100%">
                    
                    <table style="width: 100%;">
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
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                              </tr>  
                        <tr>
                        <td class="auto-style5">
                            <asp:ImageButton ID="ibCuajadoPrincipal" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_cuaj.png" OnClick="ibCuajadoPrincipal_Click" OnMouseOut="src='../images/ic_cuaj.png'" OnMouseOver="src='../images/icuajado_on.png'" Width="120px" />
                        </td>
                        <%--boton de cuajado--%>
                        <td class="auto-style5">&nbsp;
                            <asp:ImageButton ID="ibFundidoPrincipal" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_fun.png" OnClick="ibFundidoPrincipal_Click" OnMouseOut="src='../images/ic_fun.png'" OnMouseOver="src='../images/icfun_on.png'" Width="120px" />
                        </td>
                        <td class="auto-style5">
                            <asp:ImageButton ID="ibEmpaquePrincipal" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_emp.png" OnClick="ibEmpaquePrincipal_Click" OnMouseOut="src='../images/ic_emp.png'" OnMouseOver="src='../images/ic_empaqueon.png'" Width="120px" />
                        </td>
                        <td class="auto-style5">
                            <asp:ImageButton ID="ibPPPrincipal" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_pp.png" OnClick="ibPPPrincipal_Click" OnMouseOut="src='../images/ic_pp.png'" OnMouseOver="src='../images/icpp_on.png'" Width="120px" />
                        </td>
                        <td class="auto-style5"></td>
                           <tr>
                               <td class="auto-style5"></td>
                               <td class="auto-style5"><%--Logo--%></td>
                               <td class="auto-style5"></td>
                               <td class="auto-style5"></td>
                               <td class="auto-style5" style="text-align:right"><%--<asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click1" Width="135px" />--%></td>
                               <td style="width: 15%">&nbsp;</td>
                           </tr>
                           <tr>
                               <td colspan="5">&nbsp;</td>
                           </tr>
                          
                    </table>
                        
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>&nbsp;</td>

            </tr>
        </table>
        

    </div>
    </form>
</body>
</html>
