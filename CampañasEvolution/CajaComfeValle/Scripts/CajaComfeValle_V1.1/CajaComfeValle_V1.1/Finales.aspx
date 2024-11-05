<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
    <script type="text/javascript">

        function Transf_Encuesta() {
            agentapi.TransferActiveCall('2004');
        }

        function Transf_POS() {
            agentapi.TransferActiveCall('*992227');
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

            Conferenciar('2006');
        }


        function DetieneConferencia() {
//            agentapi.GetActiveCall()
//            .done(function (nRet) {
//                alert('idCall Conferencia:' + nRet);

//                agentapi.SendDTMF(nRet, '5')
//                .done(function (nRet) {
//                    alert('Grabacion detenida');
//                })
//                .fail(function (code, cause) {
//                    alert('SendDTMF falló. Code:' + code + '. Cause:' + cause);
//                });
//            })
//            .fail(function (code, cause) {
//                alert('GetActiveCall falló. Code:' + code + '. Cause:' + cause);
//            });

            EnviarDTMFs('5');
            alert("Detenida grabación");
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
                                        imageHeight: 200,});
            })
            .fail(function (code, cause) {
                alert("Envio ConferenciaAMI KO. Code: " + code + " , cause: " + cause);
            });
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
            .done(function (response) {
                                        Swal.fire({
                                        title: 'Final de grabación exitoso',
                                        text: 'HabeasData almacenado',
                                        imageUrl: 'Resources/images/INIGRABHD.png',
                                        confirmButtonColor: '#0C7834', 
                                        imageWidth: 200,
                                        imageHeight: 200,});
            })
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


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <table class="formulario" style="width:100%">        
        <thead>
        </thead>
        <tbody>            
            <tr>
                <th colspan="3" 
                    
                    
                    
                    style="padding: 5px; border: 1px solid #9dc541; text-align:center; background-color: #9dc541; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;">
                    Tipificación
                    &nbsp;de Llamada</th>
            </tr>
            <tr>
                <td style="padding: 5px; width: 50%;" 
                    align="center" bgcolor="White" colspan="1">
                    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                        Text="Convenio" />
                    <br />
                    </td>                        
                <td style="padding: 5px; text-align:center; font-weight: bold; font-size: medium;" 
                    align="center" bgcolor="White" colspan="1">
                    <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                        Text="Educación y Cultura" />
                    <br />
                    </td>                        
                <td style="padding: 5px; width: 50%;" 
                    align="center" bgcolor="White" colspan="1">
                    <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                        Text="Generales" />
                        <br />
                    </td>                        
            </tr>
            <tr>
                <td style="padding: 5px; width: 50%;" 
                    align="center" bgcolor="White" colspan="1">
                    <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
                        Text="Empleabilidad" />
                    </td>                        
                <td style="padding: 5px; text-align:center; font-weight: bold; font-size: medium;" 
                    align="center" bgcolor="White" colspan="1">
                    <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                        Text="Recreación" />
                    </td>                        
                <td style="padding: 5px; width: 50%;" 
                    align="center" bgcolor="White" colspan="1">
                    <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                        Text="Registro y Aportes" />
                    </td>                        
            </tr>
            <tr>
                <td style="padding: 5px; width: 50%;" 
                    colspan="1">
                    <asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
                        Text="Servicios Financieros" />
                    <br />
                    </td>                        
                <td style="padding: 5px; text-align:center; font-weight: bold; font-size: medium;" 
                    colspan="1">
                    <asp:Button ID="Button13" runat="server" onclick="Button13_Click" 
                        Text="Vivienda" />
                    </td>                        
                <td style="padding: 5px; width: 50%;" 
                    colspan="1">
                    <asp:Button ID="Button14" runat="server" onclick="Button14_Click" 
                        Text="Llamada saliente" />
                    <br/>
                    </td>                        
            </tr>
            <tr>
                <td style="padding: 5px; width: 50%;" 
                    colspan="1">
                    <asp:Button ID="Button15" runat="server" onclick="Button15_Click" 
                        Text="PEC" />
                    </td>                        
                <td style="padding: 5px; text-align:center; font-weight: bold; font-size: medium;" 
                    colspan="1">
                    &nbsp;</td>                        
                <td style="padding: 5px; width: 50%;" 
                    colspan="1">
                    &nbsp;</td>                        
            </tr>
        </tbody>
    </table>
    
    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
       
    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Convenio.aspx")
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/EducacionCultura.aspx")
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/GestionComercial.aspx")
    End Sub

    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Generales.aspx")
    End Sub

    Protected Sub Button9_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Empleabilidad.aspx")
    End Sub

    Protected Sub Button10_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Recreacion.aspx")
    End Sub

    Protected Sub Button11_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/RegistroAportes.aspx")
    End Sub

    Protected Sub Button12_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/ServiciosFinancieros.aspx")
    End Sub

    Protected Sub Button13_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Vivienda.aspx")
    End Sub

    Protected Sub Button14_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Llamadasaliente.aspx")
    End Sub

    Protected Sub Button15_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/PEC.aspx")
    End Sub
</script>