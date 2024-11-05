<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            height: 50px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    
    <table class="formulario" style="width:1000px;">        
        <thead>
            <tr>
                <th style="text-align:center; background-color: #28a745; font-size: 20px; color: #FFFFFF; font-weight: bold; font-family: sans-serif;" 
                    align="center" class="style3">
                    Constructora Bolívar<br />
                    Finales - Outbound</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <br />
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="190" Text="LLAMADA CLIENTE PENDIENTE" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="191" Text="VALIDACION ARQUITECTO" Width="415px" />
                    <br />
                    <br />
                    <br />
                </td>                
            </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

