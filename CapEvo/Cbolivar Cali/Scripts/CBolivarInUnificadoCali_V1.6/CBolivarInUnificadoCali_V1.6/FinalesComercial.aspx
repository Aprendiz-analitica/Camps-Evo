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
            width: 201px;
            padding:20px;
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
    <table class="formulario" style="width:100%">    
        <tbody>            
             <tr>
                <th colspan="3" 
                    
                    style="border-style: solid solid hidden solid; border-width: 1px; border-color: #2b8b4b; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; height: 29px; font-weight: bold;">
                    COMERCIAL</th>
                    </tr>           
        </tbody>
    </table>
    <table class="formulario" style="width:100%">
      <tbody>            
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button1" runat="server" 
                        callDispositionCode="165" 
                        Text="Informacion horario y direcciones salas de ventas" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button2" runat="server" 
                        callDispositionCode="166" CssClass="btn btn_callDisposition_Button" 
                        Text="Interesados dejan datos" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button3" runat="server" 
                        callDispositionCode="167" CssClass="btn btn_callDisposition_Button" 
                        Text="Interesados en proyectos no vigentes" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button4" runat="server" 
                        callDispositionCode="168" CssClass="btn btn_callDisposition_Button" 
                        Text="Interesados no dejan datos" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button25" runat="server" 
                        callDispositionCode="169" CssClass="btn btn_callDisposition_Button" 
                        Text="Peticiones del proceso de venta" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button26" runat="server" 
                        callDispositionCode="170" CssClass="btn btn_callDisposition_Button" 
                        Text="Queja comercial" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button27" runat="server" 
                        callDispositionCode="202" CssClass="btn btn_callDisposition_Button" 
                        Text="Peticiones juridico" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button32" runat="server" 
                        callDispositionCode="216" CssClass="btn btn_callDisposition_Button" 
                        Text="Reclamaciones del proceso de venta" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button29" runat="server" 
                        callDispositionCode="211" CssClass="btn btn_callDisposition_Button" 
                        Text="Horarios y direcciones no CRM" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button30" runat="server" 
                        callDispositionCode="213" CssClass="btn btn_callDisposition_Button" 
                        Text="Interesados proyecto expectativa" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button31" runat="server" 
                        callDispositionCode="215" CssClass="btn btn_callDisposition_Button" 
                        Text="Asesoria comercial empresarial" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <input id="Button11" 
                        
                        
                        style="width: 200px; height: 60px; background-color: #2b8b4b; background-image: none; font-size: small; font-weight: bold;" type="button" 
                        value="Transferir a encuesta" onclick = "Transf_Encuesta()"  /></td>   
            </tr>
            <tr>
            <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button5" runat="server" 
                        callDispositionCode="400" CssClass="btn btn_callDisposition_Button" 
                        Text="Traslado de Inmueble" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>  
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                   
                </td>  
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                   
                </td> 
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                   
                </td> 
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1" colspan="4">                     
                    &nbsp;&nbsp;&nbsp;                     
                    <asp:Button ID="Button3" runat="server" Text="Atras" 
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
    
    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub
</script>