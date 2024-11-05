<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <tr>
    <td colspan = "3">
    <br />    
    <table class="formulario" style="width:75%;">        
        <thead>
            <tr>
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 20px; color: #FFFFFF; font-weight: bold;" colspan="3" align="center">
                    No brinda datos</th>
            </tr>

            <tr>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button1" runat="server" Text="Equivocado" onclick="equivocado" 
                        ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" BorderWidth="1px" 
                        style="white-space:normal;" />
                </td>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button2" runat="server" Text="Llamada cortada" 
                        onclick="llamadacortada" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" BorderWidth="1px" 
                        style="white-space:normal;"  />
                </td>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;" 
                    class="style10">
                    <asp:Button ID="Button4" runat="server" Text="Llamada muda" 
                        ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" BorderWidth="1px" style="white-space:normal;" 
                        onclick="llamadamuda" />
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
   

    Protected Sub equivocado(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "106"
        Dim idoriginal As String = "NO BRINDA DATOS"
        Dim Nombre1 As String = "NO BRINDA DATOS"
        Dim Apellido1 As String = "NO BRINDA DATOS"
        Dim Nombre2 As String = "NO BRINDA DATOS"
        Dim Apellido2 As String = "NO BRINDA DATOS"
        Response.Redirect("~/Inserttablenodatos.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub

    Protected Sub llamadacortada(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "112"
        Dim idoriginal As String = "NO BRINDA DATOS"
        Dim Nombre1 As String = "NO BRINDA DATOS"
        Dim Apellido1 As String = "NO BRINDA DATOS"
        Dim Nombre2 As String = "NO BRINDA DATOS"
        Dim Apellido2 As String = "NO BRINDA DATOS"
        Response.Redirect("~/Inserttablenodatos.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub

    Protected Sub llamadamuda(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "104"
        Dim idoriginal As String = "NO BRINDA DATOS"
        Dim Nombre1 As String = "NO BRINDA DATOS"
        Dim Apellido1 As String = "NO BRINDA DATOS"
        Dim Nombre2 As String = "NO BRINDA DATOS"
        Dim Apellido2 As String = "NO BRINDA DATOS"
        Response.Redirect("~/Inserttablenodatos.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub
</script>
