<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">  
    
    <style type="text/css">
        .style9
        {
            height: 74px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

                    
    
    <br />  
                  
    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="border: 2px hidden  #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold; "colspan="3" align="center" class="style9">
                    Finales</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center; font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button1" runat="server" ForeColor="#ffffff" 
                        Text="GESTIÓN GARANTÍAS" onclick="gestiongarantia" 
                        BackColor="#249E6B" BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="16px" Height="30px" Width="250px" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;  font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button2" runat="server" Text="GESTIÓN ENTREGAS" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#ffffff" Height="30px" Width="250px" onclick="gestionentrega" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;  font-weight: bold; font-size: 16px;" 
                    colspan="2">
                    <asp:Button ID="Button3" runat="server" ForeColor="#ffffff" 
                        Text="CHAT" onclick="finalchat" 
                        BackColor="#249E6B" BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="16px" Height="30px" Width="250px" />
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

    Protected Sub gestiongarantia(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesGG.aspx?newidsujeto=" + newidsujeto)
    End Sub
    Protected Sub gestionentrega(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesGE.aspx?newidsujeto=" + newidsujeto)
    End Sub

    Protected Sub finalchat(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesChat.aspx?newidsujeto=" + newidsujeto)
    End Sub
</script>
