<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript">
       </script>





    <style type="text/css">
        .tdSample
        {
            height: 30px;        
        }
        .style3
        {
            height: 44px;
        }
        .style6
        {
            height: 60px;
            width: 150px;
        }
        .style7
        {
            height: 60px;
            width: 181px;
        }
        .style8
        {
            height: 50px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
     
    <table class="formulario" style="width:70%;">        
        <thead>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    colspan="3" align="center" class="style8">
                    Actualizacion de datos</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style3">
                    Numero de Documento:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style3">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style3">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style6">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style7">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    colspan="3">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; text-align:center; height:80px; background-color: #28a745;" 
                    colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="ACTUALIZAR CLIENTE" 
                        OnClick ="actualizarcliente" ForeColor="#F8DB66" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" style="white-space:normal;"  />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; text-align:center; height:80px; background-color: #28a745;" 
                    colspan="3">
                    <asp:Button ID="Button2" runat="server" Text="NO BRINDA DATOS / NO ES TITULAR" 
                        OnClick ="FinalNobrindadatos" ForeColor="#F8DB66" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" style="white-space:normal;" 
                        CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="EQUIVOCADO" 
                        OnClick ="Final106" ForeColor="#F8DB66" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" style="white-space:normal;" 
                        CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="LLAMADA ADMINISTRATIVA" 
                        OnClick ="Final110" ForeColor="#F8DB66" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" style="white-space:normal;" 
                        CausesValidation="False" />
                </td>
            </tr>
        </tbody>
    </table>

    <br />


    
    <br />  

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
        
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
        check = CheckBox1.Checked
        telori = DatosCliente_TextBox6.TextValue
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        idcall = Gestion.Transaccion.IdTransaccion
        idsujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "", idoriginal, Nombre1, Apellido1, Apellido2, , , , , , , telori, , , , , , , , , , , , , , Nombre2, , , , idcall, check) ' num1:=Gestion.Transaccion.IdTransaccion.ToString
                            Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub

    Protected Sub FinalNobrindadatos(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "108"
        Dim idoriginal As String = "NO BRINDA DATOS/NO ES TITULAR"
        Dim Nombre1 As String = "NO BRINDA DATOS/NO ES TITULAR"
        Dim Apellido1 As String = "NO BRINDA DATOS/NO ES TITULAR"
        Dim Nombre2 As String = "NO BRINDA DATOS/NO ES TITULAR"
        Dim Apellido2 As String = "NO BRINDA DATOS/NO ES TITULAR"
        Response.Redirect("~/Inserttablenotitular.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
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
</script>
