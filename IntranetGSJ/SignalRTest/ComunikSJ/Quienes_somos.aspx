﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quienes_somos.aspx.cs" Inherits="SignalRTest.ComunikSJ.Quienes_somos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Quienes Somos</title>
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

        .auto-style1 {
            width: 30%;
            
        }
        .auto-style2 {
            width: 40%;
            flex-align:center;
            
        }
        .auto-style3 {
            width: 30%;
            
        }
         .auto-style4 {
             width: 2%;
            
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <img src="../Imagenes IntranetSJ/logo_quienes_somos_comunik.jpg" border="0" height="120" style="width: 100%"/></td>
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
       
        <table style="width: 100%" border="0">

                <tr><td class="auto-style1"></td>
                   
                 
                <td class="auto-style2">
                     <asp:Label  ID="Label2" runat="server" Text="Nuestra Historia" Font-Italic="true" Font-Size="XX-Large" ForeColor="White"></asp:Label>
               
                    <img id="Img1" src="../Imagenes IntranetSJ/Quienes.png" style="width:900px;height:500px"/>
                 </td>
            <td class="auto-style3"></td>
            </tr>
            <tr><td></td></tr>
            <tr><td></td></tr>
        <tr>
            <td class="auto-style1"></td><td class="auto-style2">
              <asp:Label  ID="Label1" runat="server" Text="Nuestra Filosofia" Font-Italic="true" Font-Size="XX-Large" ForeColor="White"></asp:Label>
            </td><td class="auto-style3"></td>
        </tr> 

        </table>
       
          <table style="width: 100%" border="0">

                <tr><td class="auto-style1"></td>
              
                    
                     <td> <img id="Img5" src="../Imagenes IntranetSJ/mision.jpg" style="width:500px;height:400px" /></td>
                    <td class="auto-style4"></td>
                    <td></td>
               <td>
                   
                     <img id="Img6" src="../Imagenes IntranetSJ/Vision.jpg" style="width:500px;height:400px"/>
              </td>
            <td class="auto-style3"></td>
            </tr>
            <tr><td></td></tr>
               <tr>
            <td>
                &nbsp
            </td>
        </tr> 
        </table>
        <table style="width: 100%" border="0">

                <tr><td class="auto-style1"></td>
                <td class="auto-style2">
                   
               
                    <img id="Img2" src="../Imagenes IntranetSJ/Valores.jpg" style="width:900px;height:500px"/>
                 </td>
            <td class="auto-style3"></td>
            </tr>
            <tr><td></td></tr>
       
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