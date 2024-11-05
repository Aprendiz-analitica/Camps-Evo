<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    
    Dim idTransaccionCallBack As String = Request.QueryString("Idtransaction").ToString()
    Dim telefonoCallBack As String = Request.QueryString("telefono").ToString()
    Dim fechaCallBack As String = Request.QueryString("fecha").ToString()
    Dim idTransaccion As String = Gestion.Transaccion.IdTransaccion
    Dim idAgente As String = Gestion.Agente.IdAgente
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    
    sqlComm.CommandText = "UPDATE __callback_Dime SET estado = 'En proceso', idAgente = '" + idAgente + "', idTransactionFinal = '" + idTransaccion + "'  WHERE Idtransaction = '" + idTransaccionCallBack + "'"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    
    
    
    Dim url As String = "Finales.aspx?Idtransaction=" + idTransaccionCallBack + "&telefono=" + telefonoCallBack + "&fecha=" + fechaCallBack
    Response.Redirect(url)
%>
