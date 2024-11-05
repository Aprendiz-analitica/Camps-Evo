<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
 <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
    <script type="text/javascript">
        function Transf_BO() {
            agentapi.TransferActiveCall('5021');
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

            Conferenciar('1008');
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
                alert("GRABACION INICIADA");
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
                alert("GRABACION FINALIZADA CORRECTAMENTE");
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
    
    <br />
    <br />
     
    <table class="formulario" style="width:70%;">        
        <thead>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold;" 
                    colspan="3">
                    Constructora Bolívar Inbound<br />
                    Datos</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td class="tdSample" 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Numero de Documento:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" 
                        runat="server" AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                </td>
                <td class="tdSample" 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" 
                        runat="server" AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                    </td>
                <td class="tdSample" 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    &nbsp;Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" 
                        runat="server" AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
&nbsp;</td>
            </tr>
            <tr>
                <td class="tdSample" 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" LabelStyle-Font-Bold="True" 
                        ValueStyle-ForeColor="Black" ValueStyle-Width="94%" />
                </td>
                <td class="tdSample" 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" LabelStyle-Font-Bold="True" 
                        ValueStyle-ForeColor="Black" ValueStyle-Width="94%" />
                    </td>
                <td class="tdSample" 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" 
                        runat="server" AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                    </td>
            </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold;" 
                    colspan="3">
                    Grabacion Habeas Data</th>
            </tr>
            <tr>
                <td class="tdSample" colspan="3" 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; text-align: center;">
                    <br />
                    <asp:TextBox ID="Cedula" runat="server" AutoPostBack="True" Font-Bold="True" 
                        Font-Size="Small" ForeColor="Black" Height="30px" 
                        ontextchanged="Cedula_TextChanged" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                    <input id="Button1" class="btn" onclick="Conferencia_v2()" 
                        style="border: 2px solid #f8db66; text-align: center; background-color: #28a745; font-size: medium; color: #f8db66; font-weight: bold; width: 100px;" 
                        type="button" value="INICIAR" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <input id="Button2" class="btn" onclick="EnviarMsgDBR()" 
                        style="border: 2px solid #f8db66; text-align: center; background-color: #28a745; font-size: medium; color: #f8db66; font-weight: bold; width: 100px;" 
                        type="button" value="DETENER" /><br />
                    <br />
                </td>
                </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold;" 
                    colspan="3">
                    Finalizar Gestion</th>
            </tr>
            <tr>
                <td class="tdSample" 
                    
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: medium; text-align: center;" 
                    colspan="3">
                    <br />
                    <input id="Button3" class="btn" onclick="Transf_BO()" 
                        style="border: 2px solid #f8db66; text-align: center; background-color: #28a745; font-size: medium; color: #f8db66; font-weight: bold; width: 220px;" 
                        type="button" value="Transferir a encuesta" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:IrA_Button ID="IrA_Button1" runat="server" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" BorderWidth="2px" 
                        Destino="~/Finales.aspx" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="#F8DB66" Text="Tipificaciones" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold;" 
                    colspan="3">
                    &nbsp;</th>
            </tr>
        </tbody>
    </table>

    <br />

    <!-- Código de ejemplo para el tutorial de Integración de IVR Asterisk con Evolution DBR  -->
    <div ID="DivIVR_KVP" runat="server">

    </div>

    
    <br />  

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">


    
    Protected Sub Cedula_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.Transaccion.KeyValueCollection.SetValue("Cedula", Cedula.Text)
    End Sub
</script>