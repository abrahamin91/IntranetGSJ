<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SignalRTest.ComunikSJ.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-carousel.js"></script>
    <style>
        .auto-style1 {
            width: 20%;
            height: 200px;
        }

        .auto-style2 {
            width: 60%;
            height: 200px;
        }

        .auto-style3 {
            width: 20%;
            height: 200px;
        }

        .cart {
            background-color: black;
            width: 100%;
            height: 55px;
        }

        #sidebar {
            display: block;
        }

        .cart:hover #sidebar {
            display: block;
        }

        .carousel-indicators {
            bottom: 00px;
            height: 20px;
        }


        .carousel-indicatorst li {
            width: 20px;
            height: 20px;
            margin: 0px;
            text-indent: 0;
            cursor: pointer;
            border: none;
            border-radius: 50%;
            background-color: white;
            box-shadow: inset 1px 1px 1px 1px rgba(0,0,0,.5);
        }

        .carousel-indicatorst .active {
            width: 20px;
            height: 20px;
            background-color: red;
        }

        body {
            background-color: black;
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


    <meta charset="utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicio</title>
</head>
<body id="pagebody" runat="server">
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <img src="../Imagenes IntranetSJ/logo_bienvenidos_comunik.jpg" border="0" height="120" style="width: 100%"></td>
            </tr>
        </table>
        <div class="cart">
            <div id="sidebar">
                <table style="width: 100%">
                    <tr style="width: 100%">
                            <nav class="navbar navbar-inverse" style="background-color: #fff; border-color: #fff;">
                                <div class="container-fluid">
                                    <!-- Collect the nav links, forms, and other content for toggling -->
                                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                        <ul class="nav navbar-nav">
                                            <li><a href="../ComunikSJ/Inicio.aspx">Inicio</a></li>
                                            <li><a href="../ComunikSJ/Quienes_somos.aspx">Quienes Somos</a></li>
                                            <li id="formatos">
                                                <a href="../ComunikSJ/Formatos.aspx" role="button" aria-haspopup="true" aria-expanded="false">Formatos <span class="caret"></span></a>
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
                    </tr>
                </table>
            </div>
        </div>

        <table style="width: 100%">
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <table>
                        <tr>
                            <td>
                                <div class="container">
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                        <!-- Indicators -->
                                        <span class="carousel-indicatorst">
                                            <ol class="carousel-indicators">
                                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                                <li data-target="#myCarousel" data-slide-to="3"></li>
                                                <li data-target="#myCarousel" data-slide-to="4"></li>
                                                <li data-target="#myCarousel" data-slide-to="5"></li>
                                                <li data-target="#myCarousel" data-slide-to="6"></li>
                                                <li data-target="#myCarousel" data-slide-to="7"></li>
                                                <li data-target="#myCarousel" data-slide-to="8"></li>
                                                <li data-target="#myCarousel" data-slide-to="9"></li>
                                                <li data-target="#myCarousel" data-slide-to="10"></li>
                                            </ol>
                                        </span>

                                        <!-- Wrapper for slides -->

                                        <div class="carousel-inner" role="listbox">
                                            <div class="tam"></div>
                                            <div class="item active">
                                                <div id="Div1"></div>
                                                <a href="/ComunikSJ/inicio.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/bienvenidos_comunik.jpg" /></a>
                                            </div>
                                            <div class="item">
                                                <div id="ext"></div>
                                                <a href="/ComunikSJ/Quienes_somos.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/quienes_somos_comunik.jpg" /></a>
                                            </div>

                                            <div class="item">
                                                <a href="/ComunikSJ/Formatos.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/formatos_comunik.jpg" /></a>
                                            </div>

                                            <div class="item">
                                                <a href="/ComunikSJ/Organigrama.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/organigrama_comunik.jpg" /></a>
                                            </div>

                                            <div class="item">
                                                <a href="Procesos.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/procesos_comunik.jpg" /></a>
                                            </div>

                                            <div class="item">
                                                <a href="/ComunikSJ/Avisos_y_Eventos.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/avisos_eventos_comunik.jpg" /></a>
                                            </div>

                                            <div class="item">
                                                <a href="/ComunikSJ/Politicas.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/politicas_comunik.jpg" /></a>
                                            </div>

                                            <div class="item">
                                                <a href="/ComunikSJ/Cursos_para_ti.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/cursos_para_ti_comunik.jpg" border="0" /></a>
                                            </div>

                                            <div class="item">
                                                <a href="/ComunikSJ/Capacitaciones.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/capacitaciones_comunik.jpg" border="0" /></a>
                                            </div>

                                            <div class="item">
                                                <a href="/ComunikSJ/Quejas_y_sugerencias.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/quejas_sugerencias_comunik.jpg" border="0" /></a>
                                            </div>

                                            <div class="item">
                                                <a href="/ComunikSJ/Calendario.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();">
                                                    <img style='height: 475px; width: 100%;' src="../Imagenes IntranetSJ/calendario_comunik.jpg" border="0" /></a>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style3">&nbsp;
                </td>
            </tr>
        </table>

       
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

        // haces referencia al elemento (en este caso div) e indicas el tiempo de espera en segundos 
        //if (document.getElementById("sidebar").style.display == "none") {
            //document.getElementById("sidebar").style.display = "normal";

       
        //var waitseconds = 5;
        // Calculas el tiempo en milisegundos y ejecutas la acción 
        //var timeOutPeriod = waitseconds * 1000;
       // var hideTimer = setTimeout(strCmd, timeOutPeriod);

        //$("#sidebar").show().delay(5000).fadeOut();
    </script>
</body>
</html>
