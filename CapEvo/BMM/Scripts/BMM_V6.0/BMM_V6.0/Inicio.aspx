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


        function Transf_Encuesta() {
            agentapi.FastTransferActiveCall('5011')
            .done(function () {

            })
            .fail(function (code, cause) {
                alert('No se pudo realizar la Transferencia');
            });
        }
        function Transf_sms() {
            agentapi.FastTransferActiveCall('5045')
            .done(function () {

            })
            .fail(function (code, cause) {
                alert('No se pudo realizar la Transferencia');
            });
        }
        function Transf_IVR() {
            agentapi.FastTransferActiveCall('6068')
            .done(function () {

            })
            .fail(function (code, cause) {
                alert('No se pudo realizar la Transferencia');
            });


        }
        function Transf_Referidos() {
            agentapi.FastTransferActiveCall('6032')
            .done(function () {

            })
            .fail(function (code, cause) {
                alert('No se pudo realizar la Transferencia');
            });

        }
        $(document).ready(function () {
            $("#ctl00_MainContent_Final_RadioButtonList2_ctl00").css("width", "100%");
        });
    </script>

                 
    <table class="table table-responsive">
<tr>
            <td style="padding: 5px; text-align: center">

                    <input id="Button12" type="button" value="Encuesta" 
                        onclick="Transf_Encuesta()"     
                        style="font-size: 12px; background-color: #249E6B; width: 200px; height: 40px; background-image: none; font-weight: bold; margin-right: 0; color: #FFFFFF; border: 1px solid transparent; border-radius:4px" onclick="return Button12_onclick()" /></td>
            <td style="padding: 5px; text-align: center">

                    <input id="Button13" type="button" value="Contingencia SMS" 
                        onclick="Transf_sms()" 
                        
                        style="font-size: 12px; background-color: #249E6B; width: 200px; height: 40px; background-image: none; font-weight: bold; margin-right: 0; color: #FFFFFF; border: 1px solid transparent; border-radius:4px"/></td>
            <td style="padding: 5px; text-align: center">

                    <input id="Button14" type="button" value="Menu principal" 
                        onclick="Transf_IVR()" style="font-size: 12px; background-color: #249E6B; width: 200px; height: 40px; background-image: none; font-weight: bold; margin-right: 0; color: #FFFFFF; border: 1px solid transparent; border-radius:4px" /></td>
        </tr>
        <tr>
            <td style="padding: 5px; text-align: center">

                    <input id="Button15" type="button" value="Referidos" 
                        onclick="Transf_Referidos()" 
                        style="font-size: 12px; background-color: #249E6B; width: 200px; height: 40px; background-image: none; font-weight: bold; margin-right: 0; color: #FFFFFF; border: 1px solid transparent; border-radius:4px" onclick="return Button15_onclick()" /></td>
            <td style="padding: 5px; text-align: center">

                    &nbsp;</td>
            <td style="padding: 5px; text-align: center">

                    &nbsp;</td>
        </tr>
</table>


</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

             
    End Sub

</script>
