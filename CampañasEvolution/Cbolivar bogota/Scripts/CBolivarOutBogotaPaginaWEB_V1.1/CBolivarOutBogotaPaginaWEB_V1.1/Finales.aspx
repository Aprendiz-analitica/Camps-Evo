<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript" src="Resources/js/JQuery.js"></script>
       <script type="text/javascript">
       </script>
       <style type="text/css">
       </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <tr>
    <td colspan = "4">
    <table class="formulario" style="width:100%;">       
        <thead>
            <tr>
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 20px; color: #FFFFFF; font-weight: bold;" 
                    align="center" colspan="2">
                    Constructora Bolivar Bogota<br />
                    Cobranzas</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    NIT:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                    <br />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Cliente:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Tel1:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Tel2:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Telefono2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Correo:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" Clave="Correo" />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Proyecto:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" Clave="Proyecto" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Agrupacion:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" Clave="Agrupacion" />
                </td>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Max Mora Edad:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox8" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" Clave="MaxMoraEdad" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;" 
                    colspan="2">
                    Ultimo Final:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox10" 
                        runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" Clave="UltimoFinal" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px; text-align: center;" 
                    colspan="2">
                    Observaciones:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox9" 
                        runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Clave="clave" AtributoCliente="Observaciones" 
                        Height="100px" TipoTextBox="MultiLine" style="display:flex" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px; text-align: center;" 
                    colspan="2">
                    <evo:CallDisposition_RadioButtonList ID="CallDisposition_RadioButtonList1" 
                        runat="server" CallDispositionCodes="128-152" CellSpacing="15" 
                        RepeatColumns="3" Text="Finalizar" Width="100%" 
                        onbeforeclick="CallDisposition_RadioButtonList1_BeforeClick" />
                </td>
            </tr>
        </tbody>
    </table>

    </td>
</tr>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub CallDisposition_RadioButtonList1_BeforeClick(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
    End Sub
</script>
