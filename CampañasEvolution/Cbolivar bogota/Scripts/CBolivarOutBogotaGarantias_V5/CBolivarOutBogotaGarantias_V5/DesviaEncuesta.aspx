<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/agentapi.js"></script>
    <script type="text/javascript">
        agentapi.AgentAppType = "<%=AgentApp.AgentAppType%>";
        agentapi.WebAgentAuthToken = "<%=AgentApp.WebAgentAuthToken%>";
        agentapi.WebAgentServiceUrl = "<%=AgentApp.WebAgentServiceUrl%>";
        agentapi.FastTransferActiveCall('5018');
        window.location.href('Finales.aspx')
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h3 class="title" align="center">Transicion llamada - encuesta</h3>
    <br />
                    
    <br />  
                  
    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    

</script>
