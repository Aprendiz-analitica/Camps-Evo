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
    Select Case tipificacion
        Case "600"
            final = "CONTACTO EFECTIVO"
        Case "602"
            final = "BUZÓN DE MENSAJES"
        Case "603"
            final = "EQUIVOCADO"
        Case "604"
            final = "FALLECIDO"
        Case "605"
            final = "FUERA DE SERVICIO"
        Case "606"
            final = "FUERA DEL PAIS"
        Case "607"
            final = "LLAMAR LUEGO"
        Case "608"
            final = "NO CONTESTAN"
        Case "610"
            final = "FUERA DE LA CIUDAD"
        Case "613"
            final = "PTE RESPUESTA PQRS"
        Case "618"
            final = "SOLICITUD DUPLICADA"
    End Select
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "INSERT INTO __tipCbolivarbgta_sac_pqrs(idtransaccion,numdoc,name,name2,lastname,lastname2,t1,t2,garantia,proceso) VALUES ('" + idcall + "','" + idoriginal + "','" + Nombre1 + "','" + Nombre2 + "','" + Apellido1 + "','" + Apellido2 + "','" + origen + "','" + final + "','" + ngarantia + "','" + proceso + "')"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Gestion.FinalGestion(idfin)
%>