<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    INSERTE AQUi SU CoDIGO
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">

</asp:Content>

<script runat="server">
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim Ya_iniciado As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("inicio_" + Gestion.Transaccion.IdTransaccion.ToString(), Ya_iniciado)
        Traces.Debug("Página inicio: " + Ya_iniciado + " transaccion: " + Gestion.Transaccion.IdTransaccion.ToString)
        If String.IsNullOrWhiteSpace(Ya_iniciado) Then
            'Si es la primera vez que pasamos por aquí
            Traces.Debug("Es la primera vez que pasamos por inicio")
            Gestion.Transaccion.KeyValueCollection.SetValue("inicio_" + Gestion.Transaccion.IdTransaccion.ToString(), "true")
            If Gestion.Cliente.IdSujeto = 0 Then
                Response.Redirect("~/Cliente_Alta_Sinidentificar.aspx")
            End If
        Else
            Response.Redirect("~/ActualizarCliente.aspx")
        End If
        Response.Redirect("~/ActualizarCliente.aspx")
        
    End Sub
    
</script>