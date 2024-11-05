<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <style type="text/css">
        .style1
        {
            width: 201px;
            padding:20px;
        }
        .style2
        {
            height: 25px;
        }
        .campoti
        {
           padding: 5px;
           border-style: solid solid solid solid;
           border-width: 1px;
           border-color: #ed7203;
           color: #249e6b; font-weight: bold;
           font-size: 14px;
           width: 201px;
           vertical-align: middle;
        }
        
        </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <table class="formulario" style="width:80%">        
        <thead>
            <tr>
            <th colspan="1" style="border: 1px solid #2b8b4b; text-align: left; background-color: #2b8b4b;
                color: WHITE; font-weight: bold; font-size: 16px;">
                &nbsp;
                </th>
                <th colspan="2" style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b;
                    color: WHITE; font-weight: bold; font-size: 16px;">
                General</th>
                <th colspan = "1" 
                    style="border: 1px solid #2b8b4b; text-align:left; background-color: #2b8b4b; color: WHITE; font-weight: bold; font-size: 16px;" >
                    &nbsp;</th>
                
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button1" runat="server" 
                        callDispositionCode="171" CssClass="btn btn_callDisposition_Button" 
                        Text="Cliente cuelga llamada sin finalizar servicio" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button2" runat="server" 
                        callDispositionCode="172" CssClass="btn btn_callDisposition_Button" 
                        Text="Falla de audio" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button27" runat="server" 
                        callDispositionCode="202" CssClass="btn btn_callDisposition_Button" 
                        Text="Peticiones juridico" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button29" runat="server" 
                        callDispositionCode="211" CssClass="btn btn_callDisposition_Button" 
                        Text="Horarios y direcciones no CRM" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button30" runat="server" 
                        callDispositionCode="213" CssClass="btn btn_callDisposition_Button" 
                        Text="Interesados proyecto expectativa" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button31" runat="server" 
                        callDispositionCode="215" CssClass="btn btn_callDisposition_Button" 
                        Text="Asesoria comercial empresarial" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button32" runat="server" 
                        callDispositionCode="221" CssClass="btn btn_callDisposition_Button" 
                        Text="Transferencia Area Administrativa" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True" CausesValidation="False"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button25" runat="server" 
                        callDispositionCode="176" CssClass="btn btn_callDisposition_Button" 
                        Text="Llamada equivocada" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True" CausesValidation="False"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button26" runat="server" 
                        callDispositionCode="177" CssClass="btn btn_callDisposition_Button" 
                        Text="No titular" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True" CausesValidation="False"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button33" runat="server" 
                        callDispositionCode="223" CssClass="btn btn_callDisposition_Button" 
                        Text="Falla aplicativos Bolivar" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True" CausesValidation="False"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button34" runat="server" 
                        callDispositionCode="173" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion otras areas" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True" CausesValidation="False"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    &nbsp;</td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    colspan="4">                     
                    <input id="Button3" 
                        style="width: 200px; height: 60px; background-color: #2b8b4b; background-image: none; font-size: small; font-weight: bold;" type="button" 
                        value="Transferir a encuesta" onclick = "Transf_Encuesta()" />&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Atras" 
                        OnClick ="atras" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" 
                        Height="60px" Width="200px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" />
                </td>
            </tr>
        </tbody>
    </table>            
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
    End Sub

    Protected Sub tramiteycartera(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesTramiteYCartera.aspx?newidsujeto=" + newidsujeto)
    End Sub
    Protected Sub postventayconstruccion(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesPostventayconstruccion.aspx?newidsujeto=" + newidsujeto)
    End Sub
    Protected Sub comercial(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesComercial.aspx?newidsujeto=" + newidsujeto)
    End Sub
    Protected Sub general(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesGeneral.aspx?newidsujeto=" + newidsujeto)
    End Sub
    

    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub
</script>
