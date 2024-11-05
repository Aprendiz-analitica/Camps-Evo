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
                <th style="border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    colspan="3" align="center">
                    Constructora Bolivar Inbound Datos</th>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Numero de Documento:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%"  Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Primer nombre:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%"  Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Segundo nombre:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%"  Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%"  Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Primer apellido:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%"  Enabled="False" />
                </td>
                <td style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Segundo apellido:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%"  Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px 0px 5px 0px; border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px; " 
                    colspan="3">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" 
                        Enabled="False" Font-Size="14px"/>
                </td>
            </tr>
            <tr>
                <th style="border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    colspan="3" align="center">
                    Finales</th>
            </tr>
            <tr>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <asp:Button ID="Button3" runat="server" Text="Bolivar Inbound" 
                        ForeColor="White" BackColor="#249E6B " 
                        BorderColor="#249E6B " BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        onclick="sac_pqrs" />
                </td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <asp:Button ID="Button4" runat="server" Text="Fundacion Bolivar" 
                        ForeColor="White" BackColor="#249E6B " 
                        BorderColor="#249E6B " BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        onclick="fundacion" />
                </td>
                <td class="style1" 
                    style="border: 1px solid #249E6B ; color: #249E6B ; font-weight: bold; font-size: 14px;">
                    <asp:Button ID="Button5" runat="server" Text="Fundacion Bolivar" 
                        ForeColor="White" BackColor="White" 
                        BorderColor="White" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        onclick="fundacion" Enabled="False" />
                </td>
            </tr>
        </thead>
        <tbody>            
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
    Protected Sub sac_pqrs(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Dim tipificacion As String = "102"
        Response.Redirect("~/Tipificaciones.aspx?newidsujeto=" + newidsujeto + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub fundacion(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Dim tipificacion As String = "103"
        Response.Redirect("~/Fundacion.aspx?newidsujeto=" + newidsujeto + "&tipificacion=" + tipificacion)
    End Sub
    
   


</script>
