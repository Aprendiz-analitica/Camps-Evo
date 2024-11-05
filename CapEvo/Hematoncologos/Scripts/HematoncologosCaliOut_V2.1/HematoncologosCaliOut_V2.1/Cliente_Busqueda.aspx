<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" Debug="true" %>

<%@ Import Namespace="System.Threading.Tasks" %>
<%@ Import Namespace="ICR.Evolution.Types.Activities.Dialog.Command" %>
<%@ Import Namespace="Minimod.PrettyPrint" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">

    <style type="text/css">

        .thbusqueda
        {
            text-align:center;
            padding : 5px;
            font-size: 16px !important;
        }
        .tdbusqueda
        {
            text-align:center !important;
            padding : 5px !important;
            color : Black !important;
            font-size: 16px !important;
        }
        </style>

    <script type="text/javascript">
    </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <table class="formulario" style="width:100%">
         <tr>
                <th style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px solid #ed7203; border-bottom: 1px hidden #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; font-weight: bold; " 
                    colspan="3" align="center" class="style2">
                    BUSCAR CLIENTE</th>
            </tr>
        
        <tr>
            <td style="padding: 5px; border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 16px; text-align: center; width: 50%;">
                Numero de Documento:<br />
                &nbsp;&nbsp;<asp:TextBox ID="numdocevo" runat="server" 
                    BorderStyle="Groove" TabIndex="1" 
                    Width="90%" ForeColor="Black"></asp:TextBox>
            </td>
            <td style="padding: 5px; border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 16px; text-align: center; width: 50%;">
                Teléfono:&nbsp;&nbsp;
                <asp:TextBox ID="telefonoevo" runat="server" BorderStyle="Groove" TabIndex="1" 
                    Width="90%" ForeColor="Black"></asp:TextBox>
            </td>

        </tr>
        <tr>
        <td style="padding: 5px; border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 16px; text-align: center;">
                <asp:Button ID="Buscar" runat="server" onclick="Buscar_OnClick" 
                    Text="Buscar" onclientclick="MensajeEspera();" BackColor="#249E6B " 
                    BorderColor="#249E6B " Height="30px" Width="225px" />
            </td>
            <td style="padding: 5px; border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 16px; text-align: center;">
                <asp:Button ID="Button2" runat="server" onclick="Nuevo_OnClick" 
                    Text="Nuevo" BackColor="#249E6B " BorderColor="#249E6B " Height="30px" 
                    Width="225px" Visible="False" />
            </td>
        </tr>
        </table>

        <table class="formulario" style="width:100%">
        <asp:SqlDataSource
        id="SqlDataSource1"
        runat="server"
        DataSourceMode="DataReader"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BorderColor="#ED7203" BorderStyle="Solid" BorderWidth="1px" class="formulario" 
        DataKeyNames="IdSujeto" DataSourceID="SqlDataSource1" Font-Bold="True" 
        HorizontalAlign="Center" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
        ShowHeaderWhenEmpty="True" style="width:100%;">
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        <sortedascendingcellstyle backcolor="#E9E7E2" />
        <sortedascendingheaderstyle backcolor="#506C8C" />
        <sorteddescendingcellstyle backcolor="#FFFDF8" />
        <sorteddescendingheaderstyle backcolor="#6F8DAE" />
        <PagerSettings Position="Top" />

        <AlternatingRowStyle BackColor="White" BorderColor="#ed7203 " 
            BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:CommandField ButtonType="Image" 
                SelectImageUrl="~/Resources/images/lista-de-verificacion (1).png" SelectText="" 
                ShowSelectButton="True">
                <controlstyle font-size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" Width="10%" />
                <ItemStyle HorizontalAlign="Center" CssClass="tdbusqueda" />
            </asp:CommandField>
            <asp:BoundField DataField="IDORIGINAL" HeaderText="DOCUMENTO">
                <ControlStyle Font-Size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" Width="20%" CssClass="thbusqueda" />
                <ItemStyle CssClass="tdbusqueda" />
            </asp:BoundField>
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRES">
                <ControlStyle Font-Size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" Width="35%" CssClass="thbusqueda" />
                <ItemStyle CssClass="tdbusqueda" />
            </asp:BoundField>
            <asp:BoundField DataField="TELEFONO" HeaderText="TELÉFONO">
                <ControlStyle Font-Size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" Width="35%" CssClass="thbusqueda" />
                <ItemStyle CssClass="tdbusqueda" />
            </asp:BoundField>
                    </Columns>
        <EditRowStyle BorderColor="#ed7203 " BorderStyle="Solid" BorderWidth="1px" />
        <EmptyDataRowStyle BorderColor="#ed7203 " BorderStyle="Solid" 
            BorderWidth="1px" />
        <EmptyDataTemplate>
            <asp:Label ID="vacio" runat="server" Font-Names="Arial" Font-Size="8pt" 
                Text="NO SE ENCONTRARON RESULTADOS"></asp:Label>
        </EmptyDataTemplate>
        <PagerSettings Position="Top" />

<SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
    </asp:GridView>
        </table>

    
    
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">

</asp:Content>

<script runat="server">
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
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
    
        If (Not String.IsNullOrEmpty(telefonoevo.Text)) Then
            sWhere = sWhere + " AND C.Telefono LIKE '%" + telefonoevo.Text + "'"
        End If
        If (Not String.IsNullOrEmpty(numdocevo.Text)) Then
            sWhere = sWhere + " AND C.IDORIGINAL = '" + numdocevo.Text + "'"
        End If
        If (Not String.IsNullOrEmpty(sWhere)) Then
            sSql += sWhere
        End If
    
        Icr.Evolution.EvolutionLibrary.Traces.Debug("busqueda_clientes -> " + sSql)
        SqlDataSource1.SelectCommand = sSql    
        GridView1.DataBind() ' Actualizar la vista del GridView

        ' Mostrar u ocultar el botón "Nuevo"
        If GridView1.Rows.Count = 0 Then
            Button2.Visible = True
        Else
            Button2.Visible = False
        End If
    End Sub

    
    Protected Sub Nuevo_OnClick(sender As Object, e As System.EventArgs)
        Dim numdoc = numdocevo.Text
        Response.Redirect("Cliente_Alta.aspx?numdocevo=" + numdoc)
    End Sub

    
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As System.EventArgs)
        Response.Redirect("Cliente_Identificar.aspx?idsujeto=" + GridView1.SelectedValue.ToString)
    End Sub

</script>