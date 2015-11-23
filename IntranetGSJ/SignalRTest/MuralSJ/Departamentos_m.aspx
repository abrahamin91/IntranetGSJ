<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Departamentos_m.aspx.cs" Inherits="SignalRTest.MuralSJ.Departamentos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../Scripts/bootstrap.min.js"></script>
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
                    <td>
                        <img src="../images/logo_muralsj.jpg" border="0" height="150" style="width: 100%" />
                    </td>
                </tr>
            </table>
            <table style="width: 100%">
                <tr>
                    <nav class="navbar navbar-inverse">
                        <div class="container-fluid" style="float: right;">
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li><a href="../MuralSJ/Departamentos_m.aspx">Inicio</a></li>
                                    <li id="mUsuarios_m" runat="server"><a href="../MuralSJ/Usuarios_m.aspx">Usuarios</a></li>
                                    <li><a href="../MuralSJ/inicio_MuralSJ.aspx">Cerrar Sesión</a></li>
                                </ul>
                            </div>
                            <!-- /.navbar-collapse -->
                        </div>
                        <!-- /.container-fluid -->
                    </nav>
                </tr>
            </table>
            <!--  <table style="width: 100%">
                <tr>
                    <td style="width: 80%">&nbsp;
                    </td>
                    <td style="width: 20%" align="right">
                        <asp:Label ID="lbUsuario_k" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
               -->
            <table style="width: 100%">
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1_m" runat="server" Style="width: 100%" ImageUrl="~/images/margen_izq.png" />
                    </td>
                    <td>
                        <div style="margin-left: auto; margin-right: auto; text-align: center;">
                            <asp:Label ID="Label2_m" runat="server" Text="DEPARTAMENTOS" Font-Size="20px" Style="width: 100%" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                        </div>
                    </td>
                    <td>
                        <asp:Image ID="Image2_m" runat="server" Style="width: 100%" ImageUrl="~/images/margen_der.png" />
                    </td>
                </tr>
            </table>
            <table style="width: 100%;">
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:ImageButton ID="ibRecurosH_m" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_rh_dptos.png" OnClick="ibRecurosH_m_Click" OnMouseOut="src='../images/ic_rh_dptos.png'" OnMouseOver="src='../images/ic_rh_on_dptos.png'" Width="120px" />
                    </td>
                    <%--boton de cuajado--%>
                    <td class="auto-style5">&nbsp;
                            <asp:ImageButton ID="ibcalidad_m" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_cal_dptos.png" OnClick="ibcalidad_m_Click" OnMouseOut="src='../images/ic_cal_dptos.png'" OnMouseOver="src='../images/ic_cal_on_dptos.png'" Width="120px" />
                    </td>
                    <td class="auto-style5"></td>
                    <tr>
                        <td class="auto-style5">
                            <h4></h4>
                        </td>
                        <td class="auto-style5">
                            <h4></h4>
                        </td>
                        <td class="auto-style5"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style5" style="text-align: right"></td>
                        <td style="width: 15%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="5">&nbsp;</td>
                    </tr>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
