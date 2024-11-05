<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    
    Dim telefono As String = Request.QueryString("telefono").ToString()
    Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
    
    Dim url As String = Request.QueryString("url").ToString()
    
    Dim idTransaccion As String = Gestion.Transaccion.IdTransaccion
    Dim idAgente As String = Gestion.Agente.IdAgente
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "UPDATE __Gestion_Abandonos SET estado = 'Cerrado', idAgente = '" + idAgente + "', idTransactionGestion = '" + idTransaccion + "'  WHERE idTransactionOriginal = '" + idTransaccionOriginal + "'"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Response.Redirect(url+"?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono)

        
    
        
%>
