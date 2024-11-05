<%@ Page language="vb" %>
<%@ Import Namespace="System.Data.Odbc" %>

<%
        
    Dim conn As OdbcConnection = New OdbcConnection
    Dim sqlComm As OdbcCommand = New OdbcCommand
    Dim dr As OdbcDataReader
    Dim Extension As String = ""
        
    conn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString").ToString
    conn.Open()
    sqlComm.Connection = conn
    sqlComm.CommandType = Data.CommandType.Text
        
    'Recuperamos el origen que dio lugar a la transacción
    Traces.Debug("Transaccion: " + Gestion.Transaccion.IdTransaccion.ToString + " ConferenciaAMI.aspx --> INI select extensión agente")
    sqlComm.CommandText = "select TELEFONO from PUESTOTRABAJO with(NOLOCK) where IDPUESTOTRABAJO=" + Gestion.Agente.Sesion.IdPuestoTrabajo.ToString
    dr = sqlComm.ExecuteReader()
    If dr.HasRows() Then
        Extension = IIf(IsDBNull(dr("TELEFONO")), "", dr("TELEFONO"))
    End If

    dr.Close()
    conn.Close()
    Traces.Debug("Transaccion: " + Gestion.Transaccion.IdTransaccion.ToString + " Extension: " + Extension + " ConferenciaAMI.aspx --> FIN select extensión agente")
    
    If Not String.IsNullOrWhiteSpace(Extension) Then
        
        Using client As New ICR.Comun.ICR.Ami.AmiClient("172.10.0.200", 5038, "evolution", "bomber")
            ' El siguiente ChanSpy indica a la Routepoint 114 que llame a la extension 418 del agente y lo 'espie' en modo conferencia-a-3. 
            ' Por construccion, nada mas arrncar, 114 emite locución
            ' local/114@from-internal" -> 114 es el routepoint de la IVR que se desea activar
            ' "SIP/418-"  -> 418 es la extension del agente. Ojo con el guion tras el numero: "SIP/418-"  La funcion realmente busca llamadas que comiencen por esta cadena, y se queda con la primera.
            If client.ChanSpy(ICR.Comun.ICR.Ami.AmiClient.ChanSpyMode.Barge, "local/1009*00" + Gestion.Transaccion.IdTransaccion.ToString + "@from-internal", "PJSIP/" + Extension + "-", True) Then
                Response.Write("{""result"":true}")
            Else
                Response.Write("{""result"":false,""code"":27,""cause"":""""}")
            End If
        
        End Using
        
    End If

%>