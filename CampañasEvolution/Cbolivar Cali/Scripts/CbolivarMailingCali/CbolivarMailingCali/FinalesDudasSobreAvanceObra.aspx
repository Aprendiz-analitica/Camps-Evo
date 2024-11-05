<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 201px;
            padding:20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:100%;">        
        <thead>
            <tr>
                <th style="border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold;" colspan="3" align="center">
                    Datos del cliente</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Nit titular 1:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                </td>
                <td 
                    
                    
                    style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 402px;" 
                    colspan="2">
                    Nombre titular 1:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Nit titular 2:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox8" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="NIT2" 
                        Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 402px;" 
                    colspan="2">
                    Nombre titular 2:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Clave="Nombre2" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Teléfono 1:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox10" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="NIT2" 
                        Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Teléfono 2:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox11" runat="server" 
                        AtributoCliente="Telefono2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="NIT2" 
                        Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Direccion:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox17" 
                        runat="server" Clave="Direccion" Enabled="False" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Correo:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox18" 
                        runat="server" Clave="Correo" Enabled="False" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Origen:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox16" 
                        runat="server" Clave="Origen" Enabled="False" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Proyecto:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox13" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="Proyecto" 
                        Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Agrupación:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox14" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" 
                        Clave="Agrupacion" Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Tipo de Proyecto:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox15" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" 
                        Clave="TipoProyecto" Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Venta:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox19" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" 
                        Clave="Venta" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Fecha de venta:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox20" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" 
                        Clave="FechaVenta" Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    &nbsp;</td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    &nbsp;</td>
            </tr>
<tr>
                <th style="border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    colspan="3" align="center">
                    Tiene dudas sobre el avance de obra</th>
            </tr>
            <tr>
                <td class="style1" 
                    
                    style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 603px;" 
                    colspan="3">
                    Observaciones:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox21" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="95%" ValidatorStyle-ForeColor="Red" 
                        Clave="ObservacionesDSAO" TipoTextBox="MultiLine" 
                        ValueStyle-Height="100px" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DatosCliente_TextBox21" 
                        ErrorMessage="Este campo no puede estar vacio" Font-Size="10px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1" 
                    
                    style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; text-align: center; width: 603px;" 
                    colspan="3">
                    <asp:Button ID="Button1" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" Font-Size="14px" Height="50px" 
                        onclick="Button1_Click" Text="Recibe Información y agradece" Width="160px"  style="white-space:normal" />
                </td>
            </tr>
        </tbody>
    </table>          

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Gestion.FinalGestion(108)
    End Sub
</script>
