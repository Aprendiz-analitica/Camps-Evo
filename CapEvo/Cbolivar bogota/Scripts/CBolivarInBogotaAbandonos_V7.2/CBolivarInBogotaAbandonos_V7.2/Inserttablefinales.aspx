﻿<%@ Page language="vb" %>
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
    Dim check As String = Gestion.Cliente.Texto2
    Dim tip1 As String = "GESTION ABANDONOS"
    Dim tip2 As String = ""
    Select Case tipificacion
        Case "105"
            tip2 = "NO CONTESTA"
        Case "106"
            tip2 = "MENSAJE CON TERCERO"
        Case "107"
            tip2 = "LLAMAR LUEGO"
        Case "108"
            tip2 = "FUERA DE SERVICIO"
        Case "111"
            tip2 = "BUZON"
        Case "112"
            tip2 = "NO SUMINISTRA DATOS"
        Case "113"
            tip2 = "NO TITULAR"

    End Select
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "INSERT INTO __tipCbolivarbgta_sac_pqrs(idtransaccion,numdoc,name,name2,lastname,lastname2,t1,t2,checkcomunicado) VALUES ('" + idcall + "','" + idoriginal + "','" + Nombre1 + "','" + Nombre2 + "','" + Apellido1 + "','" + Apellido2 + "','" + tip1 + "','" + tip2 + "','" + check + "')"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Gestion.FinalGestion(idfin)
%>