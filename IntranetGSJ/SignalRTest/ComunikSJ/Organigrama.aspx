<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Organigrama.aspx.cs" Inherits="SignalRTest.ComunikSJ.Organigrama" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Organigrama</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.theme.min.css" rel="stylesheet" />

    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/wheelzoom.js"></script>
    <script src="jquery.bootstrap.autohidingnavbar.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style>
        .auto-style1 {
            width: 25%;
            
        }
        .carousel-inner {
            width: 100%;
            position: static;
        }

        .cart {
            background-color: black;
             width:100%;
             height:55px;
        }

        #sidebar {
            display: none;
        }

        .cart:hover #sidebar {
            display: block;
        }

        body {
            background-color: black;
        }
        .navbar-inverse .navbar-nav > li > a:focus, .navbar-inverse .navbar-nav > li > a:hover {
            color: #f00;
            background-color: transparent;
        }
        #myModal3 {
            top:5%;
            right:50%;
            outline: none;
        }
        .dropdown-menu > li > a:hover {
            color: #f00;
            background-color: transparent;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <img src="../Imagenes IntranetSJ/logo_organigrama_comunik.jpg" border="0" height="120" style="width: 100%"></td>
            </tr>
        </table>
        <div class="cart">
            <div id="sidebar">
                <table style="width: 100%">
                    <tr>
                        <td>
                            <nav class="navbar navbar-inverse" style="background-color: #fff; border-color: #fff; ">
                                <div class="container-fluid">
                                    <!-- Collect the nav links, forms, and other content for toggling -->
                                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                        <ul class="nav navbar-nav">
                                            <li><a href="../ComunikSJ/Inicio.aspx">Inicio</a></li>
                                            <li><a href="../ComunikSJ/Quienes_somos.aspx">Quines Somos</a></li>
                                            <li id="formatos">
                                                <a href="../ComunikSJ/Formatos.aspx"  role="button" aria-haspopup="true" aria-expanded="false">Formatos <span class="caret"></span></a>
                                                <ul class="dropdown-menu">
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

                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <table style="width: 100%">
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;
                </td>
                <td>
                    <!-- Organigrama Planta -->
                    <button style="background: #fff; color:red; border: #fff;" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target=".modal-lg-pta">Organigrama Planta</button>

                    <div class="modal fade modal-lg-pta" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" style="top:5%; right:12%; outline: none;">
                            <div class="modal-content">
                                <asp:TemplateField HeaderText="Fard">
                                    <img class="imagen1" src='../Imagenes IntranetSJ/ORGANIGRAMA_PLANTA.jpg' width="1200" height="500" />
                                </asp:TemplateField>
                            </div>
                        </div>
                    </div>
                </td>
                <td>
                    <!-- Organigrama Administrativo -->
                    <button style="background: #fff; color: #f00; border: #fff;" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target=".modal-lg-admon">Organigrama Administrativo</button>

                    <div class="modal fade modal-lg-admon" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                        <div class="modal-dialog modal-lg" style="top:5%; right:16.5%; outline: none;">
                            <div class="modal-content">
                                <asp:TemplateField HeaderText="Fard">
                                    <img class="imagen2" src='../Imagenes IntranetSJ/ORGANIGRAMA_ADMITIVO.jpg' width="1350" height="500" />
                                </asp:TemplateField>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </form>
    <script>
        wheelzoom(document.querySelector('img.imagen1'));
        wheelzoom(document.querySelector('img.imagen2'));
        </script>
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
