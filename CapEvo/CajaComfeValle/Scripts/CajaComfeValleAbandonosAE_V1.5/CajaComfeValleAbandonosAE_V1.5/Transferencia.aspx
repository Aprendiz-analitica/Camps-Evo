<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ctl00_MainContent_Final_RadioButtonList2_ctl00").css("width", "100%");
        });
    </script>

                 
    <table class="formulario" style="width:100%">        
        <thead>
            <tr>
                <th style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px solid #ed7203; border-bottom: 1px hidden #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; font-weight: bold; " 
                    align="center" class="style1">
                    FINALES TRANSFERENCIA
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/Resources/images/Btn_Atras.png" 
                        onclick="BotonAtras" CausesValidation="False" Width="24px" style="float: right;"/>
                    </th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style=" border-style: none; color: #0c5e16; text-align: center; font-size: 10px; font-weight: bold; width: 100%; ">                     
                    <evo:Final_RadioButtonList ID="Final_RadioButtonList2" runat="server" 
                    Finales="123,300-399"  RepeatColumns="3" RepeatDirection="Vertical" 
                    CellSpacing="0" 
                    CssClass="calendar" TextoBoton="FINALIZAR" Width="100%"/>  
                                   
                </td>                
            </tr>


          
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub BotonAtras(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idTransaccionOriginal").ToString()
        Response.Redirect("~/ActualizarEstadoEnProceso.aspx?telefono=" + telefono + "&idtransaccionOriginal=" + idTransaccionOriginal)
    End Sub
    
</script>
