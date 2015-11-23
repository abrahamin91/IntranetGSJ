<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="SignalRTest.IntranetSJ.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        .carousel-indicators {
           bottom: 20px;
        }
        body {
            background-color: black;
        }
    </style>


    <meta charset="utf-8"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body id="pagebody" runat="server">
  
    
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
    <table style="width:100%"><tr><td>
<div class="container">
  <br/>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators" >
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
    </ol>

    <!-- Wrapper for slides -->
           
    <div class="carousel-inner" role="listbox">
        <div class="tam"></div>
      <div class="item active">       
          <div id="ext"></div>   
      <a href="/IntranetSJ/Quienes_somos.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img src="../Imagenes IntranetSJ/Quienes_Somos.jpg"/></a>         
      </div>

      <div class="item">
        <a href="/IntranetSJ/Formatos.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img  src="../Imagenes IntranetSJ/Formatos.jpg" /></a>
      </div>
    
        <div class="item">
        <a href="/IntranetSJ/Organigrama.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img  src="../Imagenes IntranetSJ/Organigrama.jpg" /></a>
      </div>

        <div class="item">
        <a href="Procesos.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img  src="../Imagenes IntranetSJ/Procesos.jpg" /></a>
      </div>

        <div class="item">
        <a href="/IntranetSJ/Avisos_y_Eventos.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img  src="../Imagenes IntranetSJ/Avisos_y_Eventos.jpg" /></a>
      </div>

        <div class="item">
        <a href="/IntranetSJ/Politicas.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img  src="../Imagenes IntranetSJ/Politicas.jpg" /></a>
      </div>

        <div class="item">
        <a href="/IntranetSJ/Cursos_para_ti.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img   src="../Imagenes IntranetSJ/Cursos_para_ti.jpg" border="0"/></a>
      </div>

        <div class="item">
        <a href="/IntranetSJ/Capacitaciones.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img  src="../Imagenes IntranetSJ/Capacitaciones.jpg" border="0"/></a>
      </div>

      <div class="item">
        <a href="/IntranetSJ/Quejas_y_sugerencias.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img  src="../Imagenes IntranetSJ/Quejas_y_sugerencias.jpg" border="0"/></a>
      </div>

         <div class="item">
        <a href="/IntranetSJ/Calendario.aspx" onclick="document.forms[0].action='script_que_recibe_los_datos.xxx';document.forms[0].submit();"><img  src="../Imagenes IntranetSJ/Calendario.jpg" border="0"/></a>
      </div>

    </div>

  </div>
    </div></td></tr>
    </table>
        </form>
</body>
</html>
