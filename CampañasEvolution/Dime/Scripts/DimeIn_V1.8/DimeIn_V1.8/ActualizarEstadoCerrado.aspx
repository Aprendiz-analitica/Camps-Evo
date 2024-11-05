<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    Dim idTransaccionCallBack_B As String = Request.QueryString("idTransaccionCallBack_A").ToString()
    Dim tipificacion_A As String = Request.QueryString("tipificacion").ToString()
    Dim idTransaccion As String = Gestion.Transaccion.IdTransaccion
    Dim idAgente As String = Gestion.Agente.IdAgente
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "UPDATE __callback_Dime SET estado = 'Cerrado', idAgente = '" + idAgente + "', idTransactionFinal = '" + idTransaccion + "'  WHERE Idtransaction = '" + idTransaccionCallBack_B + "'"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Dim url As String = ""
    url = tipificacion_A + ".aspx"
    Response.Redirect(url)
%>
