<%@ Page language="VB" %>

 <%
     Dim IdSujeto As Long = -1
     'Parámetros pasados por GET en la url
     Dim IdOriginal As String = ""
     Gestion.Transaccion.KeyValueCollection.GetValue("documento", IdOriginal)
     Dim Nombre1 As String = ""
     Gestion.Transaccion.KeyValueCollection.GetValue("nombre", Nombre1)
     Dim Apellido1 As String = ""
     Gestion.Transaccion.KeyValueCollection.GetValue("nombre", Apellido1)
     Dim Telefono As String = ""
     Gestion.Transaccion.KeyValueCollection.GetValue("numtel", Telefono)
     Dim habeasData As String = ""
     Gestion.Transaccion.KeyValueCollection.GetValue("habeas", habeasData)
     Try
         IdSujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "1", IdOriginal, Nombre1, Apellido1, tipId:=0, localizableDesde:=0, localizableHasta:=2359, telefono:=Telefono, texto1:=habeasData)
         If IdSujeto <> -1 Then
             Gestion.CargaCliente(IdSujeto)
             EvoAPI.LoadCustomer(IdSujeto)
             Gestion.Cliente.Save()
         End If

     Catch e As Exception
         Traces.Error(e)
         Message.ShowError(e)
     End Try

     If IdSujeto = -1 Then
         Message.ShowError("Se ha producido un error al dar de alta el Sujeto.")
     End If
%>

<script src="Resources/js/agentapi.js" type="text/javascript"></script>
<script type="text/javascript">
    agentapi.AgentAppType = "<%=AgentApp.AgentAppType%>";
    agentapi.WebAgentAuthToken = "<%=AgentApp.WebAgentAuthToken%>";
    agentapi.WebAgentServiceUrl = "<%=AgentApp.WebAgentServiceUrl%>";
    agentapi.SetCustomer(<%= Gestion.Transaccion.IdTransaccion %> , <%= Gestion.Cliente.IdSujeto %>);
    window.location.href='CrearCliente.aspx';

</script>