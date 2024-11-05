<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" Debug="true" %>

<%@ Import Namespace="System.Threading.Tasks" %>
<%@ Import Namespace="ICR.Evolution.Types.Activities.Dialog.Command" %>
<%@ Import Namespace="Minimod.PrettyPrint" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">

    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 69px;
        }
        </style>

    <script type="text/javascript">
    </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <table class="style1" style="border: 1px solid #249E6B ">
         <tr>
            <th style="padding: 3px; border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 20px; color: #FFFFFF; font-weight: bold;" 
                 colspan="2" align="center">
                    Constructora Bolivar Bogota</th>
         </tr>
        
        <tr>
            <td style="padding: 5px; border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 16px; text-align: center;">
                NIT:<br />
                &nbsp;&nbsp;<asp:TextBox ID="numdocevo" runat="server" 
                    BorderStyle="Groove" TabIndex="1" 
                    Width="90%" ForeColor="Black"></asp:TextBox>
            </td>
            <td style="padding: 5px; border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 16px; text-align: center;">
                Teléfono:&nbsp;&nbsp;
                <asp:TextBox ID="telefonoevo" runat="server" BorderStyle="Groove" TabIndex="1" 
                    Width="90%" ForeColor="Black"></asp:TextBox>
            </td>

        </tr>
        <tr>
        <td width="10%" 
                
                style="padding: 5px; border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 16px; text-align: center;">
                <asp:Button ID="Buscar" runat="server" onclick="Buscar_OnClick" 
                    Text="Buscar" onclientclick="MensajeEspera();" BackColor="#249E6B " 
                    BorderColor="#249E6B " Height="30px" Width="225px" />
            </td>
            <td width="10%" 
                
                style="padding: 5px; border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 16px; text-align: center;">
                <asp:Button ID="Button2" runat="server" onclick="Nuevo_OnClick" 
                    Text="Nuevo" BackColor="#249E6B " BorderColor="#249E6B " Height="30px" 
                    Width="225px" Visible="False" />
            </td>
        </tr>
        </table>

    <asp:SqlDataSource
        id="SqlDataSource1"
        runat="server"
        DataSourceMode="DataReader"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" class="formulario" 
        Font-Bold="True" HorizontalAlign="Center" 
        ShowHeaderWhenEmpty="True"  DataSourceID="SqlDataSource1" 
        PageSize="5"
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        DataKeyNames="IdSujeto" AutoGenerateColumns="False" style="width:100%;">
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        <PagerSettings Position="Top" />

        <AlternatingRowStyle BackColor="White" BorderColor="#249E6B " 
            BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="" ButtonType="Image" 
                SelectImageUrl="~/Resources/images/lista-de-verificacion (1).png" >
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#249E6B " />
            </asp:CommandField>
            <asp:BoundField DataField="IDORIGINAL" HeaderText="NIT" >
                <controlstyle font-size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#249E6B " />
            </asp:BoundField>
            <asp:BoundField DataField="NOMBRE" HeaderText="Nombre Completo" >
                <controlstyle font-size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#249E6B " />
            </asp:BoundField>
            <asp:BoundField DataField="TELEFONO" HeaderText="Telefono">
                <controlstyle font-size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#249E6B " />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BorderColor="#249E6B " BorderStyle="Solid" BorderWidth="1px" />
        <EmptyDataRowStyle BorderColor="#249E6B " BorderStyle="Solid" 
            BorderWidth="1px" />
        <EmptyDataTemplate>
            <asp:Label ID="vacio" runat="server" Font-Names='Arial' Font-Size='8pt' Text='NO SE ENCONTRARON RESULTADOS'></asp:Label>
        </EmptyDataTemplate>
        <PagerSettings Position="Top" />

<SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
    </asp:GridView>

    <br />
    <br />

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">

</asp:Content>

<script runat="server">
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Button2.Visible = False
        End If
        If Request("inicio") = "true" Then
            Response.Redirect("Inicio.aspx")
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

    
    Protected Sub Nuevo_OnClick(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim Documento = numdocevo.Text
        Dim Telefono = telefonoevo.Text
        Response.Redirect("Cliente_Alta.aspx?docuemnto=" + Documento + "&telefono=" + Telefono)
                  
    End Sub

    
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As System.EventArgs)
        Response.Redirect("Cliente_Identificar.aspx?idsujeto=" + GridView1.SelectedValue.ToString)
    End Sub

</script>