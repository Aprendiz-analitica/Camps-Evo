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
            function actualizar(fidfinal, fdesfinal) {
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
                    if (response.error == true) {
                        alert(response.respuesta);
                        return false;
                    } else {
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
        <input style="width: 175px;height: 100%" id="156" type="button" value="Informacion certificado gas" onclick ="actualizar('156', 'INFORMACION CERTIFICADO GAS')" />
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
        <input style="width: 175px;height: 100%" id="157" type="button" value="Informacion servicios publicos" onclick ="actualizar('157', 'INFORMACION SERVICIOS PUBLICOS')" />
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
        <input style="width: 175px;height: 100%" id="158" type="button" value="Peticiones del proceso de construccion" onclick ="actualizar('158', 'PETICIONES DEL PROCESO DE CONS')" />     
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
        <input style="width: 175px ;height: 100%" id="159" type="button" value="Peticiones posteriores a la entrega" onclick ="actualizar('159', 'PETICIONES POST. A LA ENTREGA')" />     
    </td>
</tr>
<tr>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
        <input style="width: 175px;height: 100%" id="160" type="button" value="Queja postventa" onclick ="actualizar('160', 'QUEJA POSTVENTA')" />
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
        <input style="width: 175px;height: 100%" id="161" type="button" value="Queja del proceso de construccion" onclick ="actualizar('161', 'QUEJAS DEL PROCESO DE CONSTRUC')" />
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
        <input style="width: 175px;height: 100%" id="162" type="button" value="Reclamacion postventa" onclick ="actualizar('162', 'RECLAMACION POSTVENTA')" />     
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px; padding: 5px">
        <input style="width: 175px ;height: 100%" id="163" type="button" value="Visita programa arquitecto" onclick ="actualizar('163', 'VISITA PROGRAMADA ARQUITECTO')" />     
    </td>

</tr>
<tr>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
        <input style="width: 175px;height: 100%" id="200" type="button" value="Pendientes entrega autogestion" onclick ="actualizar('200', 'PENDIENTES ENTREGA AUTOGESTION')" />
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
        <input style="width: 175px;height: 100%" id="200" type="button" value="Peticiones admon provisional" onclick ="actualizar('217', 'PETICIONES ADMON PROVISIONAL')" />
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
        <input style="width: 175px;height: 100%" id="200" type="button" value="Quejas admon provisional" onclick ="actualizar('218', 'QUEJAS ADMON PROVISIONAL')" />
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
        <input style="width: 175px;height: 100%" id="200" type="button" value="Reclamaciones admon provisional" onclick ="actualizar('219', 'RECLAMACIONES ADMON PROVISIONA')" />
    </td>
    
</tr>
<tr>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
    <input style="width: 175px;height: 100%" id="224" type="button" value="Felicitaciones postventa" onclick ="actualizar('224', 'FELICITACIONES POSTVENTA')" />
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
    </td>
    <td   style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #008c44; height: 50px ; padding: 5px">                     
    </td>
    
</tr>

</tbody>
</table>    

</html>
