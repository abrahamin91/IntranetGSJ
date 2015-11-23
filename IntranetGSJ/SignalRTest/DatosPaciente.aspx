<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatosPaciente.aspx.cs" Inherits="SignalRTest.WebForm2" %>

<%@ Register Assembly="DevExpress.Web.v8.3, Version=8.3.3.0, Culture=neutral, PublicKeyToken=5377c8e3b72b4073"
    Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dxpc" %>

<%@ Register assembly="DevExpress.Web.v8.3" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dxpc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1247px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Datos paciente</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="LabelDatosPaciente" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Datos doctor</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="LabelDatosDoctor" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Historico de signos vitales</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>



                <td class="style1">
                    <table style="width:100%;">
                        <tr>
                            <td>
                                Signos vitales</td>
                            <td>
                                Parametro</td>
                            <td>
                                Historico</td>
                        </tr>

                        <tr>
                            <td>
                                Peso</td>
                            <td>
                    <asp:Label ID="LabelPeso" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Ver" onclick="Button1_Click" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Talla</td>
                            <td>
                    <asp:Label ID="LabelTalla" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Ver" onclick="Button2_Click" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                FC</td>
                            <td>
                    <asp:Label ID="LabelFrecuenciaCardiaca" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Ver" onclick="Button3_Click" />
                            </td>
                        </tr>

                          <tr>
                            <td>
                                FR</td>
                            <td>
                    <asp:Label ID="LabelFR" runat="server"></asp:Label>
                              </td>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="Ver" onclick="Button4_Click" />
                              </td>
                        </tr>

                          <tr>
                            <td>
                                Electro cardiograma</td>
                            <td>
                    <asp:Label ID="LabelElectroCardiograma" runat="server"></asp:Label>
                              </td>
                            <td>
                                <asp:Button ID="Button5" runat="server" Text="Ver" onclick="Button5_Click" />
                              </td>
                        </tr>

                         <tr>
                            <td>
                                Temperatura</td>
                            <td>
                    <asp:Label ID="LabelTemperatura" runat="server"></asp:Label>
                             </td>
                            <td>
                                <asp:Button ID="Button6" runat="server" Text="Ver" onclick="Button6_Click" />
                             </td>
                        </tr>

                         <tr>
                            <td>
                                T. A. Sistolica</td>
                            <td>
                    <asp:Label ID="LabelTASistolica" runat="server"></asp:Label>
                             </td>
                            <td>
                                <asp:Button ID="Button7" runat="server" Text="Ver" onclick="Button7_Click" />
                             </td>
                        </tr>

                        <tr>
                            <td>
                                T. A. Diasistolica</td>
                            <td>
                    <asp:Label ID="LabelTADiasistolica" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button8" runat="server" Text="Ver" onclick="Button8_Click" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Cintura</td>
                            <td>
                    <asp:Label ID="LabelCintura" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button9" runat="server" Text="Ver" style="margin-top: 0px" 
                                    onclick="Button9_Click" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Cadera</td>
                            <td>
                    <asp:Label ID="LabelCadera" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button10" runat="server" Text="Ver" onclick="Button10_Click" 
                                    style="height: 26px" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Glucemia</td>
                            <td>
                    <asp:Label ID="LabelGlucemia" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button11" runat="server" Text="Ver" onclick="Button11_Click" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Hemoglobina</td>
                            <td>
                    <asp:Label ID="LabelHemoglobina" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button12" runat="server" Text="Ver" onclick="Button12_Click" 
                                    style="height: 26px" />
                            </td>
                        </tr>
                                               
                        <tr>
                            <td>
                                Colesterol</td>
                            <td>
                    <asp:Label ID="LabelColesterol" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button13" runat="server" Text="Ver" onclick="Button13_Click" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Trigliceridos</td>
                            <td>
                    <asp:Label ID="LabelTrigliceridos" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button14" runat="server" Text="Ver" onclick="Button14_Click" />
                            </td>
                        </tr>

                        <tr>
                            <td>
                                Albuminuria</td>
                            <td>
                    <asp:Label ID="LabelAlbuminuria" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button15" runat="server" Text="Ver" onclick="Button15_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Glucosurina</td>
                            <td>
                    <asp:Label ID="LabelGlucosurina" runat="server"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button16" runat="server" Text="Ver" onclick="Button16_Click" />
                            </td>
                        </tr>
                    </table>
                </td>



                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>

    <dxpc:ASPxPopupControl ID="ASPxPopupControl1" runat="server" 
        AllowDragging="True" Modal="True" PopupHorizontalAlign="Center" 
        PopupVerticalAlign="Middle" Height="522px" Width="1469px" 
        style="margin-bottom: 0px">
        <ContentCollection>
<dxpc:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
    <asp:Chart ID="Chart1" runat="server" Height="450px" Width="1421px">
        <Series>
            <asp:Series ChartArea="ChartArea1" Name="Series1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
            </dxpc:PopupControlContentControl>
</ContentCollection>
    </dxpc:ASPxPopupControl>

    </form>
</body>
</html>
