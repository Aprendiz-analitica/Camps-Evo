<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    Dim tipificacion As String = Request.QueryString("tipificacion").ToString()
    Dim idoriginal As String = Request.QueryString("idoriginal").ToString()
    Dim Nombre1 As String = Request.QueryString("Nombre1").ToString()
    Dim Apellido1 As String = Request.QueryString("Apellido1").ToString()
    Dim Nombre2 As String = Request.QueryString("Nombre2").ToString()
    Dim Apellido2 As String = Request.QueryString("Apellido2").ToString()
    Dim idcall As String = Gestion.Transaccion.IdTransaccion
    Dim idfin As Integer = Int32.Parse(tipificacion)
    Dim final As String = ""
    Dim ngarantia As String = Gestion.Cliente.Texto2
    Dim proceso As String = Gestion.Cliente.Texto3
    Dim origen As String = "GESTIÓN GARANTIAS"
    Dim tip As String = "ENVÍO PARA CIERRE CONTACTADO"
    Select Case tipificacion
        Case "611"
            final = "NO QUIERE"
        Case "612"
            final = "NO PUEDE"
        Case "615"
            final = "SOLUCIONADO - SIN RADICACIÓN"
        Case "616"
            final = "SOLUCIONADO - ASUME ARREGLO"
        Case "617"
            final = "5 LLAMADOS"
        Case "618"
            final = "SOLICITUD DUPLICADA"
        Case "619"
            final = "CASO ESPECIAL"
        Case "620"
            final = "ZONA COMÚN  REPORTADA POR EL CLIENTE"
        Case "621"
            final = "SOLICITUD NO APLICA COMO GARANTÍA"
    End Select
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "INSERT INTO __tipCbolivarbgta_sac_pqrs(idtransaccion,numdoc,name,name2,lastname,lastname2,t1,t2,t3,garantia,proceso) VALUES ('" + idcall + "','" + idoriginal + "','" + Nombre1 + "','" + Nombre2 + "','" + Apellido1 + "','" + Apellido2 + "','" + origen + "','" + tip + "','" + final + "','" + ngarantia + "','" + proceso + "')"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Gestion.FinalGestion(idfin)
%>