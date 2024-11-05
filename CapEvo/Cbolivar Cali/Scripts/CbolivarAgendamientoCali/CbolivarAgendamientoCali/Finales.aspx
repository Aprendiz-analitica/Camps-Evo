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
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" />
                </td>
                <td 
                    
                    
                    style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 402px;" 
                    colspan="2">
                    Nombre titular 1:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Nit titular 2:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox8" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="NIT2" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 402px;" 
                    colspan="2">
                    Nombre titular 2:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Clave="Nombre2" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Analista Campaña:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox12" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="Analista" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Teléfono 1:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox10" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="NIT2" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Teléfono 2:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox11" runat="server" 
                        AtributoCliente="Telefono2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="NIT2" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Proyecto:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox13" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="Proyecto" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Agrupación:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox14" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" 
                        Clave="Agrupacion" />
                </td>
                <td style="border: 1px solid #249E6B; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px;">
                    Tipo de Proyecto:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox15" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" 
                        Clave="TipoProyecto" />
                </td>
            </tr>
<tr>
                <th style="border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    colspan="3" align="center">
                    Tipificaciones</th>
            </tr>
            <tr>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button1" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="100" Text="Agendado Fenalco" Width="160px" />
                </td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button2" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="101" Text="No contesta" Width="160px" />
                </td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button3" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="102" Text="No quiere agendar" Width="160px" />
                </td>
            </tr>
            <tr>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button4" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="103" Text="Desistimiento" Width="160px" />
                </td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="104" Text="Numero errado" Width="160px" />
                </td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="105" Text="Volver a llamar" Width="160px" />
                </td>
            </tr>
            <tr>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="106" Text="Cliente fuera de la ciudad" Width="160px" />
                </td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button8" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="107" Text="Agendamiento virtual" Width="160px" />
                </td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button9" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="109" Text="Ya asistio" Width="160px" />
                </td>
            </tr>
            <tr>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button10" runat="server" BackColor="#249E6B " 
                        BorderColor="#249E6B " Font-Bold="True" Font-Size="14px" Height="50px" 
                        idFinal="108" Text="Agendado Bolivar" Width="160px" />
                </td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    &nbsp;</td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    &nbsp;</td>
            </tr>
        </tbody>
    </table>          

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
</script>
