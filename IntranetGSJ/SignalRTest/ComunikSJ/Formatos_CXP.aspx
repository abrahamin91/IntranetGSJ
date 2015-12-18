<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formatos_CXP.aspx.cs" Inherits="SignalRTest.ComunikSJ.Formatos_CXP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Formatos Cuentas por Pagar</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.theme.min.css" rel="stylesheet" />

    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="jquery.bootstrap.autohidingnavbar.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style>
        .cart {
            background-color: #fff;
            width: 100%;
            height: 55px;
        }

        #sidebar {
            display: none;
        }

        .cart:hover #sidebar {
            display: block;
        }

        body {
            background-color: white;
        }

        .navbar-inverse .navbar-nav > li > a:focus, .navbar-inverse .navbar-nav > li > a:hover {
            color: #f00;
            background-color: transparent;
        }

        .dropdown-menu > li > a:hover {
            color: #f00;
            background-color: transparent;
        }
    </style>
</head>
<body>
    <form id="form_rh" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <img src="../Imagenes IntranetSJ/logo_formatos_comunik.jpg" border="0" height="120" style="width: 100%"></td>
            </tr>
        </table>
        <div class="cart">
            <div id="sidebar">
                <table style="width: 100%">
                    <tr>
                        <nav class="navbar navbar-inverse" style="background-color: #F5F5F5; border-color: #fff;">
                            <div class="container-fluid">
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav">
                                        <li><a href="../ComunikSJ/Inicio.aspx">Inicio</a></li>
                                        <li><a href="../ComunikSJ/Quienes_somos.aspx">Quines Somos</a></li>
                                        <li id="formatos">
                                            <a href="../ComunikSJ/Formatos.aspx" role="button" aria-haspopup="true" aria-expanded="false">Formatos <span class="caret"></span></a>
                                            <ul class="dropdown-menu" style="background-color: #F5F5F5; border-color: #fff;">
                                                <li><a href="../ComunikSJ/Formatos_rh.aspx">Recursos Humanos</a></li>
                                                <li><a href="../ComunikSJ/areas_finanzas_int.aspx">Finanzas</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="../ComunikSJ/Organigrama.aspx">Organigrama</a></li>
                                        <li><a href="../ComunikSJ/Procesos.aspx">Procesos</a></li>
                                        <li><a href="../ComunikSJ/Avisos_y_Eventos.aspx">Avisos y Eventos</a></li>
                                        <li><a href="../ComunikSJ/Politicas.aspx">Políticas</a></li>
                                        <li><a href="../ComunikSJ/Cursos_para_ti.aspx">Cursos para ti</a></li>
                                        <li><a href="../ComunikSJ/Capacitaciones.aspx">Capacitaciones</a></li>
                                        <li><a href="../ComunikSJ/Quejas_y_sugerencias.aspx">Quejas y Sugerencias</a></li>
                                        <li><a href="../ComunikSJ/Calendario.aspx">Calendario</a></li>
                                    </ul>
                                </div>
                                <!-- /.navbar-collapse -->
                            </div>
                            <!-- /.container-fluid -->
                        </nav>
                    </tr>
                </table>
            </div>
        </div>
        <br />
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
                        <asp:Label ID="Label2_m" runat="server" Text="Cuentas por Pagar" Font-Size="20px" Style="width: 100%" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                    </div>
                </td>
                <td>
                    <asp:Image ID="Image2_m" runat="server" Style="width: 100%" ImageUrl="~/images/margen_der.png" />
                </td>
            </tr>
        </table>
        <asp:GridView ID="Formatos_CporP" HeaderStyle-BackColor="#000000" HeaderStyle-ForeColor="White"
            runat="server" AutoGenerateColumns="False" CssClass="table table-bordered"
            DataKeyNames="Numero" ForeColor="#333333" Width="100%" 
            OnSelectedIndexChanging="Formatos_CporP_SelectedIndexChanging" Height="90px">

            <Columns>

                <asp:BoundField DataField="Numero" HeaderText="No." ItemStyle-Width="1" HeaderStyle-HorizontalAlign="left" ItemStyle-HorizontalAlign="Center">
                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>

                    <ItemStyle HorizontalAlign="Center" Width="1px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre Formato" ItemStyle-Width="400" ControlStyle-Height="50px" HeaderStyle-HorizontalAlign="left" ItemStyle-HorizontalAlign="Center">


                    <ControlStyle Height="50px"></ControlStyle>


                    <HeaderStyle HorizontalAlign="Left"></HeaderStyle>


                    <ItemStyle HorizontalAlign="Center" Width="200px"></ItemStyle>
                </asp:BoundField>

                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Imagenes IntranetSJ/descarga.jpg" ControlStyle-Height="30px" ControlStyle-Width="25px" ShowSelectButton="True" ControlStyle-Font-Names="mn">


                    <ControlStyle Font-Names="mn" Height="30px" Width="25px"></ControlStyle>
                </asp:CommandField>


            </Columns>


            <HeaderStyle BackColor="Black" ForeColor="White"></HeaderStyle>


        </asp:GridView>

    </form>
    <script type="text/javascript">

        $(document).ready(function () {
            $("#formatos").hover(

             function () {//onmouseover

                 $("#formatos ul").slideDown();

             },
             function () {//onmouseout
                 $("#formatos ul").slideUp();
             });
        });
    </script>
</body>
</html>
