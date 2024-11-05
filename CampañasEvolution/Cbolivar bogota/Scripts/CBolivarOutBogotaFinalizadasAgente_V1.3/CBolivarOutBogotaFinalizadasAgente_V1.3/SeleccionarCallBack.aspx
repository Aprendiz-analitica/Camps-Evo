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
            padding: 10px !important;
            font-size: 12px !important;
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
        DataKeyNames="idTransaccion" AutoGenerateColumns="False" 
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
                <ControlStyle Font-Size="16px"></ControlStyle>
                <FooterStyle HorizontalAlign="Center" />
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="2%" />
                <ItemStyle HorizontalAlign="Center" CssClass="tdcallback" />
            </asp:CommandField>
            <asp:BoundField DataField="tFinal" HeaderText="FECHA Y HORA">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="sTelefonoCliente" HeaderText="TELEFONO">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="sIdOriginal" HeaderText="DOCUMENTO">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />  
            </asp:BoundField>
            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />  
            </asp:BoundField>
            <asp:BoundField DataField="APELLIDO" HeaderText="APELLIDO">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />  
            </asp:BoundField>
            <asp:BoundField DataField="Campanya" HeaderText="CAMPAÑA">
            <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField HeaderText="ESTADO" DataField="estado">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField HeaderText="FINAL" DataField="sDescripcionFinal">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BorderColor="#ed7203 " BorderStyle="Solid" BorderWidth="1px" />
        <EmptyDataRowStyle BorderColor="#ed7203 " BorderStyle="Solid" BorderWidth="1px" />
        <EmptyDataTemplate>
            <asp:Label ID="vacio" runat="server" Font-Names='Arial' Font-Size='8pt' Text='NO SE ENCONTRARON RESULTADOS'></asp:Label>
        </EmptyDataTemplate>
        <HeaderStyle Height="30px" />
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
        'EN PROCESO
        sSql = "SELECT TOP (5) "
        sSql += "LAH.idTransaccion, "
        sSql += "LAH.idTransactionFinal, "
        sSql += "FORMAT(vwT.tFinal, 'yyyy-MM-dd hh:mm tt') as 'tFinal', "
        sSql += "vwT.sDescripcionFinal,"
        sSql += "vwt.sTelefonoCliente,"
        sSql += "vwT.sIdOriginal, "
        sSql += "UPPER(vwt.sNombreCliente) AS NOMBRE, "
        sSql += "UPPER(vwt.sApellido1Cliente) AS APELLIDO, "
        sSql += "LAH.estado, "
        sSql += "(Select top(1) NOMBRE from CAMPANYA where IDCAMPANYA = vwT.idCampanya) as Campanya "
        sSql += "FROM __Llamadas_asterisk_hangup LAH "
        sSql += "INNER JOIN tbHistoFTransacciones vwT ON vwT.idTransaccion = LAH.idTransaccion "
        sSql += "LEFT JOIN vwAgente agt ON LAH.idAgente = agt.idUsuario "
        sSql += "INNER JOIN vwHistoricoSesionesAgente vwHSA ON vwHSA.idSesionAgente = vwT.idSesionAgente "
        sSql += "WHERE   vwt.tCreacion >= '2024-02-01T00:00:00' "
        sSql += "AND (LAH.estado = 'En proceso' AND agt.idUsuario ='100001618')"
        'sSql += "AND (LAH.estado = 'En proceso' AND agt.idUsuario ='" + idagente + "')"
        sSql += "AND vwHSA.idAgente = 100001618"
        'sSql += "AND vwHSA.idAgente =" + idagente + " "
        sSql += "UNION ("
        sSql += "SELECT TOP (5) "
        sSql += "LAH.idTransaccion, "
        sSql += "LAH.idTransactionFinal, "
        sSql += "FORMAT(vwT.tFinal, 'yyyy-MM-dd hh:mm tt') as 'tFinal', "
        sSql += "vwT.sDescripcionFinal,"
        sSql += "vwt.sTelefonoCliente,"
        sSql += "vwT.sIdOriginal, "
        sSql += "UPPER(vwt.sNombreCliente) AS NOMBRE, "
        sSql += "UPPER(vwt.sApellido1Cliente) AS APELLIDO, "
        sSql += "LAH.estado, "
        sSql += "(Select top(1) NOMBRE from CAMPANYA where IDCAMPANYA = vwT.idCampanya) as Campanya "
        sSql += "FROM __Llamadas_asterisk_hangup LAH "
        sSql += "INNER JOIN tbHistoFTransacciones vwT ON vwT.idTransaccion = LAH.idTransaccion "
        sSql += "LEFT JOIN vwAgente agt ON LAH.idAgente = agt.idUsuario "
        sSql += "INNER JOIN vwHistoricoSesionesAgente vwHSA ON vwHSA.idSesionAgente = vwT.idSesionAgente "
        sSql += "WHERE vwt.idTransaccion in (SELECT MAX(vt.idTransaccion) AS 'idTransaccion' "
        sSql += "FROM tbHistoFTransacciones vt "
        sSql += "WHERE vt.tCreacion >= '2024-02-01T00:00:00' "
        sSql += "AND vt.idCampanya IN (100000274, 100000362, 100000365, 100000364, 100000363) "
        sSql += "AND vt.idFinal NOT IN (10,12,113) "
        'sSql += "AND vwHSA.idAgente = " + idagente + " "
        sSql += "AND vwHSA.idAgente = 100001618 "
        sSql += "GROUP BY vt.idSujeto) "
        sSql += "AND LAH.estado != 'Cerrado' "
        sSql += "AND LAH.estado = 'Abierto' AND agt.idUsuario IS NULL "  
        sSql += "AND vwt.idCampanya IN (100000274, 100000431, 100000362, 100000365, 100000364, 100000363) "
        sSql += "AND vwt.idFinal != 10 );" 
        Icr.Evolution.EvolutionLibrary.Traces.Debug("busqueda_CallBacks -> " + sSql)
        SqlDataSource1.SelectCommand = sSql
       ' GridView1.DataBind() ' Actualizar la vista del GridView
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idTransaction As String = GridView1.SelectedValue.ToString()
        Dim telefono As String = GridView1.SelectedRow.Cells(2).Text ' El índice puede variar dependiendo del orden de las columnas.
        Dim documento As String = GridView1.SelectedRow.Cells(3).Text ' El índice puede variar dependiendo del orden de las columnas.
        Dim nombre As String = GridView1.SelectedRow.Cells(4).Text ' El índice puede variar dependiendo del orden de las columnas.  
        Dim apellido As String = GridView1.SelectedRow.Cells(5).Text ' El índice puede variar dependiendo del orden de las columnas.               
        ' Construir la URL con los parámetros
        Dim url As String = "ActualizarEstadoEnProceso.aspx?Idtransaction=" + idTransaction + "&telefono=" + telefono + "&documento=" + documento + "&nombre=" + nombre + "&apellido=" + apellido
        ' Redireccionar a la página con los parámetros
        Response.Redirect(url)
        'Response.Redirect("ActualizarEstado.aspx?Idtransaction=" + GridView1.SelectedValue.ToString())
    End Sub
</script>
