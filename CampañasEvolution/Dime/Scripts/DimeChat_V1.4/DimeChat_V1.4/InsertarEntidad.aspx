<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
    
    Dim idcall As String = Gestion.Transaccion.IdTransaccion
    Dim EntidadCliente As String = Request.QueryString("entidad").ToString()
    Dim conn As OdbcConnection = New OdbcConnection()
    Dim sqlComm As OdbcCommand = New OdbcCommand()
    Dim dr As OdbcDataReader
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString()
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "INSERT INTO __DimeEntidadTransaccion(idTransaccion, entidad) VALUES (?, ?)"
    sqlComm.Parameters.AddWithValue("@idcall", idcall)
    sqlComm.Parameters.AddWithValue("@EpsCliente", EntidadCliente)
    sqlComm.ExecuteNonQuery()
    conn.Close()
    
    Response.Redirect("~/Finales.aspx")
    
    
           
%>


<script runat="server">
    ' Puedes agregar código JavaScript o funciones adicionales aquí si es necesario
    
</script>
