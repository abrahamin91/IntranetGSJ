<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnvioMensajes.aspx.cs" Inherits="SignalRTest.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="styles.css" />   
    <script language="javascript" type="text/javascript">

    </script>
   
</head>

<body>
   
    
    <form id="form1" runat="server">

   <br />
    <table style="width:100%;">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td align="center" class="style5">

               <span class="letraTituloCentralMonitoreo"> <asp:Label ID="Label3" runat="server" Text="Envio de mensaje SMS al Doctor"></asp:Label> </span>

            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br /><br />

     <table align="center">
            <tr>
                <td align="center">
    <div class="cuadroMensajes">

           <table align="center">
            <tr>
                <td class="style1">                    
                    <div style="width: 380px" align="left">

                        <span class="letraNombreDoctorEnvioLabel">Doctor:</span>
                        <span class="letraNombreDoctorEnvio"><asp:Label ID="Label1" runat="server"></asp:Label></span>
                        <br />

                        <span class="letraNombreDoctorEnvioLabel">Teléfono fijo:</span>
                        <span class="letraNombreDoctorEnvio"><asp:Label ID="LabelTelFijo" runat="server"></asp:Label></span>
                        <br />

                        <span class="letraNombreDoctorEnvioLabel">Teléfono celular:</span>
                        <span class="letraNombreDoctorEnvio"><asp:Label ID="Label2" runat="server"></asp:Label>
                        <asp:TextBox ID="TextBoxCelularDoctor" runat="server" Width="180px"></asp:TextBox></span>
                    </div>
                </td>
            </tr>

        </table>
                     <table align="center" style="height: 178px; width: 331px">
            <tr>
                <td class="style3">                    
                    <div style="width: 329px; text-align:center; height: 174px;" align="center">

                        <br />

                        <asp:TextBox ID="TextBoxMensage" runat="server" Height="147px" 
                            TextMode="MultiLine" Width="314px" Wrap="False" MaxLength="144"></asp:TextBox>
                    </div>
                </td>
            </tr>
        </table>

           <br />
    <table align="center">
            <tr>
                <td>                    
                    <div style="width: 250px; text-align:center" align="center">

                        <table class="style2" align="center">
                            <tr>
                                <td align="center">

                                    <asp:Button ID="Enviar" runat="server" onclick="Enviar_Click" Text="Enviar" 
                                        Width="80px" />
                                </td>
                                <td align="center">
                                    <asp:Button ID="Cancelar" runat="server" Text="Cancelar" Width="80px" 
                                        onclick="Cancelar_Click" />
                                </td>
                            </tr>
                        </table>

                            </div>
                        </td>
                    </tr>
    </table>
                <br />


        </div>
        </td>
            </tr>
        </table>
    </form>
   
</body>
</html>


