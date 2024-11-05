<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    
    Dim idTransaccionFin As String = Request.QueryString("Idtransaction").ToString()
    Gestion.Transaccion.KeyValueCollection.SetValue("idTransaccionFinal" + Gestion.Transaccion.IdTransaccion.ToString(), idTransaccionFin)
    Dim telefonoCliente As String = Request.QueryString("telefono").ToString()
    Dim documentoCliente As String = Request.QueryString("documento").ToString()
    Dim nombreCliente As String = Request.QueryString("nombre").ToString()
    Dim apellidoCliente As String = Request.QueryString("apellido").ToString()
    Dim idTransaccion As String = Gestion.Transaccion.IdTransaccion
    Dim idAgente As String = Gestion.Agente.IdAgente
    Dim idCliente As String = ""
    If documentoCliente = "0" Then
        documentoCliente = ""
        nombreCliente = ""
        apellidoCliente = ""
    End If
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "SELECT C.idsujeto FROM CLIENTES as C INNER JOIN tbIdentidadSujetoCampanya as ISC on C.IDSUJETO=ISC.IDSUJETO WHERE C.IDORIGINAL = '" + documentoCliente + "' AND ISC.IDCAMPANYA=" + Convert.ToString(Gestion.Campanya.IdCampanya)
    Dim result As Object = sqlComm.ExecuteScalar()

        
    If result IsNot Nothing Then
        ' El documento ya existe en la tabla cliente
        idCliente = result.ToString()
        sqlComm.CommandText = "UPDATE __Llamadas_asterisk_hangup SET estado = 'En proceso', idAgente = '" + idAgente + "', idTransactionFinal = '" + idTransaccion + "'  WHERE idTransaccion = '" + idTransaccionFin + "'"
        dr = sqlComm.ExecuteReader()
        dr.Close()
        conn.Close()
        Dim url As String = "Cliente_Identificar.aspx?idsujeto=" + idCliente
        Response.Redirect(url)
    ElseIf nombreCliente <> "" And apellidoCliente <> "" Then
        sqlComm.CommandText = "UPDATE __Llamadas_asterisk_hangup SET estado = 'En proceso', idAgente = '" + idAgente + "', idTransactionFinal = '" + idTransaccion + "'  WHERE idTransaccion = '" + idTransaccionFin + "'"
        dr = sqlComm.ExecuteReader()
        dr.Close()
        conn.Close()
        Dim url As String = "Cliente_Alta.aspx?Idtransaction=" + idTransaccionFin + "&telefono=" + telefonoCliente + "&nombre=" + nombreCliente + "&apellido=" + apellidoCliente + "&documento=" + documentoCliente
        Response.Redirect(url)
    Else
        sqlComm.CommandText = "UPDATE __Llamadas_asterisk_hangup SET estado = 'En proceso', idAgente = '" + idAgente + "', idTransactionFinal = '" + idTransaccion + "'  WHERE idTransaccion = '" + idTransaccionFin + "'"
        dr = sqlComm.ExecuteReader()
        dr.Close()
        conn.Close()
        Dim url As String = "Cliente_Alta_Sinidentificar.aspx?Idtransaction=" + idTransaccionFin + "&telefono=" + telefonoCliente + "&nombre=" + nombreCliente + "&apellido=" + apellidoCliente + "&documento=" + documentoCliente
        Response.Redirect(url)
        
    End If
        
%>
