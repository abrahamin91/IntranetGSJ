<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Avisos_y_Eventos.aspx.cs" Inherits="SignalRTest.ComunikSJ.Avisos_y_Eventos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Avisos y Eventos</title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet"/>  
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.theme.min.css" rel="stylesheet"/>
    
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="jquery.bootstrap.autohidingnavbar.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
     <style>
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
        .auto-style1 {
            width: 20%;
            
        }
        .auto-style2 {
            width: 40%;
            
        }
        .auto-style3 {
            width: 30%;
            
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
                    <img src="../Imagenes IntranetSJ/logo_avisos_eventos_comunik.jpg" border="0" height="120" style="width: 100%"></td>
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
        <table style="width: 100%">
            <tr>
                <td>
                    <asp:ListView ID="ImagesList" runat="server"
                        DataKeyNames="idimagen"
                        GroupItemCount="3">
                        <EmptyDataTemplate>
                            No Images found.
                        </EmptyDataTemplate>
                        <LayoutTemplate>
                            <table class="table table-bordered">
                                <tr runat="server" id="groupPlaceholder" />
                            </table>
                        </LayoutTemplate>
                        <GroupTemplate>
                            <tr>
                                <td runat="server" id="itemPlaceholder" />
                            </tr>
                        </GroupTemplate>
                        <ItemTemplate>
                            <td>
                                <asp:Image ID="MyPicture" runat="server"
                                    ImageUrl='<%# "~/MuralSJ/ProcesarImage.ashx?id=" + DataBinder.Eval(Container.DataItem,"idimagen") %>'
                                    Width="430px" Height="280px" />
                            </td>
                        </ItemTemplate>
                    </asp:ListView>
                </td>
            </tr>
        </table>

        <table style="width:100%";>
        <tr>
            <td class="auto-style1">&nbsp;
            </td>
            <td>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate >
                                <div class='<%# Activador_Item_comuniksj(Eval("num_plant")) %>'>
                                <img  alt="" style='height: 400px; width: 800px' src='<%# "../MuralSJ/ProcesarImage.ashx?id=" + DataBinder.Eval(Container.DataItem,"idimagen") %>' />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
             </td>
        </tr>
        </table>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="/Scripts/jquery-2.1.4.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="/Scripts/bootstrap.min.js"></script>
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
