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
                    Finales - General</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="171" Text="CLIENTE CUELGA LLAMADA SIN FINALIZAR SERVICIO" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="172" Text="FALLA DE AUDIO" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="173" Text="INFORMACION OTRAS AREAS" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button8" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="174" Text="INTERESADOS DEJAN DATOS" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button9" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="175" Text="LLAMADA DE PRUEBA" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button10" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="176" Text="LLAMADA EQUIVOCADA" Width="415px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <br />
                                       
                    <evo:Final_Button ID="Final_Button11" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="177" Text="NO TITULAR" 
                        Width="415px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button12" runat="server" BackColor="#28A745" 
                        Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Height="40px" 
                        idFinal="178" Text="TRANSFERENCIA A OTRAS AREAS" Width="415px" />
                    <br />
                </td>                
            </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

