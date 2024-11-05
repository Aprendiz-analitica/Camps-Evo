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
    Dim tip1 As String = "Llamada"
    Dim momento As String = "No aplica"
    Dim necesidad As String = "Sin temática corporativa"
    Dim actividad As String = ""
    Dim razon As String = ""
    Select Case tipificacion
        Case "112"
            actividad = "Llamada cortada"
            razon = "Llamada cortada"
        Case "106"
            actividad = "Llamada equivocada / Broma"
            razon = "Llamada equivocada / Broma"
        Case "104"
            actividad = "Llamada Muda"
            razon = "Llamada Muda"
        Case "110"
            actividad = "Llamada administrativa"
            razon = "Llamada administrativa"
    End Select
    
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "INSERT INTO __tipCbolivarbgta_sac_pqrs(idtransaccion,numdoc,name,name2,lastname,lastname2,t1,t4,t5,t6,t7) VALUES ('" + idcall + "','" + idoriginal + "','" + Nombre1 + "','" + Nombre2 + "','" + Apellido1 + "','" + Apellido2 + "','" + tip1 + "','" + momento + "','" + necesidad + "','" + razon + "','" + actividad + "')"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Gestion.FinalGestion(idfin)
%>