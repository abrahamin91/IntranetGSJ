<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Procesos.aspx.cs" Inherits="SignalRTest.ComunikSJ.Procesos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Procesos</title>
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <img src="../Imagenes IntranetSJ/logo_procesos_comunik.jpg" border="0" height="120" style="width: 100%"></td>
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
                <td>&nbsp&nbsp&nbsp&nbsp   
                    <li class="efecto">
                        <button style="background: #fff; color:red; border: #fff;" type="button" id="uno" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                          Proceso pára solicitar tus vacaciones
                        </button>
                    </li>

                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">Proceso</h4>
                                </div>
                                <div class="modal-body">


                                    <p>
                                        1.- El 30 de noviembre de cada año, Capital Humano enviará por correo electrónico un reporte a cada gerente de área donde incluirá el nombre del trabajador, departamento, área, puesto, fecha de ingreso (antigüedad), vacaciones devengadas y saldo actual de vacaciones.
       &hellip;
                                    </p>
                                    <p>
                                        2.- El Gerente de cada área analizará con los Jefes y Supervisores o Encargados la programación de las vacaciones de su personal, de manera anticipada.
     &hellip;
                                    </p>
                                    <p>
                                        3.- En caso de que no aplique la programación anticipada al inicio de año, cada trabajador debe solicitar los días de vacaciones que requiera y una vez pre-autorizados, solicita a Capital Humano el formato para formalizarlos.
 &hellip;
                                    </p>

                                    <p>
                                        4.-Este formato se puede conseguir desde COMUNIK en la seccion de Formatos,  click en Recurso Humanos desde ahi lo puedes descargar
 &hellip;
                                    </p>

                                    <p>
                                        5.- Al momento de que el trabajador solicita el “Formato de Vacaciones, Capital Humano le debe confirmar el saldo de vacaciones para asegurar el llenado correcto del mismo.
 &hellip;
                                    </p>
                                    <p>
                                        6.- El trabajador hace el llenado del formato sin tachaduras ni enmendaduras, cuidando que no quede información pendiente, firma el formato y recaba las firmas del Jefe inmediato y Gerente de Área. 
 &hellip;
                                    </p>
                                    <p>
                                        7.- El trabajador entrega el “Formato de Vacaciones” a Capital Humano.
           &hellip;
                                    </p>
                                    <p>
                                        8.- Capital Humano valida el adecuado llenado del formato para su autorización, en caso de haber datos incorrectos se solicitarán las correcciones que apliquen, una vez validado el formato firma el documento.
           &hellip;
                                    </p>
                                    <p>
                                        9.- Capital humano registrará las vacaciones en su programa anual para control interno. 
           &hellip;
                                    </p>
                                    <p>
                                        10.-Capital Humano procesará en el Sistema de Nominas las vacaciones de acuerdo al periodo de pago donde aplique.
           &hellip;
                                    </p>
                                    <p>
                                        11.-Capital Humano programa el pago de la Prima Vacacional de los días de vacaciones programados.
           &hellip;
                                    </p>
                                    <p>
                                        11.-Capital Humano elaborará la Constancia de vacaciones, una vez que el trabajador las haya disfrutado.
           &hellip;
                                    </p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </td>
            </tr>

            <tr>
                <td>&nbsp&nbsp&nbsp&nbsp

                </td>
            </tr>

            <tr>
                <td>&nbsp&nbsp&nbsp&nbsp
                    <button style="background: #fff; color:red; border: #fff;" type="button" id="dos" class="btn btn-primary btn-lg" data-toggle="modal"  data-target="#Dialog2">
                      Proceso pára solicitar un Prestamo
                    </button>
                    <!-- Modal -->
                    <div class="modal fade" id="Dialog2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="H1">Proceso</h4>
                                </div>
                                <div class="modal-body">


                                    <p>
                                        1.- El área de Capital Humano recibe las solicitudes las cuales se pueden adquirir en COMUNIK en el area de formatos, Recursos humanos 
           
&hellip;
                                    </p>

                                    <p>
                                        2.-Capital Humano verifica será la encargada de validar que cumplan con los lineamientos establecidos en la presente política para posteriormente
    examinar con Tesorería la disponibilidad del fondo de préstamos.
&hellip;
                                    </p>
                                    <p>
                                        3.-La solicitud de préstamo que cumpla con todos los requisitos será turnada al Comité de préstamos para su autorización o rechazo (C.P. Jesús Alberto Gonzalez de la Rosa, Ing. Roberto Cummings Alonso).
&hellip;
                                    </p>
                                    <p>
                                        4.- Una vez autorizado el préstamo, Capital Humano entrega copia de la solicitud a Tesorería para que genere el cheque, pagaré y tabla de amortización.
&hellip;
                                    </p>
                                    <p>
                                        5.- Capital Humano entregará el monto del préstamo directamente al trabajador y recabará las firmas del pagaré y tabla de amortización tanto del solicitante como del aval, así como de anexar copia de la IFE de cada uno.
&hellip;
                                    </p>
                                    <p>
                                        6.- Capital Humano entregará a Tesorería los documentos firmados para resguardo. 
&hellip;
                                    </p>
                                    <p>
                                        7.- Capital Humano efectuará los descuentos vía nómina y los reportará a Tesorería para la aplicación de pagos y control de saldos.  
&hellip;
                                    </p>
                                    <p>
                                        8.- En caso de pagos anticipados Tesorería los recibirá para su aplicación y notificará a Capital Humano para la actualización del saldo y/o cancelación de descuentos.
&hellip;
                                    </p>
                                    <p>
                                        9.-Una vez pagado en su totalidad el préstamo, Tesorería entregará el pagaré original a Capital Humano para la devolución al trabajador.
&hellip;
                                    </p>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
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
