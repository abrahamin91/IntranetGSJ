<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="descarga.aspx.cs" Inherits="SignalRTest.descarga_info.descarga" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Selección de Modulos</title>
    <script type="text/javascript" src="Scripts/calendarDate.js"></script>

    <script type="text/javascript">

        function displayCalendar() {
            var datePicker = document.getElementById('datePicker');
            datePicker.style.display = 'block';
        }

    </script>

    <script type="text/javascript">

        function displayCalendar2() {
            var Div1 = document.getElementById('Div1');
            Div1.style.display = 'block';
        }

    </script>

    

    <style type="text/css">
        #Div1,
        #datePicker
        {
            display:none;
            position:absolute;
            border:solid 2px black;
            background-color:white;
        }
        .content
        {
            width:400px;
            background-color:white;
            margin:auto;
            padding:10px;
        }
        html
        {
            background-color:silver;
        }
    </style>

    <link rel="stylesheet" type="text/css" href="../styles.css" />
    <style type="text/css">
        .auto-style5 {
            width: 20%;
            
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%">
           
                <tr>
                            <td >
                    <img src="../images/logo_transparente2.png" border="0" height="150" style="width: 100%"></td>
                            
            </tr>
        </table>

        <table style="width: 100%">
           <tr>
                            <td>
                                &nbsp;
                            </td>
                              </tr>
               <tr>
                   
                            <td >
                   
                                 <asp:Image ID="Image1" runat="server" style="width: 100%" ImageUrl="~/images/margen_izq.png" />
                            </td>
                            <td >
                   
                                 <div style="margin-left: auto; margin-right: auto; text-align: center;">
                                <asp:Label ID="Label1" runat="server" Text="DESCARGA DE INFORMACIÓN" Font-Size="20px" style="width: 100%" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                                </div>
                                 
                            </td>
                               <td >
                   
                                 <asp:Image ID="Image2" runat="server" style="width: 100%" ImageUrl="~/images/margen_der.png" />
                            </td>
                        </table>
       

       <table style="width: 100%">
            

            <tr>
                <td colspan="0" style="width: 100%">
                    
                    <table style="width: 100%;">
                       <tr>
                            <td>
                                &nbsp;
                            </td>
                              </tr>
                            <tr>
                            <td>
                                &nbsp;
                            </td>
                              </tr>  
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                              </tr>  
                        <tr>
                        <td class="tamano17">
                            <asp:ImageButton ID="ibCuajadoPrincipal" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_cuaj.png" OnClick="ibCuajadoPrincipal_Click" OnMouseOut="src='../images/ic_cuaj.png'" OnMouseOver="src='../images/icuajado_on.png'" Width="120px" />
                        </td>
                        <%--boton de cuajado--%>
                        <td class="tamano17">&nbsp;
                            <asp:ImageButton ID="ibFundidoPrincipal" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_fun.png" OnClick="ibFundidoPrincipal_Click" OnMouseOut="src='../images/ic_fun.png'" OnMouseOver="src='../images/icfun_on.png'" Width="120px" />
                        </td>
                        <td class="tamano17">
                            
                            <asp:ImageButton ID="ibEmpaquePrincipal" runat="server" Height="120px" ImageAlign="Right"  ImageUrl="~/images/ic_emp.png" OnClick="ibEmpaquePrincipal_Click" OnMouseOut="src='../images/ic_emp.png'" OnMouseOver="src='../images/ic_empaqueon.png'" Width="120px" />
                        </td>
                        <td class="tamano17">
                            <asp:ImageButton ID="ibPPPrincipal" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_pp.png" OnClick="ibPPPrincipal_Click" OnMouseOut="src='../images/ic_pp.png'" OnMouseOver="src='../images/icpp_on.png'" Width="120px" />
                        </td>
                        <td class="tamano17">
                            <asp:ImageButton ID="ibPPPrincipal0" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_pp.png" OnClick="ibPPPrincipal_Click" OnMouseOut="src='../images/ic_pp.png'" OnMouseOver="src='../images/icpp_on.png'" Width="120px" />
                            </td>
                            <td class="tamano17">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                           <tr>
                               <td class="auto-style5"></td>
                               <td class="auto-style5"><%--Logo--%></td>
                               <td class="auto-style5">
                                <%--<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>--%>
                                <%--<script type ="text/javascript">
                                    DateInput('orderdate', true, 'DD-MON-YYYY')
                                 </script>  --%>
                                <asp:Label
                                    id="lblEventDate"
                                    Text="Desde:"
                                    AssociatedControlID="txtEventDateDesde"
                                    Runat="server" />
                                <asp:TextBox
                                    id="txtEventDateDesde"
                                     Width="100px"
                                    Runat="server" />
                                <img src="../images/calendar.png" Height="30px" Width="30px" onclick="displayCalendar()" />&nbsp;<div id="datePicker">
                                    <asp:Calendar ID="calEventDate" Runat="server" OnSelectionChanged="calEventDate_SelectionChanged" />
                                </div>

                                 &nbsp;&nbsp;
                                <asp:Label ID="LabelHasta" Runat="server" AssociatedControlID="txtEventDateHasta" Text="Hasta:  " />
                                <asp:TextBox ID="txtEventDateHasta" Runat="server" Width="100px" />
                                <img src="../images/calendar.png" Height="30px" Width="30px" onclick="displayCalendar2()" />
&nbsp;
                                <div id="Div1">
                                    <asp:Calendar ID="CalendarHasta" Runat="server" OnSelectionChanged="calEventDate_SelectionChangedHasta" />
                                </div>
                                
                            </td>
                               <td class="auto-style5"></td>
                               <td class="auto-style5" style="text-align:right"><%--<asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click1" Width="135px" />--%></td>
                               <td style="width: 15%">&nbsp;</td>
                           </tr>
                           <tr>
                               <td colspan="5">&nbsp;</td>
                           </tr>
                          <tr>
                               <td colspan="5">&nbsp;</td>
                           </tr>
                            <tr>
                               <td colspan="5">&nbsp;</td>
                           </tr>
                            <tr>
                               <td colspan="5">&nbsp;</td>
                           </tr>
                            <tr>
                               <td colspan="5">&nbsp;</td>
                           </tr>
                            <tr>
                               <td colspan="5">&nbsp;</td>
                           </tr>
                    </table>
                        
                </td>
            </tr>
        </table>
      
        

    </div>
    </form>
</body>
</html>
