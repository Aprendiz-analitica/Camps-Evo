<%@ Page language="VB" %>

<%
    If Request("idsujeto") <> "0" Then
        Gestion.CargaCliente(Convert.ToInt64(Request("idsujeto")))
        EvoAPI.LoadCustomer(Convert.ToInt64(Request("idsujeto")))
    Else
        Gestion.CargaCliente(0)
        EvoAPI.LoadCustomer(0)
    End If
    
%>

<script src="Resources/js/agentapi.js" type="text/javascript"></script>
<script type="text/javascript">
    agentapi.AgentAppType = "<%=AgentApp.AgentAppType%>";
    agentapi.WebAgentAuthToken = "<%=AgentApp.WebAgentAuthToken%>";
    agentapi.WebAgentServiceUrl = "<%=AgentApp.WebAgentServiceUrl%>";
    agentapi.SetCustomer(<%= Gestion.Transaccion.IdTransaccion %> , <%= Gestion.Cliente.IdSujeto %>)
        .done(function () { window.location.href='FinalesSinIdentificar.aspx'; });

</script>