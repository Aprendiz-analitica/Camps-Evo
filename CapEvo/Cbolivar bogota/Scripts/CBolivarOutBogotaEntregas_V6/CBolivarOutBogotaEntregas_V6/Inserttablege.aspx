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
    Dim proceso As String = Request.QueryString("proceso").ToString()
    Dim proyecto As String = Request.QueryString("proyecto").ToString()
    Dim agrupacion As String = Request.QueryString("agrupacion").ToString()
    Dim fecha_proyectada As String = Request.QueryString("fechaproyectada").ToString()
    Dim entrega_llaves As String = Request.QueryString("entregallaves").ToString()
    Dim idcall As String = Gestion.Transaccion.IdTransaccion
    Dim idfin As Integer = Int32.Parse(tipificacion)
    Dim final As String = ""
    Dim origen As String = "GESTIÓN ENTREGAS"
    Select Case tipificacion
        Case "700"
            final = "CONTACTO EFECTIVO"
        Case "702"
            final = "BUZÓN DE MENSAJES"
        Case "703"
            final = "EQUIVOCADO"
        Case "704"
            final = "FALLECIDO"
        Case "705"
            final = "FUERA DE SERVICIO"
        Case "706"
            final = "FUERA DEL PAIS"
        Case "707"
            final = "LLAMAR LUEGO"
        Case "708"
            final = "NO CONTESTAN"
        Case "710"
            final = "FUERA DE LA CIUDAD"
        Case "711"
            final = "NO QUIERE"
        Case "712"
            final = "NO PUEDE"
        Case "713"
            final = "PTE RESPUESTA PQRS"
    End Select
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "INSERT INTO __tipCbolivarbgta_sac_pqrs(idtransaccion,numdoc,name,name2,lastname,lastname2,t1,t2,Proyecto,Agrupacion,proceso,fechaproyectada,entregallaves) VALUES ('" + idcall + "','" + idoriginal + "','" + Nombre1 + "','" + Nombre2 + "','" + Apellido1 + "','" + Apellido2 + "','" + origen + "','" + final + "','" + proyecto + "','" + agrupacion + "','" + proceso + "','" + fecha_proyectada + "','" + entrega_llaves + "')"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Gestion.FinalGestion(idfin)
%>