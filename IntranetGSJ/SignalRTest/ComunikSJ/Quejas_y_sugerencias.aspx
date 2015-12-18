<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quejas_y_sugerencias.aspx.cs" Inherits="SignalRTest.ComunikSJ.Quejas_y_sugerencias" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Quejas y Sugerencias</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet"/>  
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.theme.min.css" rel="stylesheet"/>
    
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="jquery.bootstrap.autohidingnavbar.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
     <style>
         .auto-style1 {
            width: 30%;
        }

        .auto-style2 {
            width: 40%;
        }

        .auto-style3 {
            width: 30%;
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
                    <img src="../Imagenes IntranetSJ/logo_quejas_sugerencias_comunik.jpg" border="0" height="120" style="width: 100%"></td>
            </tr>
        </table>
    <div class="cart">
            <div id="sidebar">
                <table style="width: 100%">
                    <tr>
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
                    </tr>
                </table>
            </div>
        </div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <div class="form-group">
                        <label for="lb_nombre" style="color: #fff">Nombre:</label>
                        <input type="text" class="form-control" id="input_Nombre" placeholder="Nombre" runat="server">
                    </div>
                    <div class="form-group">
                        <label for="lb_mensaje" style="color: #fff">Mensaje:</label>
                        <textarea class="form-control" rows="13" placeholder="Mensaje" id="ta_Quejas_Sugerencias" runat="server" ></textarea>
                    </div>
                    <asp:Button type="submit" class="btn btn-default" OnClick="Button_Enviar_Click" runat="server" Text="Enviar" />
                </td>
                <td class="auto-style2">&nbsp;
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
      </script>
</body>
</html>
