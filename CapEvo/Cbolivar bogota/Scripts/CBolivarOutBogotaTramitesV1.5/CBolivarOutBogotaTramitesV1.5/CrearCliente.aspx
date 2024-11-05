<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 201px;
        }
    </style>
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
                document.getElementById("ctl00_MainContent_DatosCliente_TextBox6_textBoxValue").value = "";

            }

        });
    </script>
    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:100%;">        
        <thead>
            <tr>
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" colspan="3" align="center">
                    Crear Cliente</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DatosCliente_TextBox1" 
                        ErrorMessage="Este campo no puede estar vacio" Font-Size="10px"></asp:RequiredFieldValidator>
                </td>
                <td 
                    
                    style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px; width: 402px;" 
                    class="style1" colspan="2">
                    Nombre Completo:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DatosCliente_TextBox2" 
                        ErrorMessage="Este campo no puede estar vacio" Font-Size="10px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Telefono1:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DatosCliente_TextBox6" 
                        ErrorMessage="Este campo no puede estar vacio" Font-Size="10px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Telefono2:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox10" runat="server" 
                        AtributoCliente="Telefono2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Proyecto:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Clave="Proyecto" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Agrupacion:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox9" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Clave="Agrupacion" />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    &nbsp;</td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px; width: 603px;" 
                    class="style1" colspan="3">
                    Nota:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox16" runat="server" 
                        AtributoCliente="Observaciones" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Clave="Correo" TipoTextBox="MultiLine" />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox8" runat="server" 
                        AtributoCliente="Texto1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="30%" TipoTextBox="Date" Visible="False" />
                </td>
            </tr>
            <tr>
                <td colspan = "3" style="border: 1px solid #2b8b4b; text-align:center; ">
                    <evo:GuardarDatosCliente_Button ID="GuardarDatosCliente_Button1" runat="server" 
                        BackColor="#2B8B4B" BorderColor="#2B8B4B" 
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
        DatosCliente_TextBox8.TextValue = Gestion.Transaccion.IdTransaccion.ToString
    End Sub
    
    Protected Sub actualizarcliente(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/FinalesSinIdentificar.aspx")
    End Sub
</script>
