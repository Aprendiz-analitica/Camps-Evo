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
                    USABU REGISTRO ACADEMICO</th>
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
                        Font-Bold="True" Height="40px" idFinal="107" Text="HOMOLOGACION" 
                        Width="225px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button2" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="108" Text="SOLICITUD DE CERTIFICADOS" 
                        Width="225px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button3" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="109" Text="COSTOS DE CERTIFICADOS" 
                        Width="225px" />
                                       
                </td>                
            </tr>
            <tr>
                <td style="text-align:center" width="15px">                     
                                       
                    &nbsp;</td>                
            </tr>
            <tr>
                <td style="text-align:center">                     
                                       
                    <evo:Final_Button ID="Final_Button4" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="110" Text="ESTADO DE SOLICITUD" 
                        Width="225px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="111" Text="ASESORIA PLATAFORMA ASIS" 
                        Width="225px" />
                                                           
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

