<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" Debug="true" %>
<%@ Import Namespace="System.Threading.Tasks" %>
<%@ Import Namespace="ICR.Evolution.Types.Activities.Dialog.Command" %>
<%@ Import Namespace="Minimod.PrettyPrint" %>
<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">

    <script type="text/javascript">
    </script>
        <style type="text/css">
        .tdcallback {
            padding: 5px !important;
            font-size: 14px !important;
            text-align: center !important;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource
        id="SqlDataSource1"
        runat="server"
        DataSourceMode="DataReader"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
    </asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" class="formulario" Font-Bold="True" 
        HorizontalAlign="Center" ShowHeaderWhenEmpty="True" 
        DataSourceID="SqlDataSource1" PageSize="5"
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        DataKeyNames="Idtransaction" AutoGenerateColumns="False" 
        style="width:100%;" BorderColor="#ED7203" BorderStyle="Solid" 
        BorderWidth="1px">
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        <PagerSettings Position="Top" />
        <AlternatingRowStyle BackColor="White" BorderColor="#ed7203 " BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="" ButtonType="Image" SelectImageUrl="~/Resources/images/lista-de-verificacion (1).png">
                <ControlStyle Font-Size="16px" ></ControlStyle>
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width= "10%" />
                <ItemStyle HorizontalAlign="Center" CssClass="tdcallback" />
            </asp:CommandField>
            <asp:BoundField DataField="telefono" HeaderText="TELEFONO">
                <ControlStyle Font-Size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width= "30%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="tFinal" HeaderText="FECHA">
                <ControlStyle Font-Size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width= "30%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="estado" HeaderText="ESTADO">
                <ControlStyle Font-Size="16px" />
<ControlStyle Font-Size="16px"></ControlStyle>

                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width= "30%" />
                <ItemStyle CssClass="tdcallback" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BorderColor="#ed7203 " BorderStyle="Solid" BorderWidth="1px" />
        <EmptyDataRowStyle BorderColor="#ed7203 " BorderStyle="Solid" BorderWidth="1px" />
        <EmptyDataTemplate>
            <asp:Label ID="vacio" runat="server" Font-Names='Arial' Font-Size='8pt' Text='NO SE ENCONTRARON RESULTADOS'></asp:Label>
        </EmptyDataTemplate>
        <PagerSettings Position="Top" />
        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>
        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>
        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>
        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
    </asp:GridView>
    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.EmptyDataText = ""
        Dim sSql As String = ""
        Dim idagente As String = Gestion.Agente.IdAgente
        sSql = "SELECT TOP (5) "
        sSql += "CBD.telefono, "
        sSql += "FORMAT(vwT.tFinal, 'yyyy-MM-dd hh:mm tt') as 'tFinal', "
        sSql += "CBD.Idtransaction, "
        sSql += "CBD.idTransactionFinal, "
        sSql += "CBD.estado, "
        sSql += "CONCAT(agt.nombre,' ',agt.apellido1) as 'Agente' "
        sSql += "FROM __callback_Dime CBD "
        sSql += "INNER JOIN vwTransacciones vwT ON vwT.idTransaccion = CBD.idTransaction "
        sSql += "LEFT JOIN vwAgente agt ON CBD.idAgente = agt.idUsuario "
        sSql += "WHERE (CBD.estado = 'En proceso' AND agt.idUsuario ='" + idagente + "') OR (CBD.estado = 'Abierto' AND agt.idUsuario IS NULL) AND CBD.telefono != '' AND CBD.estado != 'Cerrado' "
        sSql += "ORDER BY CASE WHEN CBD.estado = 'En proceso' THEN 1 WHEN CBD.estado = 'Abierto' THEN 2 END, vwT.tCreacion ASC;"
        Icr.Evolution.EvolutionLibrary.Traces.Debug("busqueda_CallBacks -> " + sSql)
        SqlDataSource1.SelectCommand = sSql
        GridView1.DataBind() ' Actualizar la vista del GridView
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idTransaction As String = GridView1.SelectedValue.ToString()
        Dim telefono As String = GridView1.SelectedRow.Cells(1).Text ' El índice puede variar dependiendo del orden de las columnas.
        Dim fecha As String = GridView1.SelectedRow.Cells(2).Text ' El índice puede variar dependiendo del orden de las columnas.
        ' Construir la URL con los parámetros
        Dim url As String = "ActualizarEstadoEnProceso.aspx?Idtransaction=" + idTransaction + "&telefono=" + telefono + "&fecha=" + fecha
        ' Redireccionar a la página con los parámetros
        Response.Redirect(url)
        'Response.Redirect("ActualizarEstado.aspx?Idtransaction=" + GridView1.SelectedValue.ToString())
    End Sub

    
</script>
