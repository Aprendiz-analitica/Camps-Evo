<%-- 
    Document   : lista
    Created on : 16/07/2019, 03:26:09 PM
    Author     : jvaldes
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <table class="formulario" style="width:100%;">        
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
        <link href="css/Listas.css" rel="stylesheet" type="text/css">
        <script>
            var token;
            var idfinal;
            var desfinal;
            var url = "https://8aozurcink.execute-api.us-east-2.amazonaws.com";
            $(document).ready(function () {
                var temp;
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
        <tr>
            <th colspan="3" style="font-weight: bold; font-family: 'Roboto', sans-serif; color: white; background-color: #00854fe6;font-size: 13px; border : 1px solid #00854fe6; width: 100% ;height: 50px">
                FINALES OTROS</th>
        </tr>
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
                            <tr>
                            <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
                            <td  style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="AsignacionDeCitaSanitasPGP" type="button" value="COTIZACIÓN" onclick="Cotizacion()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="ConfirmacionDeCitaSanitasPGP" type="button" value="FALLAS EQUIPO EN MANTENIMIENTO" onclick ="actualizar('1601','FALLAS EQUIPO EN MANTENIMIENTO')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="ReprogramacionDeCitaSanitasPGP" type="button" value="FALLA EN EL SISTEMA" onclick ="actualizar('1602','FALLA EN EL SISTEMA')"  />
                            </td>                            
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="CancelacionDeCitaSanitasPGP" type="button" value="INFORMACION CITAS RX" onclick ="actualizar('1603','INFORMACION CITAS RX')"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="SinDisponibilidadSanitasPGP" type="button" value="LLAMADA CAIDA" onclick ="actualizar('1605','LLAMADA CAIDA')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="InformacionGeneralSanitasPGP" type="button" value="LLAMADA MUDA" onclick ="actualizar('1606','LLAMADA MUDA')"  />
                            </td>                            
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="CancelacionDeCitaSanitasPGP" type="button" value="NO SE PRESTA SERVICIO EN DIME" onclick ="actualizar('1607','NO SE PRESTA SERVICIO EN DIME')"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="SinDisponibilidadSanitasPGP" type="button" value="SOPORTE DESCARGA DE RESULTADOS" onclick ="actualizar('1608','SOPORTE DESCARGA DE RESULTADOS')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="InformacionGeneralSanitasPGP" type="button" value="LLAMADA DE PRUEBA" onclick ="actualizar('1609','LLAMADA DE PRUEBA')"  />
                            </td>                            
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="CancelacionDeCitaSanitasPGP" type="button" value="LLAMADA EQUIVOCADA" onclick ="actualizar('1610','LLAMADA EQUIVOCADA')"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                            </td>                            
                        </tr>
</tbody>
</table>
</html>
