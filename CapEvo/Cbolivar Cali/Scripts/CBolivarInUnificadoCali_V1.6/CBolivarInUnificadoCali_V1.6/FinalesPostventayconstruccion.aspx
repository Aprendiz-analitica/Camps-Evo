<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <script type="text/javascript">
        function Transf_Encuesta() {
            agentapi.FastTransferActiveCall('6049')
            .done(function () {
            })
            .fail(function (code, cause) {
                alert('No se pudo realizar la Transferencia');
            });
        }
     </script>
    <style type="text/css">
        .style1
        {
            width: 210px;
        }
    </style>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
 
                  
    <table class="formulario" style="width:80%">        
        <thead>
                    <tr>
            <th colspan = "1" 
                    style="border: 1px solid #2b8b4b; text-align:left; background-color: #2b8b4b; color: WHITE; font-weight: bold; font-size: 16px;" >
                &nbsp;</th>
            <th colspan = "2" 
                    
                    style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; color: WHITE; font-weight: bold; font-size: 16px;" >
                Postventa y Construccion</th>
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
                        callDispositionCode="156" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion certificado gas" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button2" runat="server" 
                        callDispositionCode="157" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion servicios publicos" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button3" runat="server" 
                        callDispositionCode="158" CssClass="btn btn_callDisposition_Button" 
                        Text="Peticiones del proceso de construccion" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button4" runat="server" 
                        callDispositionCode="159" CssClass="btn btn_callDisposition_Button" 
                        Text="Peticiones posteriores a la entrega" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button25" runat="server" 
                        callDispositionCode="160" CssClass="btn btn_callDisposition_Button" 
                        Text="Queja postventa" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button26" runat="server" 
                        callDispositionCode="161" CssClass="btn btn_callDisposition_Button" 
                        Text="Queja del proceso de construccion" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button27" runat="server" 
                        callDispositionCode="162" CssClass="btn btn_callDisposition_Button" 
                        Text="Reclamacion postventa" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button28" runat="server" 
                        callDispositionCode="163" CssClass="btn btn_callDisposition_Button" 
                        Text="Visita programa arquitecto" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button29" runat="server" 
                        callDispositionCode="200" CssClass="btn btn_callDisposition_Button" 
                        Text="Pendientes entrega autogestion" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button30" runat="server" 
                        callDispositionCode="217" CssClass="btn btn_callDisposition_Button" 
                        Text="Peticiones admon provisional" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button31" runat="server" 
                        callDispositionCode="218" CssClass="btn btn_callDisposition_Button" 
                        Text="Quejas admon provisional" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button32" runat="server" 
                        callDispositionCode="219" CssClass="btn btn_callDisposition_Button" 
                        Text="Reclamaciones admon provisional" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button33" runat="server" 
                        callDispositionCode="224" CssClass="btn btn_callDisposition_Button" 
                        Text="Felicitaciones postventa" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B"  />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    class="style1">                     
                    &nbsp;</td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    &nbsp;</td>                                    
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center">                     
                    &nbsp;</td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; text-align:center" 
                    colspan="4">                     
                    <input id="Button2" 
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
    
    Protected Sub atras(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/ActualizarCliente.aspx?newidsujeto=" + newidsujeto)
    End Sub

    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub
</script>
