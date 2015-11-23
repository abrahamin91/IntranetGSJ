<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="monitor_empaque.aspx.cs" Inherits="SignalRTest.empaque.monitor_empaque" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Central de Monitoreo Cuajado - San Jacinto</title>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <img src="../images/logo_transparente.png" border="0" alt="" height="120" style="width: 150px"><br />
                    <span class="letraTituloCentralMonitoreo">Central de Monitoreo Empaque</span>                   
                </td>              
            </tr>
        </table>
        <input type="hidden" id="message" />
        &nbsp;
        &nbsp;
        <input type="hidden" id="displayname" />
        
        <table align="center">
            <tr>
                <td align="center">
                    <span class="letraTituloColumnaIzq">Todos los registros</span>
                </td>
                <td align="center">
                    <span class="letraTituloColumnaDer">Registros fuera de rango</span>
                </td>
            </tr>
            <tr>
                <td valign="top">                   
                    <div id="muestraRegistros">
                        <ul id="discussion">
                            <li>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label> 
                            </li>
                        </ul>
                    </div>
                </td>
                <td valign="top">         
                    <div id="muestraRegistros1">
                        <ul id="discussion2">
                            <li>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label> 
                            </li>
                        </ul>
                    </div>
                </td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
