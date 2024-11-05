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
                    USABU FACULTADES</th>
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
                        Font-Bold="True" Height="40px" idFinal="112" Text="HOMOLOGACION" 
                        Width="360px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button2" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="113" Text="FACULTAD DE EDUCACION" 
                        Width="360px" />
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button3" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="114" Text="FACULTAD DE INGENIERIA" 
                        Width="360px" onpreclick="Final_Button3_PreClick" />
                                       
                &nbsp;&nbsp;&nbsp;&nbsp;                     
                                       
                    <evo:Final_Button ID="Final_Button4" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="115" Text="FACULTAD DE CIENCIAS ECONOMICAS" 
                        Width="360px" />
                                       
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="116" Text="FACULTAD DE DERECHO Y CIENCIAS POLITICAS" 
                        Width="360px" />
                                                           
                &nbsp;&nbsp;&nbsp;&nbsp;
                                                           
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="117" Text="FACULTAD DE ARQUITECTURA ARTE Y DISEÑO" 
                        Width="360px" />
                                                           
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center" class="style3">                     
                                       
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="118" Text="FACULTAD DE CIENCIAS HUMANAS Y SOCIALES" 
                        Width="360px" />
                                                           
                </td>                
            </tr>
            <tr>
                <td>
                    &nbsp
                </td>
            </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

