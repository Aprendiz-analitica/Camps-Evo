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
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        If idsujeto > 0 Then
            Response.Redirect("~/ActualizarCliente.aspx?newidsujeto=" + newidsujeto)
        Else
            Response.Redirect("~/CrearCliente.aspx")
        End If
        
    End Sub
    
</script>