<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">  
    
    <style type="text/css">
        .style9
        {
            height: 44px;
            width: 30%;
        }
        </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

                    
    
    <br />  
                  
    <table class="formulario" style="width:800px;">        
        <thead>           
            <tr>
               <th style="border: 2px hidden #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold; "colspan="3" align="center" class="style9">
                    Constructora Bolivar
                    Datos</th>
            </tr>
            <tr>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px; text-align: center;" 
                    class="style9" align="center">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#000000" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style12" colspan="1" align="center">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#000000" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style3" align="center">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#000000" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" 
                    align="center">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#000000" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    
                    
                    
                    style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" 
                    colspan="1" align="center">
                    Primer apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#000000" 
                        ValueStyle-Width="94%" Enabled="False" />
                    </td>
                <td 
                    
                    
                    
                    style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" 
                    align="center">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#000000" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" 
                    align="center">
                    N° Garantía:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Texto2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#000000" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    
                    
                    
                    style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" 
                    colspan="1" align="center">
                    &nbsp;</td>
                <td 
                    
                    
                    
                    style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" 
                    align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <th style="border: 2px hidden #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold; "colspan="3" align="center" class="style9">
                    ENVÍO PARA CIERRE CONTACTADO</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button14" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#ffffff" Height="60px" idFinal="611" Text="NO QUIERE" 
                        Width="250px" onpreclick="final611" />

                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button15" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#ffffff" Height="60px" idFinal="612" Text="NO PUEDE" 
                        Width="250px" onpreclick="final612" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button17" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#ffffff" Height="60px" idFinal="615" Text="SOLUCIONADO - SIN RADICACIÓN" 
                        Width="250px" onpreclick="final615" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button13" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#ffffff" Height="60px" idFinal="616" Text="SOLUCIONADO - ASUME ARREGLO" 
                        Width="250px" onpreclick="final616" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button19" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#ffffff" Height="60px" idFinal="619" Text="CASO ESPECIAL" 
                        Width="250px" onpreclick="final619" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button20" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#ffffff" Height="60px" idFinal="620" Text="ZONA COMÚN  REPORTADA POR EL CLIENTE" 
                        style="white-space:normal;" Width="250px" onpreclick="final620" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button21" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#ffffff" Height="60px" idFinal="621" Text="SOLICITUD NO APLICA COMO GARANTÍA " 
                        style="white-space:normal;" Width="250px" onpreclick="final621" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;">
                    &nbsp;</td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; color: #249E6B; font-weight: bold; font-size: 16px;" 
                    colspan="3">
                    <asp:Button ID="Button2" runat="server" Text="Atras" 
                        OnClick ="atras" BackColor="#249E6B" BorderColor="#249E6B" CausesValidation="false"
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#ffffff" 
                        Height="60px" Width="150px" />
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
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
    End Sub
    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesGG.aspx?newidsujeto=" + newidsujeto)
    End Sub
    Protected Sub final611(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "611"
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
        Response.Redirect("~/Inserttableggepc.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final612(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "612"
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
        Response.Redirect("~/Inserttableggepc.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final616(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "616"
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
        Response.Redirect("~/Inserttableggepc.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub

    Protected Sub final615(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "615"
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
        Response.Redirect("~/Inserttableggepc.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub


    Protected Sub final619(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "619"
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
        Response.Redirect("~/Inserttableggepc.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    
    Protected Sub final620(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "620"
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
        Response.Redirect("~/Inserttableggepc.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final621(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "621"
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
        Response.Redirect("~/Inserttableggepc.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    
</script>
