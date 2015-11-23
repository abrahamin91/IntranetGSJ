<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Plantillas_m.aspx.cs" Inherits="SignalRTest.MuralSJ.Plantillas_m" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8"/>
<title>Plantillas</title>
 
<link href="../Content/bootstrap.min.css" rel="stylesheet">
<link href="../Content/bootstrap-fileinput/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
<link href="../Content/bootstrap-fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
 
<script src="../Scripts/jquery-2.1.4.min.js"></script>
<script src="../Scripts/js/fileinput.min.js" type="text/javascript"></script>
<script src="../Scripts/bootstrap.min.js"></script>

 
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
                            <asp:Label ID="Label2_m" runat="server" Text="CARGAR INFORMACIÓN" Font-Size="20px" Style="width: 100%" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                        </div>
                    </td>
                    <td>
                        <asp:Image ID="Image2_m" runat="server" Style="width: 100%" ImageUrl="~/images/margen_der.png" />
                    </td>
                </tr>
            </table>

            
            
            <table style="width: 100%">
                 <tr>
                    
                    <td style="width: 80px">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <label class="control-label">Seleccionar Archivo</label>
                    </td>
                </tr>
              
                <tr>
                    <td>
                    
                    <td>&nbsp;</td>
                        <asp:FileUpload id="fileUpload1" runat ="server"/>
                    </td>
                </tr>
                  <tr>
                    
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                            <asp:ImageButton ID="ibSubir_Archivos_m" runat="server" Height="60px" ImageAlign="Right" ImageUrl="~/images/subir_archivos_muralsj.png" OnClick="bt_Subir_Click" Width="120px" />
                       </td>
                    </tr>
            </table>
        </form>
    </body>
 
</html>


