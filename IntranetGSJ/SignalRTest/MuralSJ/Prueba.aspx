<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="SignalRTest.MuralSJ.Prueba" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../Content/bootstrap.min.css">
  <script src="../Scripts/jquery-2.1.4.min.js"></script>
  <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-carousel.js"></script>
    <script type="text/javascript" src="../Scripts/jwplayer.js"></script>
 <link href="../Content/dropzone.css" rel="stylesheet" type="text/css" />
 <script src="../Scripts/dropzone.js" type="text/javascript"></script>
    <script src="../Scripts/jwplayer.js" type="text/javascript"></script>

  <style>
      .carousel-inner > .item > img,
      .carousel-inner > .item > a > img {
          width: 100%;
          margin: auto;
      }
      .drawingpix	{ position:absolute;top:-50px;left:-50px;}
.welcome{  position:fixed; background:black; z-index:100; }
.centered {margin:0;padding:0;position: fixed;width:400px;height:100px;top: 50%;left: 50%;margin-top: -60px;margin-left: -200px;background:black;font-family:Impact;font-size:6em;color:#9927EF;
}
      .welcome:hover {
          z-index: 102;
      }
  </style>
</head>
<body style="background-color: black">
    <form id="form1" runat="server">
<div class="container">
  <br>
     <Label ID="Label1" style="color: white"></Label>
    <table style="width:100%";>
        <tr>
            <td>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators 
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>-->

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
           
          <div class="item active" data-interval="5000">
              <img src="/temp_imagenes/quesovaquero.jpg" alt="Chania" style='height: 748px; width: 800px'>
          </div>
          <div class="item">
           <video id="mediaplayer" autoplay="true">JW Player goes here</video>
          </div>
          <div class="item" data-interval="10000">
              <img src="/temp_imagenes/campana.jpg" alt="Chania" style='height: 748px; width: 800px'>
          </div>

          <div class="item" data-interval="3000">
              <img src="/temp_imagenes/prueba1.jpg" alt="Chania" style='height: 748px; width: 800px'>
          </div>
         
      </div>

      <!-- Left and right controls 
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>-->                                                                                 
  </div>
      </td>
      </tr>
        </table>
    
<div id="dZUpload" class="dropzone" runat="server" style="width:200px; height:200px;">
         <div class="dz-default dz-message">Cargar Imagen<br /><span class="glyphicon glyphicon-picture"></span></div>
</div>


    <asp:Button ID="Button_prueba"  runat="server"  Text="Subir Imagen"  OnClick="Cargar"/>
   
    <div>
        <asp:Button ID="z_btnAceptar" runat="server" Text="Aceptar" onclick="z_btnAceptar_Click" />
        <br /><br />
        <div onclick="z_metjsClick()" style="cursor:pointer;">Click aqui para invocar el CodeBehind</div>
        <br />
        <asp:Label ID="z_lblMensaje" runat="server"></asp:Label>
    </div>
<script src='/Scripts/fullscreen.js'></script>
    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAI1JREFUeNrsV0EOwCAI6w/8/6lP8gk8ZTuPLUoirltCEy8mpY0iIAAcg0WsgxONreIRE4+bhnzYr05AkgO2wQQHV3wxwAmBieJe6xY8w0Q0BlcDZHOngXqA1zPziE68BTjNmWDGM4qKexNEoVAoJPVzWSGSlmJpM3q1HcsHEvlI9omhtL5m9TWT5cApwAD/IigEZttSgAAAAABJRU5ErkJggg==" 
        id="fsicon" style="opacity: 0.5; cursor: pointer; z-index: 2000; top: 10px; right: 10px; position: fixed;">
<script>
    
   $('.myCarousel').carousel({
        auto: false
   });/*
   $myCarousel.on("slide.bs.carousel", function (event) {
       // Bootstrap carousel marks the current slide (the one we're exiting) with an 'active' class
       var $currentSlide = $myCarousel.find(".active iframe");

       // exit if there's no iframe, i.e. if this is just an image and not a video player
       if (!$currentSlide.length) { return; }

       // pass that iframe into Froogaloop, and call api("pause") on it.
       var player = Froogaloop($currentSlide[0]);
       player.api("pause");

   });
   
  
    var t;
    t = setTimeout("$('#myCarousel').carousel({interval: 1000});", 8000);

    $('#myCarousel').on('slid.bs.carousel', function () {
        clearTimeout(t);
        $('#myCarousel').carousel('pause');
        t = setTimeout("$('#myCarousel').carousel();", 15000);
    });
    */

</script>
     <script type="text/javascript">

         jwplayer("mediaplayer").setup({
             flashplayer: "../Scripts/player.swf",
             file: "../Videos/SJ Pantalla.mov",
             controlbar: "none",
             image: "preview.jpg",
             autostart: "true",
             width: 1000,
             height: 615,

         });

    </script>

    <script>
        /*
        function onPlayerReady(event) {
            event.target.playVideo();
        }

        // when video ends
        function onPlayerStateChange(event) {
            if (event.data === 0) {
                alert('Video is done... how do I can add the code to advance this to next slide and or to continue slideshow?');
            }
        }

        function playVideo(videoID) {
            //alert('this video ID is ' + videoID);

            var player = new YT.Player(videoID, {
                events: {
                    'onReady': onPlayerReady,
                    'onStateChange': onPlayerStateChange
                }
            });
        }
        */
</script>
<script>
    $('#myCarousel').carousel({
        interval: 2000
    })

    $('#myCarousel').on("slid.bs.carousel", function (event) {
        // Bootstrap carousel marks the current slide (the one we're exiting) with an 'active' class
        alert('Inicia item');
        var video = document.getElementById("splashVideo");
        if (video.paused) {
            video.play();
        }

    });
</script>

        </div>
       
    </form>
    

</body>
</html>