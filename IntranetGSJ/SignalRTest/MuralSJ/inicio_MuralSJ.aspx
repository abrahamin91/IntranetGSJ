<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio_MuralSJ.aspx.cs" Inherits="SignalRTest.MuralSJ.inicio_MuralSJ" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mural de Información</title>

    <!-- Bootstrap -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .auto-style1 {
            width: 35%;
            
        }
        .auto-style2 {
            width: 20%;
            
        }
        .auto-style3 {
            width: 45%;
            
        }
        </style>
</head>
<body style="background: #eee;">
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <img src="../images/logo_muralsj.jpg" border="0" height="150" style="width: 100%"></td>
            </tr>
        </table>
        <table style="width: 100%">
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <div class="page-header">
                        <h3>Login</h3>
                    </div>
                </td>
                <td class="auto-style3">&nbsp;
                </td>
            </tr>

            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <label for="lbUsuario_k">Usuario</label>
                </td>
                <td class="auto-style3">&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                        <input type="text" class="form-control" id="InputUsuario_k" runat="server" placeholder="Usuario">
                    </div>
                </td>
                <td class="auto-style3">&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <label for="lbContrasena_k">Contraseña</label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <div class= "input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-star"></span></span>
                        <input type="password" class="form-control" id="InputContrasena_k" runat="server" placeholder="Contraseña">
                    </div>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button_Inicio" class="btn btn-primary" runat="server" OnClick="Button_Inicio_Click_k" Text="Login" />
                </td>
            </tr>

        </table>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="/Scripts/jquery-2.1.4.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="/Scripts/bootstrap.min.js"></script>
    </form>
</body>
</html>