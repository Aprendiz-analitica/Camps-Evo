<%@ Page language="vb" %>
<%@ Import Namespace="ICR.Comun.Net" %>

<%
        
    Dim restClient As RestClient = New RestClient("http://200.1.1.150:3664/EvoRouterAPI/v1/getproperty")

    Dim qsBuilder As QueryStringBuilder = New QueryStringBuilder()
    qsBuilder.addOrUpdate("uniqueinteractionid", Gestion.Transaccion.IdTransaccion.ToString)
    qsBuilder.addOrUpdate("key", "encurso")
    Dim metodo As String = ""
    
    Try
        Dim result As String = restClient.MakeRequest(metodo, qsBuilder)
        Response.Write("{""result"":true}")
    Catch ex As Exception
        Response.Write("{""result"":false,""code"":0,""cause"":""" + ex.Message + """}")
    End Try

%>