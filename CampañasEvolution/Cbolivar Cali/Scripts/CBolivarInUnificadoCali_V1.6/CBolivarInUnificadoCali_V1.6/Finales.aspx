<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <style type="text/css">
        .style1
        {
            width: 100%;
            padding:20px;
        }
        .style2
        {
            height: 25px;
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
        }
        
        </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="formulario" style="width:100%">
        <thead>
            <tr>
                <th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="3" align="center">
                    Constructora Bolivar Inbound Datos</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DatosCliente_TextBox1" 
                        ErrorMessage="Número de documento es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DatosCliente_TextBox2" 
                        ErrorMessage="Primer nombre es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
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
                   
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DatosCliente_TextBox3" 
                        ErrorMessage="Primer apellido es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Segundo apellido:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
                        
        </tbody>
    </table>
    <table class="formulario" style="width:100%">
        <tbody>
<tr>
    <th colspan="3" style="
        border: 1px solid #ed7203;
        border-bottom: 1px hidden #ed7203;
        padding: 5px;
        background-color: #249E6B;
        font-size: 16px;
        color: #FFFFFF;
        font-weight: bold;
        text-align: center;" class="style1">
        TIPIFICACIONES
    </th>
</tr>

            
            <tr>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #ed7203 ; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button1" runat="server" Text="Tramite y Cartera" onclick="tramiteycartera" 
                        ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="12px" 
                        Height="60px" Width="160px" BorderWidth="1px" 
                        style="white-space:normal;" />
                </td>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #ed7203 ; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button2" runat="server" Text="Postventa y Construcción" 
                        onclick="postventayconstruccion" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="12px" 
                        Height="60px" Width="160px" BorderWidth="1px" 
                        style="white-space:normal;"  />
                </td>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #ed7203 ; color: #2b8b4b; font-weight: bold; font-size: 16px;" 
                    class="style10">
                    <asp:Button ID="Button4" runat="server" Text="Comercial" 
                        ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="12px" 
                        Height="60px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        onclick="comercial" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #ed7203 ; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button3" runat="server" Text="General" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="12px" 
                        Height="60px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        onclick="general" />
                </td>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #ed7203 ; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    &nbsp;</td>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #ed7203 ; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    &nbsp;</td>
            </tr>
        </tbody>
    </table>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
    End Sub

    Protected Sub tramiteycartera(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesTramiteYCartera.aspx?newidsujeto=" + newidsujeto)
    End Sub
    Protected Sub postventayconstruccion(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesPostventayconstruccion.aspx?newidsujeto=" + newidsujeto)
    End Sub
    Protected Sub comercial(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesComercial.aspx?newidsujeto=" + newidsujeto)
    End Sub
    Protected Sub general(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesGeneral.aspx?newidsujeto=" + newidsujeto)
    End Sub
    

</script>
