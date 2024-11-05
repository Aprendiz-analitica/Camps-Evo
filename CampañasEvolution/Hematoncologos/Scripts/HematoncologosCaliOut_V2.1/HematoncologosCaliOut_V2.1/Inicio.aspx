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
        If Gestion.Cliente.IdSujeto = 0 Then
            Response.Redirect("~/Cliente_Busqueda.aspx")
        Else
            Response.Redirect("~/Finales.aspx")
        End If
        
    End Sub
    
</script>