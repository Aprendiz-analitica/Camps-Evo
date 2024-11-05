<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    Dim idoriginal As String = Request.QueryString("idoriginal").ToString()
    Dim name1 As String = Request.QueryString("nombre1").ToString()
    Dim name2 As String = Request.QueryString("nombre2").ToString()
    Dim lastname1 As String = Request.QueryString("apellido1").ToString()
    Dim lastname2 As String = Request.QueryString("apellido2").ToString()
    Dim sProyecto As String = Request.QueryString("Proyecto").ToString()
    Dim sAgrupacion As String = Request.QueryString("Agrupacion").ToString()
    Dim sCambioPP As String = Request.QueryString("CambioPP").ToString()
    Dim sTipificacion As String = Request.QueryString("Tipificacion").ToString()
    Dim sTipificacionMacro As String = Request.QueryString("TipificacionMacro").ToString()
    Dim sTipificacionMicro As String = Request.QueryString("TipificacionMicro").ToString()
    Dim sObservaciones As String = Request.QueryString("Observaciones").ToString()
    Dim idcall As String = Gestion.Transaccion.IdTransaccion
    Dim idfinal As Integer = 0
    Select sTipificacion
        Case "Aumento de credito"
            idfinal = 100
        Case "Recursos Propios"
            idfinal = 101
        Case "Cliente solicita tiempo para decisión"
            idfinal = 102
        Case "Cesión, traslado, desistimiento"
            idfinal = 103
        Case "No acepta incremento"
            idfinal = 104
        Case "Mayor plazo para pago"
            idfinal = 105
        Case "Sin contacto"
            idfinal = 106
        Case "Llamar Luego"
            idfinal = 107
        Case "Sin decisión"
            idfinal = 108
    End Select
    
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "INSERT INTO __tipCbolivarbgta_sac_pqrs(idtransaccion,numdoc,name,name2,lastname,lastname2,t4,t5,t6,t7,Proyecto,Agrupacion,Descripcion) VALUES ('" + idcall + "','" + idoriginal + "','" + name1 + "','" + name2 + "','"  + lastname1 + "','" + lastname2 + "','" + sCambioPP + "','" + sTipificacion + "','" + sTipificacionMacro + "','" + sTipificacionMicro + "','" + sProyecto + "','" + sAgrupacion + "','" + sObservaciones + "')"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Gestion.FinalGestion(idfinal)
%>