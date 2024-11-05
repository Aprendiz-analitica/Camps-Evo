<%-- 
    Document   : lista
    Created on : 16/07/2019, 03:26:09 PM
    Author     : jvaldes
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>    
        <table class="formulario" style="width:100%">        
            <thead>
            <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
            <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
            <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.bootstrap4.min.css">
            <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
            <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.colVis.min.js"></script>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            <link href="css/Lista.css" rel="stylesheet" type="text/css">
            <script>
                var token;
                var url = "https://8aozurcink.execute-api.us-east-2.amazonaws.com";
                $(document).ready(function () {
                   
                    var settings = {
                        "url": url + "/auth/login",
                        "method": "POST",
                        "timeout": 0,
                        "headers": {
                            "username": "UsrCBolivarBgta",
                            "password": "*CB0L1b4RB0Gt4-O22."
                        },
                    };
                    $.ajax(settings).done(function (response) {
                        token = response.token;


                    });
                });
                function actualizar(fidfinal,fdesfinal) {
                    var idcall = $('input:hidden[name=idllamada]').val();
                                       
                    var updatefinal = {
                      "url": url + "/webservicefenalco/cbolivarbgta/actualizarpqrsOra",
                      "method": "POST",
                      "timeout": 0,
                       "headers": {
                           "Authorization": "Bearer " + token,
                           "Content-Type": "application/json"
                       },
                       "data": JSON.stringify({
                           "idtipificacion": fidfinal,
                           "idcall": idcall,
                           "destipificacion": fdesfinal
                           }),
                            
                       };

                       $.ajax(updatefinal).done(function (response) {
                        console.log(response);   
                        if (response.error == true ) {
                        alert(response.respuesta);
                        return false;
                        }else{
                        alert("Tipificacion Actualizada");
                        $('input:button').prop('disabled', true);
                        location.reload();
                        }                        
                        });
                    }

            </script>
            <tr style="font-weight: bold; font-family: Roboto; color: white; background-color: #008c44;font-size: 16px; border : 1px solid #008c44; width: 100% ;height: 50px">
                <th colspan="4">FINALES</th>
            </tr>
            </thead>
            <tbody>
                <%
                    String idcall = request.getParameter("id");
                %>
                <tr>
            <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
            <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                <input style="width: 175px;height: 100%" id="100" type="button" value="Actualizacion de información del cliente" onclick ="actualizar('100','ACTUALIZACION INFO CLIENTE')" />
            </td>
            <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                <input style="width: 175px;height: 100%" id="101" type="button" value="Ajuste plan de pagos" onclick ="actualizar('101','AJUSTE PLAN DE PAGOS')" />
            </td>
            <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                <input style="width: 175px;height: 100%" id="102" type="button" value="Aplicaciones de pago o conciliaciones" onclick ="actualizar('102','APLICACIONES DE PAGO O CONCILI')" />     
            </td>
            <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                <input style="width: 175px ;height: 100%" id="103" type="button" value="Cambio fecha pactada de entrega de inmueble" onclick ="actualizar('103','CAMBIO FECHA PACTADA DE ENTREG')" />     
            </td>
            </tr>
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="104" type="button" value="Certificado de compra y aportes" onclick ="actualizar('104','CERTIFICADO DE COMPRA Y APORTE')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="105" type="button" value="Certificado de tradicion" onclick ="actualizar('105','CERTIFICADO DE TRADICION')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="106" type="button" value="Certificado para declaracion de renta" onclick ="actualizar('106','CERTIFICADO PARA DECLARACION D')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="107" type="button" value="Cesantias o ahorros programados" onclick ="actualizar('107','CESANTIAS O AHORROS PROGRAMADO')" />     
                </td>
            </tr>
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="108" type="button" value="Cesiones" onclick ="actualizar('108','CESIONES')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="109" type="button" value="Devolucion de recursos por excedentes" onclick ="actualizar('109','DEVOLUCIÓN DE RECURSOS POR EXC')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="112" type="button" value="Devolucion venta no registrada" onclick ="actualizar('112','DEVOLUCION VENTA NO REGISTRADA')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="113" type="button" value="Elaboracion de poder" onclick ="actualizar('113','ELABORACION DE PODER')" />     
                </td>
            </tr>
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="114" type="button" value="Entrega de escritura registrada al cliente" onclick ="actualizar('114','ENTREGA ESCRITURA REG CLIENTE')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="115" type="button" value="Entrega de inmueble" onclick ="actualizar('115','ENTREGA INMUEBLE')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="116" type="button" value="Estado de cuenta" onclick ="actualizar('116','ESTADO DE CUENTA')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="117" type="button" value="Estado de monetizacion" onclick ="actualizar('117','ESTADO MONETIZACION')" />     
                </td>
            </tr>
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="118" type="button" value="Estudio de titulos y avaluos" onclick ="actualizar('118','ESTUDIO DE TITULOS Y AVALUOS')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="119" type="button" value="Firma de pagares" onclick ="actualizar('119','FIRMA DE PAGARES')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="120" type="button" value="Identificacion de pago" onclick ="actualizar('120','IDENTIFICACION DE PAGO')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="121" type="button" value="Informacion del proceso de credito" onclick ="actualizar('121','INF. SOBRE PROCESO CREDITO')" />     
                </td>
            </tr>     
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="124" type="button" value="Informacion fecha de entrega de inmueble" onclick ="actualizar('124','INF. FECHA ENTREGA DE INMUEBLE')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="125" type="button" value="Informacion portal bolivar contigo" onclick ="actualizar('125','INFOR. PORTAL BOLIVAR CONTIGO')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="126" type="button" value="Informacion predial" onclick ="actualizar('126','INFORMACIÓN PREDIAL')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="127" type="button" value="Informacion sobre el proceso de escrituracion" onclick ="actualizar('127','INF SOBRE PROCESO ESCRITURACIO')" />     
                </td>
            </tr>
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="128" type="button" value="Informacion sobre el proceso del desistimiento radicado" onclick ="actualizar('128','INFOR PROCESO DESIST RADICADO')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="129" type="button" value="Informacion para desistir" onclick ="actualizar('129','INFORMACIÓN PARA DESISTIR')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="130" type="button" value="Legalizacion de la escritura" onclick ="actualizar('130','LEGALIZACIÓN DE LA ESCRITURA')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="131" type="button" value="Medios de pago" onclick ="actualizar('131','MEDIOS DE PAGO')" />     
                </td>
            </tr>      
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="138" type="button" value="Novedad con el credito" onclick ="actualizar('138','NOVEDAD CON EL CREDITO')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="139" type="button" value="Otro si" onclick ="actualizar('139','OTRO SI')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="140" type="button" value="Peticiones capital social" onclick ="actualizar('140','PETICIONES CAPITAL SOCIAL')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="141" type="button" value="Peticiones de mercadeo" onclick ="actualizar('141','PETICIONES DE MERCADEO')" />     
                </td>
            </tr>   
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="142" type="button" value="Peticiones de diseño" onclick ="actualizar('142','PETICIONES DISEÑO')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="143" type="button" value="Poderes" onclick ="actualizar('143','PODERES')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="144" type="button" value="Promesa de compraventa" onclick ="actualizar('144','PROMESA DE COMPRAVENTA')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="145" type="button" value="Porroga para escriturar" onclick ="actualizar('145','PRORROGA PARA ESCRITURAR')" />     
                </td>
            </tr>   
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="146" type="button" value="Quejas mercadeo" onclick ="actualizar('146','QUEJAS MERCADEO')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="147" type="button" value="Quejas tramite y cartera" onclick ="actualizar('147','QUEJAS TRAMITE Y CARTERA')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="148" type="button" value="Reclamaciones tramite y cartera" onclick ="actualizar('148','RECLAMACIONES TRAMITE Y CARTER')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="149" type="button" value="Reformas(Mayor a VIS)" onclick ="actualizar('149','REFORMAS (MAYOR A VIS)')" />     
                </td>
            </tr>
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="152" type="button" value="Solicitud de desistimiento" onclick ="actualizar('152','SOLICITUD DE DESISTIMIENTO')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="153" type="button" value="Solicitud de plazo para desembolso del credito" onclick ="actualizar('153','SOLICITUD DE PLAZO PARA DESEMB')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="154" type="button" value="Solicitud plazo para tramite de credito" onclick ="actualizar('154','SOLIC PLAZO TRAMITE DE CREDITO')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="155" type="button" value="Subsidios" onclick ="actualizar('155','SUBSIDIOS')" />     
                </td>
            </tr>
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="206" type="button" value="Descuento financiero - No VIS" onclick ="actualizar('206','DESCUENTO FINANCIERO-NO VIS')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="110" type="button" value="Devolucion por desistimiento" onclick ="actualizar('110','DEVOLUCION POR DESISTIMIENTO')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="210" type="button" value="Modificacion plan de pagos" onclick ="actualizar('210','MODIFICACION PLAN DE PAGOS')" />     
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px ;height: 100%" id="214" type="button" value="Quejas diseño" onclick ="actualizar('214','QUEJAS DISENO')" />     
                </td>
            </tr>
            <tr>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
                    <input style="width: 175px;height: 100%" id="225" type="button" value="Campaña recaudo" onclick ="actualizar('225','CAMPAÑA RECAUDO')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                    <input style="width: 175px;height: 100%" id="226" type="button" value="Campaña desistimientos" onclick ="actualizar('226','CAMPAÑA DESISTIMIENTOS')" />
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                </td>
                <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
                </td>
            </tr>
            </tbody>
        </table>    
   
</html>
