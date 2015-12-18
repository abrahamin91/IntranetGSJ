<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MuralSJ.aspx.cs" Inherits="SignalRTest.MuralSJ.MuralSJ" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta  charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MuralSJ de Información</title>

       <!-- Bootstrap -->
    <link rel="stylesheet" href="../Content/bootstrap.min.css">
    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-carousel.js"></script>

    <style>
        .auto-style1 {
            width: 10%;
            
        }
        .auto-style2 {
            width: 80%;
            
        }
        .auto-style3 {
            width: 10%;
            
        }
        .carousel-inner > .item > img,
      .carousel-inner > .item > a > img {
          width: 100%;
          margin: auto;
      }
        .drawingpix	{ position:absolute;top:-50px;left:-50px;}
.welcome{  position:fixed; background:#FFF; z-index:100; }
.centered {margin:0;padding:0;position: fixed;width:400px;height:100px;top: 50%;left: 50%;margin-top: -60px;margin-left: -200px;background:#FFFFFF;font-family:Impact;font-size:6em;color:#9927EF;
}
.welcome:hover{
z-index:102;
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
            <asp:Label ID="lbtipo" runat="server"  Visible="false"></asp:Label>
             <asp:Label ID="Lb1" runat="server"></asp:Label>
          <table style="width:100%";>
        <tr>
            <td>
                <div id="myCarousel_todo" class="carousel slide" data-ride="carousel">
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <asp:Repeater ID="rpt_todo" runat="server">
                            <ItemTemplate >
                                <div class='<%# Activador_Item(Eval("num_plant")) %>'>                                 
                                        <%# mostrar_item(Eval("idimagen"),Eval("tipo")) %> 
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
             </td>
        </tr>
        </table>

   
    <script type="text/javascript">
        var tipo;
        $(document).ready(function () {
            $('#myCarousel_todo').on('slide.bs.carousel', function (e) {
                var slideFrom = $(this).find('.active').index();
                if ((slideFrom + 1) == "<%= rpt_todo.Items.Count %>") {
                    window.location.reload();
                }
            });
        });
        $('#myCarousel_todo').on('slid.bs.carousel', function (e) {
            $('.item').find('video').play();
        }
        );

</script>
            <script>
                var t;
                t = setTimeout("$('#myCarousel_todo').carousel({interval: 5000});", "<%# Eval("duracion")%>");

                $('#myCarousel_todo').on('slid.bs.carousel', function () {
                    var prueba = $('.item').find('.active').contents().find('video')[0].play();
                    var rpt = document.getElementById('rpt_todo');
                    alert(rpt.tipo);
                    if($(prueba != null)){
                        $('.item').find('video')[0].play();
                    }
             clearTimeout(t);
             $('#myCarousel_todo').carousel('pause');
             t = setTimeout("$('#myCarousel_todo').carousel();", 15000);
         });
        </script>
        </form>
</body>
    
</html>
