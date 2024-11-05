<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
    <script type="text/javascript">
    </script>
    
    <style type="text/css">
        .style10
        {
            width: 200px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

                    
    
    <br />  
                  
    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    colspan="3" align="center" class="style8">
                    Constructora Bolivar Inbound<br />
                    Datos</th>
            </tr>
            <tr>
                <td style="padding: 10px 20px 10px 20px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px; text-align: center;" 
                    class="style3">
                    Numero de Documento:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="padding: 10px 20px 10px 20px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px; text-align: center;" 
                    class="style3">
                    Primer nombre:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="padding: 10px 20px 10px 20px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px; text-align: center;" 
                    class="style3">
                    Segundo nombre:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px 20px 10px 20px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px; text-align: center;" 
                    class="style3">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="padding: 10px 20px 10px 20px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px; text-align: center;" 
                    class="style3">
                    Primer apellido:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                    <br />
                    </td>
                <td 
                    style="padding: 10px 20px 10px 20px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px; text-align: center;" 
                    class="style3">
                    Segundo apellido:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3" colspan="3">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" 
                        Enabled="False"/>
                </td>
                </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    align="center" class="style9" colspan="3">
                    Finales</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button1" runat="server" ForeColor="#F8DB66" 
                        Text="POST VENTA - GARANTIA" onclick="postventa_garantia" 
                        BackColor="#28A745" BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="16px" Height="30px" Width="250px" />
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button2" runat="server" Text="COMERCIAL" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#F8DB66" Height="30px" Width="250px" onclick="comercial" />
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    class="style10">
                    <asp:Button ID="Button4" runat="server" Text="FUNDACION BOLIVAR" 
                        BackColor="#28A745" BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="16px" ForeColor="#F8DB66" Height="30px" Width="250px" 
                        onclick="fundacion" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button3" runat="server" Text="SAC - PQRS" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#F8DB66" Height="30px" Width="250px" onclick="sac_pqrs" />
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    &nbsp;</td>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="3">
                    &nbsp;</td>
            </tr>
        </thead>
        <tbody>            
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
        Dim check As String = Gestion.Cliente.Texto2
        CheckBox1.Checked = check
    End Sub

    Protected Sub postventa_garantia(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Dim tipificacion As String = "100"
        Response.Redirect("~/PV_G.aspx?newidsujeto=" + newidsujeto + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub comercial(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Dim tipificacion As String = "101"
        Response.Redirect("~/Comercial.aspx?newidsujeto=" + newidsujeto + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub sac_pqrs(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Dim tipificacion As String = "102"
        Response.Redirect("~/SAC_PQRS.aspx?newidsujeto=" + newidsujeto + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub fundacion(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Dim tipificacion As String = "103"
        Response.Redirect("~/Fundacion.aspx?newidsujeto=" + newidsujeto + "&tipificacion=" + tipificacion)
    End Sub
    
   


</script>
