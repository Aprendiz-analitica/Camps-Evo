<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    
    Dim idTransaccionOriginal As String = Request.QueryString("idTransaccionOriginal").ToString()
    Dim estado As String = Request.QueryString("estado").ToString()
    Dim telefono As String = Request.QueryString("telefono").ToString()
    
    Dim idTransaccionGestion As String = Gestion.Transaccion.IdTransaccion
    Dim idAgente As String = Gestion.Agente.IdAgente
    If estado <> "En Proceso" Then
        conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
        conn.Open()
        sqlComm.Connection = conn
        sqlComm.CommandType = Data.CommandType.Text
        sqlComm.CommandText = "INSERT INTO __Gestion_Abandonos(idTransactionOriginal,estado,idTransactionGestion,idAgente) VALUES(" + idTransaccionOriginal + ",'En Proceso'," + idTransaccionGestion + "," + idAgente + ")"
        dr = sqlComm.ExecuteReader()
        dr.Close()
        conn.Close()
    End If
    Response.Redirect("Finales.aspx?telefono=" + telefono + "&idtransaccionOriginal=" + idTransaccionOriginal)
%>