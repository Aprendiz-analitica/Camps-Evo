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
        DataKeyNames="idTransaccionOriginal" AutoGenerateColumns="False" 
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
            <asp:BoundField DataField="fecha" HeaderText="FECHA">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="hora" HeaderText="HORA">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="estado" HeaderText="ESTADO">
                <ControlStyle Font-Size="16px"></ControlStyle>
                <HeaderStyle BackColor="#ed7203" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" Width="14%" />
                <ItemStyle CssClass="tdcallback" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="sOrigen" HeaderText="TELEFONO">
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
    

                    <br />
    

                    <asp:Button ID="Button1" runat="server" Text="No aplica" 
                        ForeColor="White" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button1Click" />
                </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        GridView1.EmptyDataText = ""
        Dim sSql As String = ""
        Dim idagente As String = Gestion.Agente.IdAgente
        Dim idcampaña As String = Gestion.Campanya.IdCampanya
        'EN PROCESO
        sSql = "SELECT TOP (5) " +
        "    A.idTransaccion AS idTransaccionOriginal, " +
        "    CAST(tCreacion AS DATE) AS fecha, " +
        "    FORMAT(tCreacion, 'HH:mm:ss') AS hora, " +
        "    CASE " +
        "        WHEN C.estado IS NULL THEN 'Abierto' " +
        "        ELSE C.estado " +
        "    END AS estado, " +
        "    B.sOrigen " +
        "FROM " +
        "    TRANSACCION A " +
        "INNER JOIN " +
        "    tbContactos B ON A.idTransaccion = B.idTransaccion " +
        "LEFT JOIN " +
        "    __Gestion_Abandonos C ON C.idTransactionOriginal = A.idTransaccion " +
        "LEFT JOIN " +
        "    vwAgente D ON C.idAgente = D.idUsuario " +
        "WHERE " +
        "    A.idCampanya IN (100000077) " +
        "    AND A.idFinal = 10 " +
        "    AND C.idAgente =" + idagente + " " +
        "    AND C.estado = 'En proceso' " +
        "    AND A.nTQ > 5 " +
        "UNION " +
        "SELECT TOP (5) " +
        "    A.idTransaccion AS idTransaccionOriginal, " +
        "    CAST(tCreacion AS DATE) AS fecha, " +
        "    FORMAT(tCreacion, 'HH:mm:ss') AS hora, " +
        "    CASE " +
        "        WHEN C.estado IS NULL THEN 'Abierto' " +
        "        ELSE C.estado " +
        "    END AS estado, " +
        "    B.sOrigen " +
        "FROM " +
        "    TRANSACCION A " +
        "INNER JOIN " +
        "    tbContactos B ON A.idTransaccion = B.idTransaccion " +
        "LEFT JOIN " +
        "    __Gestion_Abandonos C ON C.idTransactionOriginal = A.idTransaccion " +
        "LEFT JOIN " +
        "    vwAgente D ON C.idAgente = D.idUsuario " +
        "WHERE " +
        "    A.idCampanya IN (100000077) " +
        "    AND A.idFinal = 10 " +
        "    AND A.nTQ > 5 " +
        "    AND C.estado IS NULL " +
        "UNION " +
        "SELECT TOP (5) " +
        "    A.idTransaccion AS idTransaccionOriginal, " +
        "    CAST(tCreacion AS DATE) AS fecha, " +
        "    FORMAT(tCreacion, 'HH:mm:ss') AS hora, " +
        "    CASE " +
        "        WHEN C.estado IS NULL THEN 'Abierto' " +
        "        ELSE C.estado " +
        "    END AS estado, " +
        "    B.sOrigen " +
        "FROM " +
        "    tbHistoFTransacciones A " +
        "INNER JOIN " +
        "    tbHistoFContactos B ON A.idTransaccion = B.idTransaccion " +
        "LEFT JOIN " +
        "    __Gestion_Abandonos C ON C.idTransactionOriginal = A.idTransaccion " +
        "LEFT JOIN " +
        "    vwAgente D ON C.idAgente = D.idUsuario " +
        "WHERE " +
        "    A.idCampanya IN (100000077) " +
        "    AND A.idFinal = 10 " +
        "    AND A.nTQ > 5 " +
        "    AND C.estado IS NULL " +
        "    AND tCreacion >= DATEADD(WEEK, -1, GETDATE()) " +
        "    AND tCreacion < DATEADD(WEEK, 0, GETDATE())"
        'sSql += "AND (LAH.estado = 'En proceso' AND agt.idUsuario ='" + idagente + "')"
        Icr.Evolution.EvolutionLibrary.Traces.Debug("busqueda_CallBacks -> " + sSql)
        SqlDataSource1.SelectCommand = sSql
       ' GridView1.DataBind() ' Actualizar la vista del GridView
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idTransaccionOriginal As String = GridView1.SelectedValue.ToString()
        Dim estado As String = GridView1.SelectedRow.Cells(3).Text ' El índice puede variar dependiendo del orden de las columnas.              
        Dim telefono As String = GridView1.SelectedRow.Cells(4).Text ' El índice puede variar dependiendo del orden de las columnas.              
        
        ' Construir la URL con los parámetros
        Dim url As String = "InsertarEstadoEnProceso.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&estado=" + estado + "&telefono=" + telefono
        ' Redireccionar a la página con los parámetros
        Response.Redirect(url)
        'Response.Redirect("ActualizarEstado.aspx?Idtransaction=" + GridView1.SelectedValue.ToString())
    End Sub

    Protected Sub Button1Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1000)
    End Sub
</script>
