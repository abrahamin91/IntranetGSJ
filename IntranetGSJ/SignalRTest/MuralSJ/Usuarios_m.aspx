<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios_m.aspx.cs" Inherits="SignalRTest.MuralSJ.Usuarios_m" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Plantillas</title>

    <link href="../Content/bootstrap.min.css" rel="stylesheet">
    <link href="../Content/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
    <link href="../Content/bootstrap-fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />

    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/js/fileinput.min.js" type="text/javascript"></script>
    <script src="../Scripts/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 10%;
        }

        .auto-style2 {
            width: 15%;
        }

        .auto-style3 {
            width: 15%;
        }
        .auto-style4 {
            width: 15%;
        }
        .auto-style5 {
            width: 15%;
        }
        .auto-style6 {
            width: 10%;
        }
        .auto-style7 {
            width: 20%;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <img src="../images/logo_muralsj.jpg" border="0" height="150" style="width: 100%">
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
        <!--
            <table style="width: 100%">
                <tr>
                    <td style="width: 80%">&nbsp;
                    </td>
                    <td style="width: 20%" align="right">
                        <asp:Label ID="lbUsuario_k" runat="server" Text="Label"></asp:Label>
                        <a class="btn btn-sm btn-lg active" href="../MuralSJ/inicio_MuralSJ.aspx" role="button">Cerrar Sesión</a>
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
                        <asp:Label ID="Label2_m" runat="server" Text="USUARIOS" Font-Size="20px" Style="width: 100%" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                    </div>
                </td>
                <td>
                    <asp:Image ID="Image2_m" runat="server" Style="width: 100%" ImageUrl="~/images/margen_der.png" />
                </td>
            </tr>
        </table>
        <table style="width: 100%">
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <h3>Usuario:</h3>
                </td>
                <td class="auto-style3" colspan="2">
                    <input id="InputUsuarioN_m" type="text" class="form-control" placeholder="Usuario" runat="server">
                </td>


                <td class="auto-style6">&nbsp;
                </td>
                <td class="auto-style7">&nbsp;
                </td>
            </tr>
            <tr>
               <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <h3>Contraseña:</h3>
                </td>
                <td class="auto-style3" colspan="2">
                    <input id="InputContrasenaN_m" type="text" class="form-control" placeholder="Contraseña" runat="server">
                </td>
                <td class="auto-style4">&nbsp;
                </td>
                <td class="auto-style5">&nbsp;                      
                </td>
                <td class="auto-style6">&nbsp;
                </td>
                <td class="auto-style7">&nbsp;
                </td>
            </tr>
                        <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <h3>Departamento:</h3>
                </td>
                <td class="auto-style3" colspan="2" >
                    <select id="selectDepto_m" class="form-control" runat="server">
                        <option value="0">Seleccionar departamento</option>
                        <option value="1">Recursos Humanos</option>
                        <option value="2">Calidad</option>
                    </select>
                </td>
                             <td class="auto-style4">&nbsp;
                </td>
                <td class="auto-style5">&nbsp;                      
                </td>
                <td class="auto-style6">&nbsp;
                </td>
                <td class="auto-style7">&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    
                </td>
                <td class="auto-style2">
                    <asp:ImageButton ID="ibUBuscar_m" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/buscar_muralsj.png" OnClick="ibUBuscar_m_Click" Width="120px" />
                    
                </td>
                <td class="auto-style3">
                    <asp:ImageButton ID="ibUNUevo_m" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/nuevo_muralsj.png" OnClick="ibUNUevo_m_Click" Width="120px" />
                    
                </td>
                <td class="auto-style4">
                    <asp:ImageButton ID="ibUEditar_m" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/editar_muralsj.png" OnClick="ibUEditar_m_Click" Width="120px" />
                    
                </td>
                <td class="auto-style5">
                    <asp:ImageButton ID="ibUEliminar_m" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/eliminar_muralsj.png" OnClick="ibUEliminar_m_Click" Width="120px" />
                </td>
                <td class="auto-style6">
                    <asp:ImageButton ID="ibUGuardar_m" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/guardar_muralsj.png" OnClick="ibUGuardar_m_Click" Width="120px" />
                </td>
                <td class="auto-style7">&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">&nbsp;
                </td>
                <td class="auto-style3">&nbsp;
                </td>
                <td class="auto-style4">&nbsp;
                </td>
                <td class="auto-style5">&nbsp;                     
                </td>
                <td class="auto-style6">&nbsp;
                </td>
                <td class="auto-style7">&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
             <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">&nbsp;
                </td>
                <td class="auto-style3">&nbsp;                   
                </td>
                <td class="auto-style4">&nbsp;
                </td>
                <td class="auto-style5">
                     
                </td>
                 <td class="auto-style6">&nbsp;
                </td>
            </tr>
        </table>

    </form>
</body>

</html>
