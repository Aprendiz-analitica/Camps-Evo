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
                Tramite y Cartera</th>
                <th colspan = "1" 
                    style="border: 1px solid #2b8b4b; text-align:left; background-color: #2b8b4b; color: WHITE; font-weight: bold; font-size: 16px;" >
                    &nbsp;</th>
                
            </tr>   
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button1" runat="server" 
                        callDispositionCode="100" CssClass="btn btn_callDisposition_Button" 
                        Text="Actualizacion de información del cliente" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button2" runat="server" 
                        callDispositionCode="101" CssClass="btn btn_callDisposition_Button" 
                        Text="Ajuste plan de pagos" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button3" runat="server" 
                        callDispositionCode="102" CssClass="btn btn_callDisposition_Button" 
                        Text="Aplicaciones de pago o conciliaciones" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button4" runat="server" 
                        callDispositionCode="103" CssClass="btn btn_callDisposition_Button" 
                        Text="Cambio fecha pactada de entrega de inmueble" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button5" runat="server" 
                        callDispositionCode="104" CssClass="btn btn_callDisposition_Button" 
                        Text="Certificado de compra y aportes" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button6" runat="server" 
                        callDispositionCode="105" CssClass="btn btn_callDisposition_Button" 
                        Text="Certificado de tradicion" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button7" runat="server" 
                        callDispositionCode="106" CssClass="btn btn_callDisposition_Button" 
                        Text="Certificado para declaracion de renta" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button8" runat="server" 
                        callDispositionCode="107" CssClass="btn btn_callDisposition_Button" 
                        Text="Cesantias o ahorros programados" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button9" runat="server" 
                        callDispositionCode="108" CssClass="btn btn_callDisposition_Button" 
                        Text="Cesiones" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button10" runat="server" 
                        callDispositionCode="109" CssClass="btn btn_callDisposition_Button" 
                        Text="Devolucion de recursos por excedentes" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button11" runat="server" 
                        callDispositionCode="112" CssClass="btn btn_callDisposition_Button" 
                        Text="Devolucion venta no registrada" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button12" runat="server" 
                        callDispositionCode="113" CssClass="btn btn_callDisposition_Button" 
                        Text="Elaboracion de poder" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button13" runat="server" 
                        callDispositionCode="114" CssClass="btn btn_callDisposition_Button" 
                        Text="Entrega de escritura registrada al cliente" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button14" runat="server" 
                        callDispositionCode="115" CssClass="btn btn_callDisposition_Button" 
                        Text="Entrega de inmueble" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button15" runat="server" 
                        callDispositionCode="116" CssClass="btn btn_callDisposition_Button" 
                        Text="Estado de cuenta" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button16" runat="server" 
                        callDispositionCode="117" CssClass="btn btn_callDisposition_Button" 
                        Text="Estado de monetizacion" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button17" runat="server" 
                        callDispositionCode="118" CssClass="btn btn_callDisposition_Button" 
                        Text="Estudio de titulos y avaluos" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button18" runat="server" 
                        callDispositionCode="119" CssClass="btn btn_callDisposition_Button" 
                        Text="Firma de pagares" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button19" runat="server" 
                        callDispositionCode="120" CssClass="btn btn_callDisposition_Button" 
                        Text="Identificacion de pago" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button20" runat="server" 
                        callDispositionCode="121" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion del proceso de credito" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button21" runat="server" 
                        callDispositionCode="124" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion fecha de entrega de inmueble" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button22" runat="server" 
                        callDispositionCode="125" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion portal bolivar contigo" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button23" runat="server" 
                        callDispositionCode="126" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion predial" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button24" runat="server" 
                        callDispositionCode="127" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion sobre el proceso de escrituracion" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button25" runat="server" 
                        callDispositionCode="128" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion sobre el proceso del desistimiento radicado" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button26" runat="server" 
                        callDispositionCode="129" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion para desistir" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button27" runat="server" 
                        callDispositionCode="130" CssClass="btn btn_callDisposition_Button" 
                        Text="Legalizacion de la escritura" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button28" runat="server" 
                        callDispositionCode="131" CssClass="btn btn_callDisposition_Button" 
                        Text="Medios de pago" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button29" runat="server" 
                        callDispositionCode="138" CssClass="btn btn_callDisposition_Button" 
                        Text="Novedad con el credito" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button30" runat="server" 
                        callDispositionCode="139" CssClass="btn btn_callDisposition_Button" 
                        Text="Otro si" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button31" runat="server" 
                        callDispositionCode="140" CssClass="btn btn_callDisposition_Button" 
                        Text="Peticiones capital social" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button32" runat="server" 
                        callDispositionCode="141" CssClass="btn btn_callDisposition_Button" 
                        Text="Peticiones de mercadeo" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button33" runat="server" 
                        callDispositionCode="142" CssClass="btn btn_callDisposition_Button" 
                        Text="Peticiones de diseño" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button34" runat="server" 
                        callDispositionCode="143" CssClass="btn btn_callDisposition_Button" 
                        Text="Poderes" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button35" runat="server" 
                        callDispositionCode="144" CssClass="btn btn_callDisposition_Button" 
                        Text="Promesa de compraventa" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button36" runat="server" 
                        callDispositionCode="145" CssClass="btn btn_callDisposition_Button" 
                        Text="Porroga para escriturar" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button37" runat="server" 
                        callDispositionCode="146" CssClass="btn btn_callDisposition_Button" 
                        Text="Quejas mercadeo" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button38" runat="server" 
                        callDispositionCode="147" CssClass="btn btn_callDisposition_Button" 
                        Text="Quejas tramite y cartera" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button39" runat="server" 
                        callDispositionCode="148" CssClass="btn btn_callDisposition_Button" 
                        Text="Reclamaciones tramite y cartera" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button40" runat="server" 
                        callDispositionCode="149" CssClass="btn btn_callDisposition_Button" 
                        Text="Reformas(Mayor a VIS)" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button41" runat="server" 
                        callDispositionCode="152" CssClass="btn btn_callDisposition_Button" 
                        Text="Solicitud de desistimiento" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button42" runat="server" 
                        callDispositionCode="153" CssClass="btn btn_callDisposition_Button" 
                        Text="Solicitud de plazo para desembolso del credito" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button43" runat="server" 
                        callDispositionCode="154" CssClass="btn btn_callDisposition_Button" 
                        Text="Solicitud plazo para tramite de credito" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button44" runat="server" 
                        callDispositionCode="155" CssClass="btn btn_callDisposition_Button" 
                        Text="Subsidios" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button45" runat="server" 
                        callDispositionCode="206" CssClass="btn btn_callDisposition_Button" 
                        Text="Descuento financiero - No VIS" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button46" runat="server" 
                        callDispositionCode="110" CssClass="btn btn_callDisposition_Button" 
                        Text="Devolucion por desistimiento" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button47" runat="server" 
                        callDispositionCode="210" CssClass="btn btn_callDisposition_Button" 
                        Text="Modificacion plan de pagos" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button48" runat="server" 
                        callDispositionCode="214" CssClass="btn btn_callDisposition_Button" 
                        Text="Quejas diseño" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button49" runat="server" 
                        callDispositionCode="225" CssClass="btn btn_callDisposition_Button" 
                        Text="Campaña recaudo" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button50" runat="server" 
                        callDispositionCode="226" CssClass="btn btn_callDisposition_Button" 
                        Text="Campaña Desistimientos" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button51" runat="server" 
                        callDispositionCode="500" CssClass="btn btn_callDisposition_Button" 
                        Text="Reconsideración de arras" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  /></td>                                    
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button52" runat="server" 
                        callDispositionCode="501" CssClass="btn btn_callDisposition_Button" 
                        Text="Cliente con IDES marcado" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" Font-Bold="True"  /></td>   
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1" colspan="4">                     
                    <input id="Button2" 
                        style="width: 200px; height: 60px; background-color: #2b8b4b; background-image: none; font-size: small; font-weight: bold;" type="button" 
                        value="Transferir a encuesta" onclick = "Transf_Encuesta()" />&nbsp;&nbsp;
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
