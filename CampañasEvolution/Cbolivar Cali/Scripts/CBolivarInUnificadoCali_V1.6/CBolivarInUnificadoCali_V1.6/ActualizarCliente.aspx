<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style9
        {
            width: 202px;
        }
        .style10
        {
            height: 44px;
        }
        .style11
        {
            width: 202px;
            height: 44px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="formulario" style="width:603px;">        
        <thead>
<tr>
    <th style="border: 1px solid #249E6B; text-align:center; background-color: #249E6B; font-size: 16px; color: #FFFFFF; font-weight: bold; padding-top: 10px; padding-bottom: 10px;" 
        colspan="3">
        Datos Personales
    </th>
</tr>

        </thead>
        <tbody>            
            <tr>
                <td style="border: 1px solid #ED7203;   color: #2b8b4b; font-weight: bold; font-size: 16px; width: 201px;">
                    Numero de Documento:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
                <td 
                    
                    
                    style="border: 1px solid #ED7203;  color: #2b8b4b; font-weight: bold; font-size: 16px; " 
                    class="style9">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
                <td 
                    
                    style="border: 1px solid #ED7203;   color: #2b8b4b; font-weight: bold; font-size: 16px; width: 201px;">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ED7203;   color: #2b8b4b; font-weight: bold; font-size: 16px;" 
                    class="style10">
                    </td>
                <td style="border: 1px solid #ED7203;   color: #2b8b4b; font-weight: bold; font-size: 16px;" 
                    class="style11">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
                <td style="border: 1px solid #ED7203;   color: #2b8b4b; font-weight: bold; font-size: 16px;" 
                    class="style10">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
            </tr>
            <tr>
                <td colspan = "3" style="border: 1px solid #ED7203; text-align:center; height:80px;">
                    <asp:Button ID="Button1" runat="server" Text="Tipificaciones" 
                        OnClick ="actualizarcliente" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" BorderWidth="1px" 
                        style="white-space:normal;"/>
                </td>
            </tr>
        </tbody>
    </table>

    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
        
    End Sub
    
    Protected Sub actualizarcliente(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim newidsujeto As String = Request.QueryString("newidsujeto")
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub

</script>
