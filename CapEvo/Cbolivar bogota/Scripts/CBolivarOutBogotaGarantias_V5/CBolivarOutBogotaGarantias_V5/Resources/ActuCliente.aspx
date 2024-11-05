<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript">
        function Transf_BO() {
            agentapi.TransferActiveCall('5021');
        }
        function Conferencia_v2() {
            
            makeHttpRequest("ConferenciaAMI.aspx")
            .done(function (response) {
                                        Swal.fire({
                                        title: 'Inicio de grabación exitoso',
                                        text: 'Comience protocolo de HabeasData',
                                        imageUrl: 'Resources/images/INIGRABHD.png',
                                        confirmButtonColor: '#0C7834', 
                                        imageWidth: 200,
                                        imageHeight: 200,})})
            .fail(function (code, cause) {
                alert("Envio ConferenciaAMI KO. Code: " + code + " , cause: " + cause);
            });
        }

        function Conferencia() {
            //            agentapi.GetActiveCall()
            //            .done(function (nRet) {
            //                alert('idCall Original:' + nRet);
            //            })
            //            .fail(function (code, cause) {
            //                alert('GetActiveCall falló. Code:' + code + '. Cause:' + cause);
            //            });

            //            agentapi.ConferenceActiveCall('2009');

            Conferenciar('1009');
        }   

        function EstadoConferencia() {
            makeHttpRequest("DBRKeepAlive.aspx")
            .done(function (response) {
                alert("Envio DBRKeepAlive OK");
                setTimeout(function () { EstadoConferencia() }, 500);
            })
            .fail(function (code, cause) {
                alert("Envio DBRKeepAlive KO. Code: " + code + " , cause: " + cause);
            });
        }

        function EnviarMsgDBR() {
            makeHttpRequest("EnvioMsgDBR.aspx")
            .done(function (response) {})
            .fail(function (code, cause) {
                alert("Envio MsgDBR KO. Code: " + code + " , cause: " + cause);
            });
        }
        function makeHttpRequest(sURL) {
            /// <summary>Realiza una petición http asincrona</summary>
            /// <param name="sURL" type="String">idTransaccion</param>
            /// <param name="resultFunc" type="Func">Función de resultado, nos van a pasar un objeto response y un objeto deferred.</param>
            /// <returns type="Deferred"></returns>
            var xmlhttp;
            if (window.XMLHttpRequest) {
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            } else {
                // code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            var deferred = new Deferred();
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4) {
                    try {
                        if (xmlhttp.status != 200)
                            throw new Error("Http status." + xmlhttp.status);

                        var response = JSON.parse(xmlhttp.responseText);
                        if (response.result)
                            deferred.resolve(response);
                        else
                            deferred.reject(response.code, response.cause);
                    }
                    catch (ex) {
                        deferred.reject(0, "[makeHttpRequest] {sURL=" + sURL + "}: " + ex.Message);
                    }
                }
            };

            xmlhttp.open("GET", sURL, true);
            xmlhttp.send();

            return deferred;
        }
    </script>





    <style type="text/css">
        .tdSample
        {
            height: 30px;        
        }
        .style3
        {
            height: 44px;
        }
        .style6
        {
            height: 60px;
            width: 150px;
        }
        .style7
        {
            height: 60px;
            width: 181px;
        }
        .style8
        {
            height: 50px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
     
    <table class="formulario" style="width:70%;">        
        <thead>
            <tr>
                <th style="border-color: #28a745; border-style: solid; border-width: inherit; text-align:center; background-color: #28a745; font-size: 20px; color: #FFFFFF; font-weight: bold; font-family: sans-serif; height: 40px;" 
                    colspan="3" align="center" class="style8">
                    Constructora Bolívar Inbound<br />
                    Datos</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border-style: none dotted dotted dotted; border-width: inherit; border-color: #28a745; text-align:center; background-color: #FFFFFF; color: #ffc107; font-weight: bold; font-family: Arial, Helvetica, sans-serif; font-size: medium; vertical-align: middle;" 
                    class="style3">
                    N° DOCUMENTO&nbsp;</td>
                <td 
                    style="border-style: none dotted dotted dotted; border-width: inherit; border-color: #28a745; text-align:center; background-color: #FFFFFF; color: #ffc107; font-weight: bold; font-family: Arial, Helvetica, sans-serif; font-size: medium; vertical-align: middle;" 
                    class="style3" colspan="2">
                    NOMBRE COMPLETO</td>
            </tr>
            <tr>
                <td style="border-style: dotted; border-width: inherit; border-color: #28a745; text-align:center; background-color: #FFFFFF;" 
                    width="150PX" rowspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td style="text-align:center; background-color: #FFFFFF; border-left-style: none; border-left-color: #28a745; border-left-width: inherit; border-right-style: dotted; border-right-color: #28a745; border-right-width: inherit; border-top-style: none; border-top-color: #28a745; border-top-width: inherit; border-bottom-style: dotted; border-bottom-color: #28a745; border-bottom-width: inherit;" 
                    class="style6">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td style="border-left: thin none #28a745; border-right: thin dotted #28a745; border-top: thin none #28a745; border-bottom: thin none #28a745; border-width: inherit; text-align:center; background-color: #FFFFFF;" 
                    class="style7">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border-left: thin none #28a745; border-right: thin dotted #28a745; border-top: thin none #28a745; border-bottom: thin dotted #28a745; border-width: inherit; text-align:center; background-color: #FFFFFF;" 
                    class="style6">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td style="border-style: dotted; border-width: inherit; border-color: #28a745; text-align:center; background-color: #FFFFFF;" 
                    class="style7">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th style="border-color: #28a745; border-style: solid; border-width: inherit; text-align:center; background-color: #28a745; font-size: 20px; color: #FFFFFF; font-weight: bold; font-family: sans-serif; height: 30px;" 
                    colspan="3" align="center">
                    Finalizar Gestión</th>
            </tr>
            <tr>
                <td style="text-align:center; height:80px; background-color: #FFFFFF;" 
                    colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="POS VENTA GARANTIA" 
                        OnClick ="CrearCliente" ForeColor="Black" />
                &nbsp;<asp:Button ID="Button2" runat="server" Text="COMERCIAL" 
                        OnClick ="CrearCliente" ForeColor="Black" />
                    <asp:Button ID="Button3" runat="server" Text="SAC-PQRS" OnClick ="CrearCliente" 
                        ForeColor="Black" />
                    <asp:Button ID="Button4" runat="server" Text="FUNDACION BOLIVAR" 
                        OnClick ="CrearCliente" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td style="text-align:center; height:80px; background-color: #FFFFFF;" 
                    colspan="3">
                    &nbsp;</td>
            </tr>
        </tbody>
    </table>

    <br />


    
    <br />  

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim doc As String = ""
        Dim idcliente As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("Numdoc1", doc)
        TextBox1.Text = doc
        
    End Sub
    Protected Sub CallDisposition_Button1_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Tipificaciones.aspx?idoriginal=" + TextBox1.Text + "&Nombre1=" + TextBox2.Text + "&Nombre2=" + TextBox3.Text + "&Apellido1=" + TextBox4.Text + "&Apellido2=" + TextBox5.Text)
    End Sub
    
    Protected Sub CrearCliente(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim idcall As String = ""
        Dim telori As String = ""
        telori = (Gestion.Transaccion.Ani).ToString()
        idoriginal = TextBox1.Text
        Nombre1 = TextBox2.Text
        Apellido1 = TextBox4.Text
        Nombre2 = TextBox3.Text
        Apellido2 = TextBox5.Text
        idcall = Gestion.Transaccion.IdTransaccion
        idsujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "", idoriginal, Nombre1, Apellido1, Apellido2, , , , , , , telori, , , , , , , , , , , , , , Nombre2, , , , idcall) ' num1:=Gestion.Transaccion.IdTransaccion.ToString
        Dim newidsujeto As String = idsujeto.ToString()
        'Label1.Text = "~/Tipificaciones.aspx?idoriginal=" + TextBox1.Text + "&Nombre1=" + TextBox2.Text + "&Nombre2=" + TextBox3.Text + "&Apellido1=" + TextBox4.Text + "&Apellido2=" + TextBox5.Text + "&newidsujeto=" + newidsujeto
        Response.Redirect("~/Tipificaciones.aspx?newidsujeto=" + newidsujeto)
    End Sub

</script>
