<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrar_plantillas_m.aspx.cs" Inherits="SignalRTest.MuralSJ.Administrar_plantillas" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MuralSJ de Información</title>

    <!-- Bootstrap -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet">
    
    <link href="../Content/metro.css" rel="stylesheet">
    <link href="../Content/metro-icons.css" rel="stylesheet">
    <link href="../Content/metro-responsive.css" rel="stylesheet">

    <script src="../Scripts/jquery-2.1.4.min.js"></script>
    <script src="../Scripts/metro.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
        .auto-style1 {
            width: 10%;
            
        }
        .auto-style2 {
            width: 50%;
            
        }
        .auto-style3 {
            width: 10%;
            
        }
        </style>
    </head>
<body  class="metro">
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
                            <asp:Label ID="Label2_m" runat="server" Text="PLANTILLAS" Font-Size="20px" Style="width: 100%" ForeColor="#cc0000" Font-Bold="true"></asp:Label>
                        </div>
                    </td>
                    <td>
                        <asp:Image ID="Image2_m" runat="server" Style="width: 100%" ImageUrl="~/images/margen_der.png" />
                    </td>
                </tr>
            </table>
           
        <!--
        <table style="width: 100%">
        <asp:Label ID="LbPreuba" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table table-hover">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
            </table>
        <br />
            -->
           
        <table style="width: 100%">
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;
                </td>
                <td colspan="5">
                    <asp:GridView ID="gvPlantilla" HeaderStyle-BackColor="#000000" HeaderStyle-ForeColor="White"
                        runat="server" AutoGenerateColumns="true" CssClass="table table-bordered"
                        DataKeyNames="Id_Plantilla" EnableModelValidation="true" ForeColor="#333333" GridLines="Vertical"
                    Width="100%" OnPageIndexChanging="gvPlantilla_PageIndexChanging" OnRowCancelingEdit="gvPlantilla_RowCancelingEdit"
                    OnRowEditing="gvPlantilla_RowEditing" OnRowUpdating="gvPlantilla_RowUpdating">
                        <Columns>
                            <asp:TemplateField HeaderText="Imagen">
                                <ItemTemplate>
                                    <asp:Image ID="imageP" ImageUrl='<%# "~/MuralSJ/ProcesarImage.ashx?id=" + DataBinder.Eval(Container.DataItem,"idimagen") %>'
                                        Width="100px" Height="100px" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Id_Plantilla" HeaderText="Plantilla" ItemStyle-Width="30" />
                            <asp:TemplateField HeaderText="Duración">
                            <EditItemTemplate><asp:TextBox ID="txtduracion" runat="server" Width="100%" Text='<%# Bind("duracion") %>' /></EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" width="100%" Text='<%# Bind("duracion") %>' ID="label1"></asp:Label>
                             </ItemTemplate>
                        </asp:TemplateField>
                            <asp:BoundField DataField="transicion" HeaderText="Transicion" ItemStyle-Width="150" />
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="true" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="true" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Width="100%" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="true" ForeColor="#333333" />
                    </asp:GridView>
                </td>
                <td class="auto-styl3">&nbsp;
                </td>
            </tr>
        </table>
         <table style="width:100%">
                <tr>
                    <td class="auto-style1">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;
                    </td>
                    <td class="auto-style1">&nbsp;
                    </td>
                    <td class="auto-style2">
                        <asp:ImageButton ID="ibPreview_m" runat="server" Height="120px" ImageAlign="Right" ImageUrl="~/images/ic_preview.png" OnClick="ibPreview_m_Click" OnMouseOut="src='../images/ic_preview.png'" OnMouseOver="src='../images/ic_preview_on.png'" Width="120px" />
                    </td>
                    <td class="auto-style1">&nbsp;
                    </td>
                    <td class="auto-style1">&nbsp;
                    </td>
                    <td class="auto-style1">&nbsp;
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