<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            height: 25px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    
    <table class="formulario" style="width:1000px;">        
        <thead>
            <tr>
                <th style="text-align:center; background-color: #28a745; font-size: 20px; color: #FFFFFF; font-weight: bold; font-family: sans-serif;" 
                    align="center" class="style6">
                    Constructora Bolívar<br />
                    Finales - Posventa y construcción</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button1" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="156" Text="INFORMACION CERTIFICADO GAS" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button2" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="157" Text="INFORMACION SERVICIOS PUBLICOS" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="158" Text="PETICIONES DEL PROCESO DE CONSTRUCCION" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="159" Text="PETICIONES POSTERIORES A LA ENTREGA" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="160" Text="QUEJA POSTVENTA" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button8" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="161" Text="QUEJAS DEL PROCESO DE CONSTRUCCION" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button3" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="162" Text="RECLAMACION POSTVENTA" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button4" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="163" Text="VISITA PROGRAMADA ARQUITECTO" Width="415px" />
                    <br />
                    <br />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button9" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="200" Text="PENDIENTES ENTREGA AUTOGESTION" 
                        Width="415px" />
                    <br />
                </td>                
            </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

