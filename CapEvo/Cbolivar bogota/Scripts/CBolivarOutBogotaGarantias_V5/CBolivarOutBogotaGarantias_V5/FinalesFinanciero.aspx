<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
                    
    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="text-align:center; background-color: #F66D02; font-size: 20px; color: #FFFFFF; font-weight: bold; font-family: sans-serif;" 
                    align="center" class="style6">
                    USABU FINANCIERO</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="text-align:center">                     
                    <evo:Final_Button ID="Final_Button2" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="100" 
                        onpreclick="Final_Button2_PreClick" Text="HOMOLOGACION" Width="215px" />
                    <evo:Final_Button ID="Final_Button3" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="101" 
                        onpreclick="Final_Button3_PreClick" Text="IMPRIMIR RECIBO DE PAGO" 
                        Width="215px" />
                    <evo:Final_Button ID="Final_Button4" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="102" Text="APLICACIÓN DE DESCUENTOS" 
                        Width="215px" />
                    <br />
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="103" Text="COSTOS DE MATRICULA" 
                        Width="215px" />
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="104" Text="NUMEROS DE CUENTA" 
                        Width="215px" />
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="105" Text="INFORMACION DE BECAS" 
                        Width="215px" />
                    <br />
                    <evo:Final_Button ID="Final_Button8" runat="server" BackColor="#474747" 
                        Font-Bold="True" Height="40px" idFinal="106" Text="INFORMACION DE CREDITOS" 
                        Width="215px" />
                    <br />
                </td>                
            </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>
