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
    
    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="text-align:center; background-color: #F66D02; font-size: 20px; color: #FFFFFF; font-weight: bold; font-family: sans-serif;" 
                    align="center" class="style6">
                    USABU OTROS</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="text-align:center">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button1" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="127" Text="HOMOLOGACION" 
                        Width="250px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button2" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="128" Text="AREA DE MERCADEO PREGRADO" 
                        Width="250px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button3" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="129" Text="AREA DE MERCADEO POSGRADO" 
                        Width="250px" onpreclick="Final_Button3_PreClick" />
                                       
                &nbsp;&nbsp;&nbsp;&nbsp;                     
                                       
                    <evo:Final_Button ID="Final_Button4" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="130" Text="EDUCACION CONTINUA" 
                        Width="250px" />
                                       
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="131" Text="SOPORTE TECNICO" 
                        Width="250px" />
                                                           
                &nbsp;&nbsp;&nbsp;&nbsp;
                                                           
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="132" Text="TIENDA UNIVERSITARIA" 
                        Width="250px" />
                                                           
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="133" Text="AREA JURIDICA" 
                        Width="250px" />
                                                           
                &nbsp;&nbsp;&nbsp;&nbsp;                     
                                       
                    <evo:Final_Button ID="Final_Button8" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="134" Text="LLAMADA MUDA" 
                        Width="250px" />
                                                           
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button9" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="135" Text="LLAMADA ABANDONADA" 
                        Width="250px" />
                                                           
                &nbsp;&nbsp;&nbsp;&nbsp;                     
                                       
                    <evo:Final_Button ID="Final_Button10" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="136" Text="LLAMADA DE PRUEBA" 
                        Width="250px" />
                                                           
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;&nbsp;&nbsp;&nbsp;                     
                                       
                    <evo:Final_Button ID="Final_Button12" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="137" Text="LLAMADA EQUIVOCADA" 
                        Width="250px" />
                                                           
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;</td>                
            </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

