<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    Dim idTransaccionOriginal As String = Request.QueryString("idTransaccionOriginal").ToString()
    Dim tipificacion_A As String = Request.QueryString("tipificacion").ToString()
    Dim final As String = Request.QueryString("final")
    Dim idTransaccion As String = Gestion.Transaccion.IdTransaccion
    Dim idAgente As String = Gestion.Agente.IdAgente
    Dim newidsujeto As String = Request.QueryString("newidsujeto")
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "UPDATE __Llamadas_asterisk_hangup SET estado = 'Cerrado', idAgente = '" + idAgente + "', idTransactionFinal = '" + idTransaccion + "'  WHERE idTransaccion = '" + idTransaccionOriginal + "'"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Dim url As String = ""
    url = tipificacion_A + ".aspx?newidsujeto=" + newidsujeto + "&tipificacion=" + final
    Response.Redirect(url)
%>
