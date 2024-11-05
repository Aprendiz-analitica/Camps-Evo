<%@ Import Namespace = "System.Net" %>

<script language="C#" runat="server">
public void Application_Start()
{
    //Añadir protocolo TLS1.2
    ServicePointManager.Expect100Continue = true;
    ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072 /*SecurityProtocolType.Tls12*/ | (SecurityProtocolType)768 /* SecurityProtocolType.Tls11 */ | SecurityProtocolType.Ssl3;
    ServicePointManager.DefaultConnectionLimit = 9999;
}
public void Session_OnEnd()
{
    var o = Session["SYS_EVOCOMMMISC"];
    if (o != null)
    {
        var comm = ((ICR.Comun.icrCommMisc)o);
        if (comm.IsConnectionStarted())
            comm.Stop();
        comm.Dispose();
    }
}

</script>