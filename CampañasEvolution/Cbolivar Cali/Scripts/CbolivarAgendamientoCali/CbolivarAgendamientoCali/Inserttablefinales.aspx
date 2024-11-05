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
    Dim tip1 As String = ""
    Dim momento As String = ""
    Dim necesidad As String = ""
    Dim actividad As String = ""
    Dim razon As String = ""
    Select Case tipificacion
        Case "113"
            tip1 = "Llamada"
            momento = "Transferencia menu Cali"
            necesidad = "Transferencia menu Cali"
            actividad = "Transferencia menu Cali"
            razon = "Transferencia menu Cali"
        Case "111"
            tip1 = "Llamada"
            momento = "No titular"
            necesidad = "No titular"
            actividad = "No titular"
            razon = "No titular"
        Case "112"
            tip1 = "Llamada"
            momento = "No aplica"
            necesidad = "Sin temática corporativa"
            actividad = "Llamada cortada"
            razon = "Llamada cortada"
        Case "106"
            tip1 = "Llamada"
            momento = "No aplica"
            necesidad = "Sin temática corporativa"
            actividad = "Llamada equivocada / Broma"
            razon = "Llamada equivocada / Broma"
        Case "104"
            tip1 = "Llamada"
            momento = "No aplica"
            necesidad = "Sin temática corporativa"
            actividad = "Llamada Muda"
            razon = "Llamada Muda"
        Case "110"
            tip1 = "Llamada"
            momento = "No aplica"
            necesidad = "Sin temática corporativa"
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