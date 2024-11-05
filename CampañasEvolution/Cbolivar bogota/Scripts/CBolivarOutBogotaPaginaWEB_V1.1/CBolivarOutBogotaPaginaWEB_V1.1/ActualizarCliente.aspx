<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <tr>
    <td colspan = "4">
    <br />
    <table class="formulario" style="width:100%;">        
        <thead>
            <tr>
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 20px; color: #FFFFFF; font-weight: bold;" 
                    align="center">
                    Datos personales</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Numero de documento:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="50%" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Nombre completo:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Numero de telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="50%" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Numero de telefono adicional:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Telefono2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="50%" />
                </td>
            </tr>
            <tr>
                <td 
                    style="border: 1px solid #2b8b4b; text-align:center; height:80px;">
                    <asp:Button ID="Button1" runat="server" Text="Actualizar Cliente" 
                        OnClick ="actualizarcliente" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" BorderWidth="1px" 
                        style="white-space:normal;"  />
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
        Dim idoriginal As String = ""
        Dim fullname As String = ""
        Dim idcall As String = ""
        Dim telori As String = ""
        telori = DatosCliente_TextBox6.TextValue
        idoriginal = DatosCliente_TextBox1.TextValue
        fullname = DatosCliente_TextBox2.TextValue
        idcall = Gestion.Transaccion.IdTransaccion
        Dim idsujeto As Long = Request.QueryString("newidsujeto")
        Dim newidsujeto As String = idsujeto.ToString()
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub

</script>
