<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            height: 25px;
        }
        .style4
        {
            height: 26px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    
    <br />  
                  
    <table class="formulario" style="width:1000px;">        
        <thead>
            <tr>
                <th style="text-align:center; background-color: #28a745; font-size: 20px; color: #FFFFFF; font-weight: bold; font-family: sans-serif;" 
                    align="center" class="style6">
                    Constructora Bolívar Inbound<br />
                    Finales - Tramite y cartera</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button1" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="100" Text="ACTUALIZACION DE INFORMACION DEL CLIENTE" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button2" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="101" Text="AJUSTE PLAN DE PAGOS" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button3" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="102" Text="APLICACIONES DE PAGO O CONCILIACIONES&nbsp;&nbsp;" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button4" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="103" Text="CAMBIO FECHA PACTADA DE ENTREGA INMUEBLE" 
                        Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="104" Text="CERTIFICADO DE COMPRA Y APORTES" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="105" Text="CERTIFICADO DE TRADICION" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="106" Text="CERTIFICADO PARA DECLARACION DE RENTA" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button8" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="107" Text="CESANTIAS O AHORROS PROGRAMADOS" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button9" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="108" Text="CESIONES" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button10" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="109" Text="DEVOLUCIÓN DE RECURSOS POR EXCEDENTES" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button13" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="112" Text="DEVOLUCION VENTA NO REGISTRADA" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button14" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="113" Text="ELABORACION DE PODER" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button15" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="114" Text="ENTREGA ESCRITURA REGISTRADA AL CLIENTE" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button16" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="115" Text="ENTREGA INMUEBLE" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button19" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="116" Text="ESTADO DE CUENTA" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button20" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="117" Text="ESTADO MONETIZACION" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button21" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="118" Text="ESTUDIO DE TITULOS Y AVALUOS" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button22" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="119" Text="FIRMA DE PAGARES" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button23" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="120" Text="IDENTIFICACION DE PAGO" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button24" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="121" Text="INFORMACION DEL PROCESO DE CREDITO" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button27" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="124" Text="INFORMACION FECHA DE ENTREGA DE INMUEBLE" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button28" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="125" Text="INFORMACION PORTAL BOLIVAR CONTIGO" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button57" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="126" Text="INFORMACIÓN PREDIAL" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;                     
                                       
                    <evo:Final_Button ID="Final_Button58" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="127" Text="INFORMACIÓN SOBRE EL PROCESO DE ESCRITURACIÓN" 
                        Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button29" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="128" Text="INFORMACIÓN PROCESO DEL DESISTIMIENTO RADICADO&nbsp;" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button30" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="129" Text="INFORMACIÓN&nbsp;PARA DESISTIR" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button31" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="130" Text="LEGALIZACIÓN DE LA ESCRITURA" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button32" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="131" Text="MEDIOS DE PAGO" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button37" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="138" Text="NOVEDAD CON EL CREDITO" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button38" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="139" Text="OTRO SI" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button39" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="140" Text="PETICIONES CAPITAL SOCIAL" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button40" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="141" Text="PETICIONES DE MERCADEO" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button41" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="142" Text="PETICIONES DISEÑO" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button42" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="143" Text="PODERES" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button43" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="144" Text="PROMESA DE COMPRAVENTA" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button44" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="145" Text="PRORROGA PARA ESCRITURAR" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button45" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="146" Text="QUEJAS MERCADEO" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button46" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="147" Text="QUEJAS TRAMITE Y CARTERA" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button47" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="148" Text="RECLAMACIONES TRAMITE Y CARTERA" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button48" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="149" Text="REFORMAS (MAYOR A VIS)" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button51" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="152" Text="SOLICITUD DE DESISTIMIENTO " 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button52" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="153" Text="SOLICITUD DE PLAZO PARA DESEMBOLSO DEL CREDITO" 
                        Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button53" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="154" Text="SOLICITUD PLAZO PARA TRAMITE DE CREDITO" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button54" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="155" Text="SUBSIDIOS" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button62" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="206" 
                        Text="DESCUENTO FINANCIERO-NO VIS" 
                        
                        Width="415px" onpreclick="Final_Button59_PreClick1" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                                       
                    <evo:Final_Button ID="Final_Button11" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="110" Text="DEVOLUCION POR DESISTIMIENTO" 
                        Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style4">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button63" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="210" 
                        Text="MODIFICACION PLAN DE PAGOS" 
                        
                        Width="415px" onpreclick="Final_Button59_PreClick1" />
                                       
                    <br />
                                       
                </td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    &nbsp;</td>                
            </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
    
    Protected Sub Final_RadioButtonList1_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
    End Sub
    
    Protected Sub Final_Button59_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Protected Sub Final_Button59_PreClick1(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>
