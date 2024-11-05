<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="formulario" style="width:100%;">
                
        <thead>
            <tr>
                <th style="padding: 5px 0px 5px 0px; border: 1px solid #9dc541; text-align:center; background-color: #9dc541; font-size: 16px; color: #FFFFFF; font-weight: bold; width: 100%; height: 30px;">
                    Finales Caja</th>
                <th style="padding: 5px 0px 5px 0px; border: 1px solid #9dc541; text-align:center; background-color: #9dc541; font-size: 16px; color: #FFFFFF; font-weight: bold; width: 100%; height: 30px;">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        CausesValidation="False" ImageUrl="~/Resources/images/Btn_Atras.png" 
                        onclick="ImageButton1_Click" Width="24px" />
                </th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border-style: none; text-align:center; font-size: 16px; color: #0c5e16; font-weight: bold; width: 100%; padding-bottom: 5px;" 
                    colspan="2">                     
                    <evo:CallDisposition_RadioButtonList ID="CallDisposition_RadioButtonList1" 
                        runat="server" CallDispositionCodes="400-499" CellSpacing="0" 
                         onpreclick="Final_RadioButtonList1_PreClick" 
                        RepeatColumns="3" Text="Finalizar transacción" Height="100%" 
                        Width="100%" Font-Bold="True" />                   
                </td>                
            </tr>
        </tbody>
    </table>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
    
    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("~/Finales.aspx")
    End Sub
</script>
