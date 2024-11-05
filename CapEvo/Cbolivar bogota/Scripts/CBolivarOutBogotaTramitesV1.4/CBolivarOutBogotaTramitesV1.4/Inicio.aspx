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
                Traces.Debug("Vamos a pre-identificar al cliente")
                Response.Redirect("~/Cliente_Busqueda.aspx?inicio=true")
            End If
        End If
        
        'Response.Write("" + Gestion.Transaccion.ContactoInicial.Canal.ToString())
        'Response.End()
        
        Response.Redirect("~/ActualizarCliente.aspx")
        
        'If Gestion.Transaccion.ContactoInicial.IdContacto = -1 Then
        'Presencial
        ' Response.Redirect("~/ActualizarCliente.aspx")
        'Else
        'Select Case EvoAPI.Transaction.OriginatingContact.Channel
        '  Case ICR.Comun.Enumerator.ECanal.Email
        ' Response.Redirect("~/Cliente_Email.aspx")
        '   Case ICR.Comun.Enumerator.ECanal.Twitter
        ' Response.Redirect("~/Cliente_Twitter.aspx")
        '    Case ICR.Comun.Enumerator.ECanal.Chat
        ' Response.Redirect("~/Cliente_Chat.aspx")
        ' Case ICR.Comun.Enumerator.ECanal.Whatsapp
        ' Response.Redirect("~/Cliente_Whatsapp.aspx")
        '     Case ICR.Comun.Enumerator.ECanal.Telegram
        '  Response.Redirect("~/Cliente_Telegram.aspx")
        ' Case ICR.Comun.Enumerator.ECanal.FacebookMessenger
        'Response.Redirect("~/Cliente_FacebookMessenger.aspx")
        '    Case ICR.Comun.Enumerator.ECanal.Web
        'Response.Redirect("~/Cliente_WebChatbot.aspx")
        '    Case ICR.Comun.Enumerator.ECanal.Unknown
        'Response.Redirect("~/Cliente_Documento_VoiceMail.aspx")
        '    Case Else
        'Response.Redirect("~/Cliente_Documento.aspx")
        'End Select
        'End If
    End Sub
    
</script>