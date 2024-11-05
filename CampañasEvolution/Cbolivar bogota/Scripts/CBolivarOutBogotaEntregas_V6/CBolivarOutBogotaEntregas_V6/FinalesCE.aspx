<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">  
    
    <style type="text/css">
        
        .style9
        {
            height: 74px;
        }
        .style11
        {
            height: 52px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="border: 2px hidden #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold; "colspan="3" align="center" class="style9">
                    Constructora Bolivar
                    Datos</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Primer apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                    </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Proceso:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Texto2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Proyecto:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox8" runat="server" 
                        AtributoCliente="Texto3" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                    </td>
               <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Agrupación:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox9" runat="server" 
                        AtributoCliente="Empresa" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Fecha Proyectada:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox10" runat="server" 
                        AtributoCliente="Dni" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Entrega de Llaves:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox11" runat="server" 
                        AtributoCliente="Direccion" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="black" 
                        ValueStyle-Width="94%" Enabled="False" />
                    </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <th style="border: 2px solid #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #FFFFFF; font-weight: bold; " 
                    align="center" class="style9" colspan="3">
                    GESTIÓN ENTREGAS</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button10" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#FFFFFF" Height="30px" idFinal="706" Text="FUERA DEL PAIS" 
                        Width="250px" onpreclick="Final_Button10_PreClick" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button13" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#FFFFFF" Height="30px" idFinal="710" Text="FUERA DE LA CIUDAD" 
                        Width="250px" onpreclick="Final_Button13_PreClick" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button15" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#FFFFFF" Height="30px" idFinal="712" Text="NO PUEDE" 
                        Width="250px" onpreclick="Final_Button15_PreClick" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;" 
                    class="style11">
                    <evo:Final_Button ID="Final_Button16" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#FFFFFF" Height="30px" idFinal="713" Text="PTE RESPUESTA PQRS" 
                        Width="250px" onpreclick="Final_Button16_PreClick" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;" 
                    class="style11">
                    <evo:Final_Button ID="Final_Button14" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#FFFFFF" Height="30px" idFinal="711" Text="NO QUIERE" 
                        Width="250px" onpreclick="Final_Button14_PreClick" />
                </td>
               <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;" 
                    class="style11">
                    </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;" colspan = "3">
                    <asp:Button ID="Button2" runat="server" Text="Atras" 
                        OnClick ="atras" BackColor="#249E6B" BorderColor="#249E6B" CausesValidation="false"
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#ffffff" 
                        Height="30px" Width="250px" />
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
        Response.Redirect("~/FinalesGE.aspx?newidsujeto=" + newidsujeto)
    End Sub


    Protected Sub Final_Button10_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "706"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim proceso As String = ""
        Dim proyecto As String = ""
        Dim agrupacion As String = ""
        Dim fecha_proyectada As String = ""
        Dim entrega_llaves As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        proceso = DatosCliente_TextBox7.TextValue
        proyecto = DatosCliente_TextBox8.TextValue
        agrupacion = DatosCliente_TextBox9.TextValue
        fecha_proyectada = DatosCliente_TextBox10.TextValue
        entrega_llaves = DatosCliente_TextBox11.TextValue
        Response.Redirect("~/Inserttablege.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion + "&proceso=" + proceso + "&proyecto=" + proyecto + "&agrupacion=" + agrupacion + "&fechaproyectada=" + fecha_proyectada + "&entregallaves=" + entrega_llaves)
  
    End Sub

    Protected Sub Final_Button13_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "710"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim proceso As String = ""
        Dim proyecto As String = ""
        Dim agrupacion As String = ""
        Dim fecha_proyectada As String = ""
        Dim entrega_llaves As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        proceso = DatosCliente_TextBox7.TextValue
        proyecto = DatosCliente_TextBox8.TextValue
        agrupacion = DatosCliente_TextBox9.TextValue
        fecha_proyectada = DatosCliente_TextBox10.TextValue
        entrega_llaves = DatosCliente_TextBox11.TextValue
        Response.Redirect("~/Inserttablege.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion + "&proceso=" + proceso + "&proyecto=" + proyecto + "&agrupacion=" + agrupacion + "&fechaproyectada=" + fecha_proyectada + "&entregallaves=" + entrega_llaves)
  
    End Sub

    Protected Sub Final_Button14_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "711"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim proceso As String = ""
        Dim proyecto As String = ""
        Dim agrupacion As String = ""
        Dim fecha_proyectada As String = ""
        Dim entrega_llaves As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        proceso = DatosCliente_TextBox7.TextValue
        proyecto = DatosCliente_TextBox8.TextValue
        agrupacion = DatosCliente_TextBox9.TextValue
        fecha_proyectada = DatosCliente_TextBox10.TextValue
        entrega_llaves = DatosCliente_TextBox11.TextValue
        Response.Redirect("~/Inserttablege.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion + "&proceso=" + proceso + "&proyecto=" + proyecto + "&agrupacion=" + agrupacion + "&fechaproyectada=" + fecha_proyectada + "&entregallaves=" + entrega_llaves)
  
    End Sub

    Protected Sub Final_Button15_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "712"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim proceso As String = ""
        Dim proyecto As String = ""
        Dim agrupacion As String = ""
        Dim fecha_proyectada As String = ""
        Dim entrega_llaves As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        proceso = DatosCliente_TextBox7.TextValue
        proyecto = DatosCliente_TextBox8.TextValue
        agrupacion = DatosCliente_TextBox9.TextValue
        fecha_proyectada = DatosCliente_TextBox10.TextValue
        entrega_llaves = DatosCliente_TextBox11.TextValue
        Response.Redirect("~/Inserttablege.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion + "&proceso=" + proceso + "&proyecto=" + proyecto + "&agrupacion=" + agrupacion + "&fechaproyectada=" + fecha_proyectada + "&entregallaves=" + entrega_llaves)
  
    End Sub

    Protected Sub Final_Button16_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "713"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim proceso As String = ""
        Dim proyecto As String = ""
        Dim agrupacion As String = ""
        Dim fecha_proyectada As String = ""
        Dim entrega_llaves As String = ""
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        proceso = DatosCliente_TextBox7.TextValue
        proyecto = DatosCliente_TextBox8.TextValue
        agrupacion = DatosCliente_TextBox9.TextValue
        fecha_proyectada = DatosCliente_TextBox10.TextValue
        entrega_llaves = DatosCliente_TextBox11.TextValue
        Response.Redirect("~/Inserttablege.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion + "&proceso=" + proceso + "&proyecto=" + proyecto + "&agrupacion=" + agrupacion + "&fechaproyectada=" + fecha_proyectada + "&entregallaves=" + entrega_llaves)
  
    End Sub
</script>
