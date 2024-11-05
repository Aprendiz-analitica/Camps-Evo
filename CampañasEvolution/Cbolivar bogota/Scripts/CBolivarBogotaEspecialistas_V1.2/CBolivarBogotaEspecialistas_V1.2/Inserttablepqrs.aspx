<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    dr = sqlComm.ExecuteReader()
    dr.Close()
    conn.Close()
    Gestion.FinalGestion(100)
%>