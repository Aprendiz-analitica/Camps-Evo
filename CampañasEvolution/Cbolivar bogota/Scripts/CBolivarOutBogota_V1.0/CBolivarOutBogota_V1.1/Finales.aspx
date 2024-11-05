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
        .campoti
        {
           padding: 5px;
           border-style: solid solid solid solid;
           border-width: 1px;
           border-color: #ed7203;
           color: #249e6b; font-weight: bold;
           font-size: 14px;
           width: 201px;
           vertical-align: middle;
           text-align:center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:100%;">        
        <thead>
            <tr>
<th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="3" align="center">
                    CONSTRUCTORA BOLIVAR 
                    -
                    DATOS CLIENTE</th>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox8" runat="server" 
                        AtributoCliente="Texto1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="30%" TipoTextBox="Date" Visible="False" 
                        Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    colspan="3">
                    Fecha actualizacion de datos:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Texto3" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="161.5px" TipoTextBox="Date" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 603px; vertical-align: middle;" 
                    colspan="3">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" 
                        Height="100%" Width="100%" style="display: flex;" Font-Size="13px" 
                        Enabled="False" />
                </td>
            </tr>

        </thead>
    </table>
    <table class="formulario" style="width:100%;">  
        <tbody>
            <tr>
                <th colspan="2" 
                    
                    style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; height: 29px; font-weight: bold;">
                    TIPIFICACIONES</th>
            </tr>
            <tr>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button3" runat="server" Text="BOLIVAR INBOUND" 
                        ForeColor="White" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="sac_pqrs" />
                </td>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button4" runat="server" Text="FUNDACION BOLIVAR" 
                        ForeColor="White" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="fundacion" />
                </td>
            </tr> 
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
