<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    Dim Extension As String = ""
        
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
        
    'Recuperamos el origen que dio lugar a la transacción
    Traces.Debug("Transaccion: " + Gestion.Transaccion.IdTransaccion.ToString + " ConferenciaAMI.aspx --> INI select extensión agente")
    sqlComm.CommandText = "Select COUNT(idTransaccion) as Qvoz from TRANSACCION where idCampanya = 100000336 and  idfinal is NULL and idAgente = 0"
    dr = sqlComm.ExecuteReader()
    If dr.HasRows() Then
        Extension = IIf(IsDBNull(dr("Qvoz")), "", dr("Qvoz"))
    End If

    dr.Close()
    conn.Close()
    Traces.Debug("Transaccion: " + Gestion.Transaccion.IdTransaccion.ToString + " Extension: " + Extension + " ConferenciaAMI.aspx --> FIN select extensión agente")
    
    If Not String.IsNullOrWhiteSpace(Extension) Then
        Response.Write("{""result"":true,""estado"":""" + Extension + """}")
    
    Else
        Response.Write("{""result"":true,""estado"":""Desconectado""}")
    End If

%>