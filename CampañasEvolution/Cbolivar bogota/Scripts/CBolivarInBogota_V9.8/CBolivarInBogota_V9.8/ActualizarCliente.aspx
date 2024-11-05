<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/JavaScript" src="Resources/js/agentapi.js"></script>
    <script type="text/javascript">
        agentapi.AgentAppType = "<%=AgentApp.AgentAppType%>";
        agentapi.WebAgentAuthToken = "<%=AgentApp.WebAgentAuthToken%>";
        agentapi.WebAgentServiceUrl = "<%=AgentApp.WebAgentServiceUrl%>";
    </script>
    <style type="text/css">
        .style1
        {
            width: 201px;
        }
        .style2
        {
            width: 201px;
            height: 30px;
        }
    .style3
    {
        width: 201px;
        height: 25px;
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
            }

        });


        function CerraPausa() {
            console.log('Transferencia exitosa');
            localStorage.setItem('guardado', 'false');
            localStorage.setItem('idCall', '');
            console.log('Guardado es ' + localStorage.getItem('guardado') + ' en actualizar cliente ');
            stopTimer(); 
            return true;
        }
    </script>

    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:100%;">        
        <thead>
            <tr>
                <th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="3" align="center">
                    ACTUALIZAR CLIENTE</th>
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
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" />
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox8" runat="server" 
                        AtributoCliente="Texto1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="30%" TipoTextBox="Date" Visible="False" />
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
                        ValueStyle-Width="161.5px" TipoTextBox="Date" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 603px; vertical-align: middle;" 
                    colspan="3">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" 
                        Height="100%" Width="100%" style="display: flex;" Font-Size="13px" />
                </td>
            </tr>
            <tr>
                <td colspan = "3" 
                    style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; text-align:center; width: 201px; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;">
                    <asp:Button ID="Button1" runat="server" Text="Guardar Datos" 
                        OnClick ="actualizarcliente" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        Height="50px" Width="160px" BorderWidth="1px" 
                        style="white-space:normal;"  />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style3">
                    <asp:Button ID="Button2" runat="server" Text="No es titular" 
                        OnClick ="FinalNoTitular" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        Height="50px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" OnClientClick="CerraPausa()"/>
                </td>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style3">
                    <asp:Button ID="Button4" runat="server" Text="Llamada equivocada / Broma" 
                        OnClick ="Final106" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        Height="50px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" OnClientClick="CerraPausa()"/>
                </td>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style3">
                    <asp:Button ID="Button5" runat="server" Text="Llamada administrativa" 
                        OnClick ="Final110" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        Height="50px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" OnClientClick="CerraPausa()"/>
                
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; text-align:center; width: 201px; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style1">
                    <asp:Button ID="Button8" runat="server" Text="Transferencia menu Cali" 
                        OnClick ="Final113" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        Height="50px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" OnClientClick="CerraPausa()"/>
                    </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; text-align:center; width: 201px; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style1">
                    <asp:Button ID="Button9" runat="server" Text="Llamada cortada" 
                        OnClick ="Final112" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        Height="50px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" OnClientClick="CerraPausa()"/>
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; text-align:center; width: 201px; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style1">
                    <asp:Button ID="Button10" runat="server" Text="Llamada muda" 
                        OnClick ="Final104" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        Height="50px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" OnClientClick="CerraPausa()"/>
                </td>
            </tr>
        </tbody>
    </table>

    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
    
    Protected Sub actualizarcliente(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim idcall As String = ""
        Dim telori As String = ""
        Dim check = ""
        Dim factualizacion As String = ""
        check = CheckBox1.Checked
        telori = DatosCliente_TextBox6.TextValue
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        factualizacion = DatosCliente_TextBox7.TextValue
        idcall = Gestion.Transaccion.IdTransaccion
        idsujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "", idoriginal, Nombre1, Apellido1, Apellido2, telefono:=telori, nombreCompleto:=Nombre2, texto1:=idcall, texto2:=check, texto3:=factualizacion)
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub


    Protected Sub Final106(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "106"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        Response.Redirect("~/Inserttablefinales.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub
    
    
    

    Protected Sub Final110(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "110"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        Response.Redirect("~/Inserttablefinales.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub

    Protected Sub FinalNoTitular(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "111"
        Dim idoriginal As String = "NO ES TITULAR"
        Dim Nombre1 As String = "NO ES TITULAR"
        Dim Apellido1 As String = "NO ES TITULAR"
        Dim Nombre2 As String = "NO ES TITULAR"
        Dim Apellido2 As String = "NO ES TITULAR"
        Response.Redirect("~/Inserttablefinales.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub

    Protected Sub Final113(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "113"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        Response.Redirect("~/Inserttablefinales.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)


    End Sub

    Protected Sub Final112(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "112"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        Response.Redirect("~/Inserttablefinales.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub

    Protected Sub Final104(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "104"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        Response.Redirect("~/Inserttablefinales.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
</script>
