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
                <th style="border: 2px hidden #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold; " 
                    align="center" class="style9" colspan="3">
                    Finales Chat</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;  font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button1" runat="server" ForeColor="#ffffff" 
                        Text="POST VENTA - GARANTIA" onclick="postventa_garantia" 
                        BackColor="#249E6B" BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="16px" Height="30px" Width="250px" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;  font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button2" runat="server" Text="COMERCIAL" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#ffffff" Height="30px" Width="250px" onclick="comercial" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;  font-weight: bold; font-size: 16px;">
&nbsp;<asp:Button ID="Button3" runat="server" Text="SAC - PQRS" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#ffffff" Height="30px" Width="250px" onclick="sac_pqrs" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;  font-weight: bold; font-size: 16px;">
                    <asp:Button ID="Button4" runat="server" Text="FUNDACION BOLIVAR" 
                        BackColor="#249E6B" BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" 
                        Font-Size="16px" ForeColor="#ffffff" Height="30px" Width="250px" 
                        onclick="fundacion" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;  font-weight: bold; font-size: 16px;" 
                    colspan="2">
                    <asp:Button ID="Button5" runat="server" Text="ATRAS" 
                        OnClick ="atras" BackColor="#249E6B" BorderColor="#249E6B" CausesValidation="false"
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#ffffff" 
                        Height="30px" Width="150px" />
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
    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub

</script>
