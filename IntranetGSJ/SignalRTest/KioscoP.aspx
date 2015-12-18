<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MuralSJP.aspx.cs" Inherits="SignalRTest.MuralSJP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicios de Sesión</title>
     <link href="../Content/dropzone.css" rel="stylesheet" type="text/css" />
 <script src="../Scripts/dropzone.js" type="text/javascript"></script>
    <script src="../Scripts/jwplayer.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="../styles.css" />
    <style type="text/css">
        .auto-style1 {
            width: 93px;
        }

        .auto-style5 {
            width: 20%;
        }

        #TextArea1 {
            height: 44px;
        }
        .auto-style6 {
            height: 27px;
        }
        .auto-style7 {
            width: 93px;
            height: 27px;
        }
    </style>
</head>
<body>
    


 <div class="jumbotron">

<form action="SaveDropzoneJsUploadedFiles" class="dropzone" id="dropzoneJsForm"></form>

<button id="submit-all">Submit All Files</button>


     
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
</div>
     <script type="text/javascript">
         var s = "foo video uno dos";
         if (/arbol/.test(s)) {
             alert("Contiene palabra");
         }
         else {
             alert("NO Contiene palabra");
         }
         var indice = 1;
         if (indice == 1) {
             vidplay();
         }
         function vidplay() {
             var video = document.getElementById("splashVideo");
             var button = document.getElementById("play");
             if (video.paused) {
                 video.play();
             } else {
                 video.pause();
             }
         }
         Dropzone.options.dropzoneJsForm = {

             //prevents Dropzone from uploading dropped files immediately
             autoProcessQueue: false,
             url: "hn_SimpeFileUploader",

             init: function () {
                 var submitButton = document.querySelector("#submit-all");
                 var myDropzone = this; //closure

                 submitButton.addEventListener("click", function () {

                     //tell Dropzone to process all queued files
                     myDropzone.processQueue()
                 });

             }
         };

    </script>
    <video id="mediaplayer" autoplay="true">JW Player goes here</video>

    <ul>
<li>JEFE
<ul>
<li>GERENTE
<ul>
<li>EMPLEADO</li>
</ul> <!-- empleado fin -->
</li>
</ul> <!-- gerente fin -->
</li>
</ul> <!-- jefe fin -->

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
          jQuery(document).ready(function () {
              $("#org").jOrgChart({
                  chartElement: '#chart',
                  dragAndDrop: true
              });
          });

    </script>

}
</body>
</html>
