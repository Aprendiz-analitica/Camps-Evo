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
    Dim tip1 As String = Request.QueryString("tip1").ToString()
    Dim tip2 As String = Request.QueryString("tip2").ToString()
    Dim tip3 As String = Request.QueryString("tip3").ToString()
    Dim tip4 As String = Request.QueryString("tip4").ToString()
    Dim tip6 As String = Request.QueryString("tip6").ToString()
    Dim tip7 As String = Request.QueryString("tip7").ToString()
    Dim proyect As String = Request.QueryString("proyect").ToString()
    Dim agrupacio As String = Request.QueryString("agrupacio").ToString()
    Dim product As String = Request.QueryString("product").ToString()
    Dim descripcio As String = Request.QueryString("descripcio").ToString()
    Dim idfin As Integer = Int32.Parse(tipificacion)
    Dim sede As String = Request.QueryString("sede").ToString
    Dim check As String = Gestion.Cliente.Texto2
    Dim idinfobip As String = Request.QueryString("idinfobip")
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "INSERT INTO __tipCbolivarbgta_sac_pqrs(idtransaccion,numdoc,name,name2,lastname,lastname2,t1,t2,t3,t4,t6,t7,Proyecto,Agrupacion,Producto,Descripcion,checkcomunicado,sede,idinfobip) VALUES ('" + idcall + "','" + idoriginal + "','" + Nombre1 + "','" + Nombre2 + "','" + Apellido1 + "','" + Apellido2 + "','" + tip1 + "','" + tip2 + "','" + tip3 + "','" + tip4 + "','" + tip6 + "','" + tip7 + "','" + proyect + "','" + agrupacio + "','" + product + "','" + descripcio + "','" + check + "','" + sede + "','" + idinfobip + "')"
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Gestion.FinalGestion(idfin)
%>