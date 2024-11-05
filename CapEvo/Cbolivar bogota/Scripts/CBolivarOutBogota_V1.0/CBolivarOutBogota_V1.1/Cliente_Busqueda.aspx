<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" Debug="true" %>
<%@ Import Namespace="System.Threading.Tasks" %>
<%@ Import Namespace="ICR.Evolution.Types.Activities.Dialog.Command" %>
<%@ Import Namespace="Minimod.PrettyPrint" %>
<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>

    <style type="text/css">
        .thbusqueda {
            padding: 5px !important;
        }
    </style>

    <script type="text/javascript">
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="display: flex; justify-content: center;">
        <table width="603px" style="margin-left: auto; margin-right:auto; border: 1px solid #249E6B">
            <tr>
                <th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" colspan="2" align="center">
                    BUSCAR CLIENTE
                </th>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 16px; text-align: center;">
                    DOCUMENTO
                    <asp:TextBox ID="numdoc" runat="server" BorderStyle="Groove" TabIndex="1" Width="90%" ForeColor="Black"></asp:TextBox>
                </td>
                <td style="padding: 5px; border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 16px; text-align: center;">
                    TELÉFONO
                    <asp:TextBox ID="numtel" runat="server" BorderStyle="Groove" TabIndex="1" Width="90%" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 16px; text-align: center;">
                    <asp:Button ID="Buscar" runat="server" onclick="Buscar_OnClick" Text="BUSCAR" BackColor="#249E6B" BorderColor="#249E6B" Height="30px" Width="100%" />
                </td>
                <td style="padding: 5px; border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 16px; text-align: center;">
                    <asp:Button ID="Button2" runat="server" onclick="Nuevo_OnClick" Text="NUEVO" BackColor="#249E6B" BorderColor="#249E6B" Height="30px" Visible="False" Width="100%" />
                </td>
            </tr>
        </table>
    </div>

    <table width="650px">
        <asp:SqlDataSource
            id="SqlDataSource1"
            runat="server"
            DataSourceMode="DataReader"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="#ED7203" BorderStyle="Solid" BorderWidth="1px" class="formulario" DataKeyNames="IdSujeto" DataSourceID="SqlDataSource1" Font-Bold="True" HorizontalAlign="Center" onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" ShowHeaderWhenEmpty="True" style="width:100%;">
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            <PagerSettings Position="Top" />

            <AlternatingRowStyle BackColor="White" BorderColor="#ed7203" BorderStyle="Solid" BorderWidth="1px" />
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/Resources/images/lista-de-verificacion (1).png" SelectText="" ShowSelectButton="True">
                    <ControlStyle Font-Size="16px"></ControlStyle>
                    <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="50px" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
                <asp:BoundField DataField="IDORIGINAL" HeaderText="DOCUMENTO">
                    <ControlStyle Font-Size="16px"></ControlStyle>
                    <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE">
                    <ControlStyle Font-Size="16px"></ControlStyle>
                    <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="APELLIDO1" HeaderText="APELLIDO">
                    <ControlStyle Font-Size="16px"></ControlStyle>
                    <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="TELEFONO" HeaderText="TELEFONO">
                    <ControlStyle Font-Size="16px"></ControlStyle>
                    <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="150px" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle BorderColor="#ed7203" BorderStyle="Solid" BorderWidth="1px" />
            <EmptyDataRowStyle BorderColor="#ed7203" BorderStyle="Solid" BorderWidth="1px" />
            <EmptyDataTemplate>
                <asp:Label ID="vacio" runat="server" Font-Names="Arial" Font-Size="8pt" Text="NO SE ENCONTRARON RESULTADOS"></asp:Label>
            </EmptyDataTemplate>
            <HeaderStyle BorderColor="White" BorderStyle="Solid" BorderWidth="1px" Height="35px" CssClass="thbusqueda" />
            <PagerSettings Position="Top" />
        </asp:GridView>
    </table>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            GridView1.Visible = False
            Button2.Visible = False
        End If
    End Sub

    Protected Sub Buscar_OnClick(ByVal sender As Object, ByVal e As System.EventArgs)
        GridView1.EmptyDataText = ""
        Dim sSql As String = ""

        sSql = "select top 30 C.IDSUJETO, C.NOMBRE,C.sNombreCompleto,C.APELLIDO1,C.APELLIDO2, C.TELEFONO,C.IDORIGINAL"
        sSql += " from (EVOLUTIONDB.dbo.CLIENTES as C"
        sSql += " join EVOLUTIONDB.dbo.tbIdentidadSujetoCampanya as ISC"
        sSql += " on C.IDSUJETO=ISC.IDSUJETO)"
        Dim sWhere As String = ""
        sWhere = " where ISC.IDCAMPANYA=" + Convert.ToString(Gestion.Campanya.IdCampanya) + " AND C.IDSUJETO != 0"
    
        If (Not String.IsNullOrEmpty(numtel.Text)) Then
            sWhere = sWhere + " AND C.Telefono LIKE '%" + numtel.Text + "'"
        End If
        If (Not String.IsNullOrEmpty(numdoc.Text)) Then
            sWhere = sWhere + " AND C.IDORIGINAL = '" + numdoc.Text + "'"
        End If
        If (Not String.IsNullOrEmpty(sWhere)) Then
            sSql += sWhere
        End If
        ICR.Evolution.EvolutionLibrary.Traces.Debug("busqueda_clientes -> " + sSql)
        SqlDataSource1.SelectCommand = sSql
        GridView1.DataBind() ' Actualizar la vista del GridView
        ' Mostrar u ocultar el botón "Nuevo"
        If GridView1.Rows.Count = 0 Then
            Button2.Visible = True
        Else
            GridView1.Visible = True
            Button2.Visible = False
        End If
    End Sub

    Protected Sub Nuevo_OnClick(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim numdocevo = numdoc.Text
        Dim numtelevo = numtel.Text
        Response.Redirect("Cliente_Alta.aspx?NumDoc=" + numdocevo + "&NumTel=" + numtelevo)
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As System.EventArgs)
        Response.Redirect("Cliente_Identificar.aspx?idsujeto=" + GridView1.SelectedValue.ToString)
    End Sub
</script>
