<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SimpleChat.aspx.cs" Inherits="SignalRTest.SimpleChat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Referencias al script -->
    <!-- Librería de JQuery -->
    <script src="Scripts/jquery-1.6.4.min.js" type="text/javascript"></script>
    <!-- Librería de SignalR -->
    <script src="Scripts/jquery.signalR-1.0.0-rc1.js" type="text/javascript"></script>
    <!-- Referencia al script de Hubs autogenerado -->
    <!--<script src="/signalr2/hubs"></script>-->
    <script type="text/javascript" src='<%= ResolveClientUrl("~/signalr/hubs") %>'></script>

    

    <!-- Script para actualizar la página con la nueva información -->
    <script type="text/javascript">
        function getParameterByName(name) {
            name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
            var regexS = "[\\?&]" + name + "=([^&#]*)";
            var regex = new RegExp(regexS);
            var results = regex.exec(window.location.search);
            if (results == null)
                return "";
            else
                return decodeURIComponent(results[1].replace(/\+/g, " "));
        }

        function avisoNoHayCita() {

            window.alert('El paciente no tiene expediente');

        }



        $(function () {
            //Declara un proxy para referenciar el hub.
            var chat = $.connection.chathub;

            //Crea una función para que el hub pueda llamar a los mensajes en el broadcast
            chat.client.broadcastMessage = function (name, message, divi) {
                //Codificar en HTML el mensaje y nombre para mostrar
                var encodedName = $('<div />').text(name).html();
                var encodedMsg = $('<div />').text(message).html();
                var encodeddivi = $('<div />').text(divi).html();

                //Agrega el mensaje a la página
                //                $('#discussion').prepend('<li><strong>' + encodedName
                //                    + '</strong>:&nbsp;&nbsp;' + message + '</li>');
                $('#discussion').prepend('<li><br />' + message + '</li>');

                if (encodeddivi > 0) {
                    $('#discussion2').prepend('<li><br />' + message + '</li>');
                }
            };

            //Obtiene el nombre de usuario y lo guarda para incrustarlo en los mensajes.
            //$('#displayname').val(prompt('Pon tu nombre:', ''));
           // $('#displayname').val('2');

            //Poner el foco inicial en el área del mensaje
            //$('#message').focus();




            // Inicia la conexión.
            $.connection.hub.start().done(function () {

                var parametro = getParameterByName("val");

                $('#sendmessage').click(function () {
                    chat.server.send($('#displayname').val(), $('#message').val());
                    $('#message').val('').focus();
                });


                if (parametro == "123") {
                    $('#sendmessage').before(function () {
                        // Llama al metodo Send en el hub.
                        chat.server.send($('#displayname').val(), $('#message').val());
                        // Llama la caja de texto y resetea el foco para el siguiente comentario.
                        $('#message').val('').focus();
                    });
                }

            });
        });

    </script>

  

    <title>Central de Monitoreo - San Jacinto</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
    <style type="text/css">
        .auto-style1 {
            height: 94px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div class="container">
        <table align="center">
            <tr>
                <td class="auto-style1">
                    &nbsp;<img src="images/logo_transparente.png" border="0" alt="" height="120" style="width: 150px"><br />
                    <span class="letraTituloCentralMonitoreo">Central de Monitoreo</span>                   
                </td>              
            </tr>
        </table>
        <input type="hidden" id="message" />
        <input type="button" id="sendmessage" value="Enviar" onclick="return sendmessage_onclick()" />
        <input type="hidden" id="displayname" />
        
        <table align="center">
            <tr>
                <td align="center">
                    <span class="letraTituloColumnaIzq">Todos los registros</span>
                </td>
                <td align="center">
                    <span class="letraTituloColumnaDer">Registros fuera de rango</span>
                </td>
            </tr>
            <tr>
                <td valign="top">                   
                    <div id="muestraRegistros">
                        <ul id="discussion">
                            <li>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label> 
                            </li>
                        </ul>
                    </div>
                </td>
                <td valign="top">         
                    <div id="muestraRegistros1">
                        <ul id="discussion2">
                            <li>
                            <br />
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label> 
                            </li>
                        </ul>
                    </div>
                </td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
