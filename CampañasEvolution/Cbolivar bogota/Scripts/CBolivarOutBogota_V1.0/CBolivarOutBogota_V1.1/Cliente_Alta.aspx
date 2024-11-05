<%@ Page language="VB" %>

 <%
     Dim IdSujeto As Long = -1
     'Parámetros pasados por GET en la url
     Dim IdOriginal As String = Request("NumDoc")
     Dim Nombre As String = "Sin_Nombre"
     Dim Apellido1 As String = "Sin_Apellido"
     Dim Telefono As String = Request("NumTel")
     
     Try
         'Establecemos el teléfono del nuevo IdSujeto
         IdSujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "1", IdOriginal, Nombre, Apellido1, tipId:=0, localizableDesde:=0, localizableHasta:=2359, telefono:=Telefono)

         If IdSujeto <> -1 Then
             Gestion.CargaCliente(IdSujeto)
             EvoAPI.LoadCustomer(IdSujeto)             
             Gestion.Cliente.Nombre = ""
             Gestion.Cliente.Apellido1 = ""
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