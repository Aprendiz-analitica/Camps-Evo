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
        .style10
        {
            height: 44px;
            width: 199px;
        }
        .style11
        {
            width: 199px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <br/>                    
    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="border: 2px hidden #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold; "colspan="3" align="center" class="style9">
                    Constructora Bolivar
                    Datos</th>
            </tr>
            <tr>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px; text-align: center;" class="style9" align="center">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                  <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; text-align: center;" 
                    class="style10" align="center">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                 <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px; text-align: center;" class="style9" align="center">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" align="center">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; " 
                    colspan="1" align="center" class="style11">
                    Primer apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                    </td>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" align="center">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" align="center">
                    N° Garantía:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Texto2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; " 
                    align="center" class="style11">
                    Proceso:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox8" runat="server" 
                        AtributoCliente="Texto3" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="border: 2px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 16px; width: 200px;" align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <th style="border: 2px hidden #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold; "colspan="3" align="center" class="style9">
                    GESTIÓN GARANTÍAS</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button3" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#ffffff" Height="30px" idFinal="600" Text="CONTACTO EFECTIVO" 
                        Width="250px" onpreclick="final600" />
                </td>
                 <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#ffffff" Height="30px" idFinal="602" Text="BUZÓN DE MENSAJES" 
                        Width="250px" onpreclick="final602" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#ffffff" Height="30px" idFinal="603" Text="EQUIVOCADO" 
                        Width="250px" onpreclick="final603" />
                </td>
            </tr>
            <tr>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="30px" idFinal="604" Text="FALLECIDO" 
                        Width="250px" onpreclick="final604" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button8" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="30px" idFinal="605" Text="FUERA DE SERVICIO" 
                        Width="250px" onpreclick="final605" />
                </td>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button9" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="30px" idFinal="606" Text="FUERA DEL PAIS" 
                        Width="250px" onpreclick="final606"/>
                </td>
            </tr>
            <tr>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button10" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="30px" idFinal="607" Text="LLAMAR LUEGO" 
                        Width="250px" onpreclick="final607" />
                </td>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button11" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="30px" idFinal="608" Text="NO CONTESTAN" 
                        Width="250px" onpreclick="final608" />
                </td>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button13" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="30px" idFinal="610" Text="FUERA DE LA CIUDAD" 
                        Width="250px" onpreclick="final610" />
                </td>
            </tr>
            <tr>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button16" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="30px" idFinal="613" Text="PTE RESPUESTA PQRS" 
                        Width="250px" onpreclick="final613" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button17" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="50px" idFinal="614" Text="ENVÍO PARA CIERRE CONTACTADO" 
                        Width="250px" style="white-space:normal;" onpreclick="final614" />
                </td>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button18" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="50px" idFinal="622" Text="ENVÍO PARA CIERRE NO CONTACTADO" 
                        Width="250px" style="white-space:normal;" onpreclick="final622" />
                </td>
            </tr>
            <tr>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button19" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                       ForeColor="#FFFFFF" Height="30px" idFinal="618" Text="SOLICITUD DUPLICADA" 
                        Width="250px" onpreclick="final618" />
                </td>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    &nbsp;</td>
               <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
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
    End Sub
    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub
    
    Protected Sub final600(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "600"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final602(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "602"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final603(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "603"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final604(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "604"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final605(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "605"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final606(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "606"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final607(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "607"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final608(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "608"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final610(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "610"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final613(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "613"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub final614(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesEC.aspx?newidsujeto=" + newidsujeto)
    End Sub

    Protected Sub final622(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesECNC.aspx?newidsujeto=" + newidsujeto)
    End Sub
    
    Protected Sub final618(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "618"
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
        Response.Redirect("~/Inserttablegg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub
</script>
