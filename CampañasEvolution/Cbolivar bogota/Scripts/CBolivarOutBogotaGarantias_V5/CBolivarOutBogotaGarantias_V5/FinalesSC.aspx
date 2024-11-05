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
                <th style="border-style: hidden hidden solid hidden; border-width: 2px; border-color: #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    align="center" class="style9" colspan="2">
                    &nbsp;</th>
            </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    align="center" class="style9" colspan="2">
                    Sin contacto</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button4" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#F8DB66" Height="30px" idFinal="510" Text="Localizado despues 5 intentos" 
                        Width="250px" />
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#F8DB66" Height="30px" idFinal="511" Text="Fuera De Servicio" 
                        Width="250px" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#F8DB66" Height="30px" idFinal="512" Text="Mensaje De Voz" 
                        Width="250px" />
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        ForeColor="#F8DB66" Height="30px" idFinal="513" Text="Número Equivocado" 
                        Width="250px" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="2">
                    <asp:Button ID="Button2" runat="server" Text="Atras" 
                        OnClick ="atras" BackColor="#28A745" BorderColor="#F8DB66" CausesValidation="false"
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#F8DB66" 
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

    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub
</script>
