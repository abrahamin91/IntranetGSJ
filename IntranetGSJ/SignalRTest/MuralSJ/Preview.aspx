<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preview.aspx.cs" Inherits="SignalRTest.MuralSJ.Preview" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MuralSJ de Información</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="../Content/bootstrap.min.css">
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-carousel.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        .auto-style1 {
            width: 20%;
        }

        .auto-style2 {
            width: 60%;
        }

        .auto-style3 {
            width: 20%;
        }

        .carousel-inner > .item > img,
        .carousel-inner > .item > a > img {
            width: 100%;
            margin: auto;
        }
    </style>
</head>
<body style="background-color: black">
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <img src="../images/logo_muralsj.jpg" border="0" height="150" style="width: 100%"></td>
            </tr>
        </table>
        <table style="width: 100%">
            <tr>
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid" style="float: right;">
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li><a href="../MuralSJ/Departamentos_m.aspx">Inicio</a></li>
                                <li id="mUsuarios_m" runat="server"><a href="../MuralSJ/Usuarios_m.aspx">Usuarios</a></li>
                                <li><a href="../MuralSJ/inicio_MuralSJ.aspx">Cerrar Sesión</a></li>
                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                    <!-- /.container-fluid -->
                </nav>
            </tr>
        </table>
        <table style="width: 100%">
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image1_m" runat="server" Style="width: 100%" ImageUrl="~/images/margen_izq.png" />
                </td>
                <td>
                    <div style="margin-left: auto; margin-right: auto; text-align: center;">
                        <asp:Label ID="Label2_m" runat="server" Text="PREVIEW" Font-Size="20px" Style="width: 100%" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                    </div>
                </td>
                <td>
                    <asp:Image ID="Image2_m" runat="server" Style="width: 100%" ImageUrl="~/images/margen_der.png" />
                </td>
            </tr>
        </table>


       <table style="width:100%";>
        <tr>
            <td class="auto-style1">&nbsp;
            </td>
            <td class="auto-style2">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate >
                                <div class='<%# Activador_Item(Eval("num_plant")) %>'>
                                <img  alt="" style='height: 500px; width: 100%' src='<%# "../MuralSJ/ProcesarImage.ashx?id=" + DataBinder.Eval(Container.DataItem,"idimagen") %>' />
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
             </td>
             <td class="auto-style3">&nbsp;
            </td>
        </tr>
        </table>
    </form>
     <script>
         $('.myCarousel').carousel({
             auto: false,
             period: 3000,
             duration: 2000,
             effect: fade,
             markers: {
                 type: "square"
             }
         });
        </script>
</body>
</html>
