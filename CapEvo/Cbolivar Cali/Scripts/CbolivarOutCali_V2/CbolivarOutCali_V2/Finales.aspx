<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
                    
    <br />  
                  
    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold;">
                    Constructora Bolívar<br />
                    Finales</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: medium; color: #f8db66; font-weight: bold;">                     
                    <evo:GoTo_Button ID="GoTo_Button1" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" BorderWidth="2px" CssClass="btn" 
                        Destination="~/Finales2.aspx" Font-Bold="True" Font-Size="Small" 
                        ForeColor="#F8DB66" Height="40px" Text="TRAMITE Y CARTERA" Width="240px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:GoTo_Button ID="GoTo_Button2" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderWidth="2px" CssClass="btn" 
                        Destination="~/Finales3.aspx" Font-Bold="True" ForeColor="#F8DB66" 
                        Height="40px"
                        Text="POSTVENTA Y CONSTRUCCION" Width="240px" />
                    <br />
                </td>                
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: medium; color: #f8db66; font-weight: bold;">                     
                    <evo:GoTo_Button ID="GoTo_Button3" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" BorderWidth="2px" CssClass="btn" 
                        Destination="~/Finales4N.aspx" Font-Bold="True" Font-Size="Small" 
                        ForeColor="#F8DB66" Height="40px" Text="COMERCIAL" Width="240px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:GoTo_Button ID="GoTo_Button4" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderWidth="2px" CssClass="btn" 
                        Destination="~/Finales6N.aspx" Font-Bold="True" ForeColor="#F8DB66" 
                        Height="40px"  Text="GENERAL" 
                        Width="240px" />
                    <br />
                </td>                
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: medium; color: #f8db66; font-weight: bold;">                     
                    <evo:GoTo_Button ID="GoTo_Button5" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderWidth="2px" CssClass="btn" 
                        Destination="~/FinalesOut.aspx" Font-Bold="True" ForeColor="#F8DB66" 
                        Height="40px"  Text="OUTBOUND" 
                        Width="240px" />
                    </td>                
            </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    
</script>
