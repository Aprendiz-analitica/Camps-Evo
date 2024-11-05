<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
    Dim idcall As String = Gestion.Transaccion.IdTransaccion
    Dim EpsCliente As String = Request.QueryString("epsC").ToString()
    Dim selectedValue As String = Request.QueryString("FinalGestion").ToString()
    
    Dim conn As OdbcConnection = New OdbcConnection()
    Dim sqlComm As OdbcCommand = New OdbcCommand()
    Dim dr As OdbcDataReader
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString()
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
    sqlComm.CommandText = "INSERT INTO __HematoOncolgos_EPS_Cliente(idTransaccion, eps) VALUES (?, ?)"
    sqlComm.Parameters.AddWithValue("@idcall", idcall)
    sqlComm.Parameters.AddWithValue("@EpsCliente", EpsCliente)
    sqlComm.ExecuteNonQuery()
    conn.Close()
    
    If (selectedValue) Then
        ' Realiza la gestión final con el valor seleccionado
        Gestion.FinalGestion(selectedValue)
    End If
   
%>


<script runat="server">
    ' Puedes agregar código JavaScript o funciones adicionales aquí si es necesario
    
</script>
