<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value = "";
            var valorNumDoc = document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value;
            function comienzaConT(cadena) {
                return cadena.charAt(0).toLowerCase() === 't';
            }
            if (comienzaConT(valorNumDoc) == true) {
                document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value = "";
            }
            
        });
    </script>
    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:100%;">        
        <thead>
            <tr>
                <th style="border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold;" colspan="3" align="center">
                    Datos Cliente</th>
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
                    Analista Campaña:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox16" 
                        runat="server" Clave="Analista" Enabled="False" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
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
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="Telefono2" />
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
                <td colspan = "3" style="border: 1px solid #249E6B ; text-align:center; ">
                    <evo:GuardarDatosCliente_Button ID="GuardarDatosCliente_Button1" runat="server" 
                        BackColor="#249E6B " BorderColor="#249E6B " 
                        Destino="~/Finales.aspx" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" Text="Guardar Datos" Width="160px" />
                </td>
            </tr>
        </tbody>
    </table>

    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Gestion.Cliente.IdSujeto = 0 Then
            Response.Redirect("~/Cliente_Busqueda.aspx")
        End If
    End Sub
    
</script>
