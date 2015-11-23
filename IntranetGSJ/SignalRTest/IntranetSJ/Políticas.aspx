<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Políticas.aspx.cs" Inherits="SignalRTest.IntranetSJ.Políticas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet"/>  
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.theme.min.css" rel="stylesheet"/>
    
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="jquery.bootstrap.autohidingnavbar.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
     <style>
        .carousel-inner {
            width: 100%;
            position: static;
        }
        .cart {
            background-color: #1C1C1C;
             width:100%;
             height:20px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="cart">
            <div id="sidebar">
                <table style="width: 100%">
                    <tr>
                        <nav class="navbar navbar-inverse">
                            <div class="container-fluid">
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav">
                                        <li><a href="../IntranetSJ/Inicio.aspx">Inicio</a></li>
                                        <li><a href="../IntranetSJ/Quienes_somos.aspx">Quines Somos</a></li>
                                        <li class="dropdown">
                                            <a href="../IntranetSJ/Formatos" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Formatos <span class="caret"></span></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Departamentos</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="../IntranetSJ/Organigrama.aspx">Organigrama</a></li>
                                        <li><a href="../IntranetSJ/Procesos.aspx">Procesos</a></li>
                                        <li><a href="../IntranetSJ/Avisos_y_Eventos.aspx">Avisos y Eventos</a></li>
                                        <li><a href="../IntranetSJ/Políticas.aspx">Políticas</a></li>
                                        <li><a href="../IntranetSJ/Cursos_para_ti.aspx">Cursos para ti</a></li>
                                        <li><a href="../IntranetSJ/Capacitaciones.aspx">Capacitaciones</a></li>
                                        <li><a href="../IntranetSJ/Quejas_y_sugerencias.aspx">Quejas y Sugerencias</a></li>
                                        <li><a href="../IntranetSJ/Calendario.aspx">Calendario</a></li>
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
    </form>
</body>
</html>
