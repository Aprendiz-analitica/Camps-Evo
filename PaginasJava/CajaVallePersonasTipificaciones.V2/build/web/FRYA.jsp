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
            function actualizar() {
            idfinal = $('input:radio[name=FSTC]:checked').val()
                    var idcall = $('input:hidden[name=idllamada]').val();
            if (idfinal == 0) {
            alert("Error al actualizar, por favor seleccione un final");
            return false;
            }
            switch (idfinal) {
            case "132":
                    desfinal = "Solicitud certificado de afili";
            break;
            case "144":
                    desfinal = "Info básica consulta y aportes";
            break;
            case "193":
                    desfinal = "Sucursal Virtual Personas";
            break;
            case "137":
                    desfinal = "Radicación consultas de aporte";
            break;
            case "146":
                    desfinal = "Estado de afiliación";
                    break;
            case "194":
                    desfinal = "Sucursal Virtual Empresas";
            break;
            case "138":
                    desfinal = "Subsidio familiar monetario";
            break;
            case "148":
                    desfinal = "Tarjeta de servicio";
            break;
            case "200":
                    desfinal = "REGISTRO KUPI";
                    break;
            case "139":
                    desfinal = "PQR Subsidio familiar monetari";
            break;
            case "188":
                    desfinal = "Afiliación dependiente";
            break;
            case "201":
                    desfinal = "SALDO Y MOVIMIENTOS KUPI";
            break;
            case "141":
                    desfinal = "Documentacion pendiente";
                    break;
            case "189":
                    desfinal = "Afiliacion Independiente";
            break;
            case "202":
                    desfinal = "ACTUALIZACIÓN KUPI";
            break;
            case "142":
                    desfinal = "Actualización de datos";
            break;
            case "186":
                    desfinal = "Afiliacion Patronal";
            break;
            case "203":
                    desfinal = "PQRS KUPI";
            break;
            case "143":
                    desfinal = "Info certificado de afiliacion";
            break;
            case "191":
                    desfinal = "Billetera delagente";
            break;
            }
            $('input:button[id=btnfinalizar]').prop('disabled', true);
            var updatefinal = {
            "url": url + "/webservicefenalco/cbolivarbgta/actualizarpqrsOra",
                    "method": "POST",
                    "timeout": 0,
                    "headers": {
                    "Authorization": "Bearer " + token,
                            "Content-Type": "application/json"
                    },
                    "data": JSON.stringify({
                    "idtipificacion": idfinal,
                            "idcall": idcall,
                            "destipificacion": desfinal
                    }),
            };
            $.ajax(updatefinal).done(function (response) {
            alert("Tipificacion Actualizada");
            location.reload();
            });
            }

        </script>
        <tr>
            <th colspan="3" style="font-weight: bold; font-family: Lato; color: white; background-color: #ED7203;font-size: 16px; border : 1px solid #ED7203; width: 100% ;height: 50px">
                FINALES CANCELACIÓN DE CITA</th>
        </tr>
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;">                     
        <input type="radio" id="0" name="FSTC" value="0" hidden = "true" checked >  
        <input type="radio" id="132" name="FSTC" value="132">
          <label for="132">Solicitud certificado de afili</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">
        <input type="radio" id="144" name="FSTC" value="144">
          <label for="144">Info básica consulta y aportes</label><br> 
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">
        <input type="radio" id="193" name="FSTC" value="193">
          <label for="193">Sucursal Virtual Personas</label>     
    </td>
</tr>
<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="137" name="FSTC" value="137">
          <label for="137">Radicación consultas de aporte</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="146" name="FSTC" value="146">
          <label for="146">Estado de afiliación</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="194" name="FSTC" value="194">
          <label for="194">Sucursal Virtual Empresas</label><br>
    </td>

</tr>

<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="138" name="FSTC" value="138">
          <label for="138">Subsidio familiar monetario</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="148" name="FSTC" value="148">
          <label for="148">Tarjeta de servicio</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="200" name="FSTC" value="200">
          <label for="200">REGISTRO KUPI</label><br>
    </td>

</tr>
<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="139" name="FSTC" value="139">
          <label for="139">PQR Subsidio familiar monetari</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="188" name="FSTC" value="188">
          <label for="188">Afiliación dependiente</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="201" name="FSTC" value="201">
          <label for="201">SALDO Y MOVIMIENTOS KUPI</label><br>
    </td>

</tr>
<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="141" name="FSTC" value="141">
          <label for="141">Documentación pendiente</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="189" name="FSTC" value="189">
          <label for="189">Afiliación Independiente</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="202" name="FSTC" value="202">
          <label for="202">ACTUALIZACIÓN KUPI</label><br>
    </td>

</tr>
<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="142" name="FSTC" value="142">
          <label for="142">Actualización de datos</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="186" name="FSTC" value="186">
          <label for="186">Afiliación Patronal</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="203" name="FSTC" value="203">
          <label for="203">PQRS KUPI</label><br>
    </td>

</tr>
<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="143" name="FSTC" value="143">
          <label for="143">Info certificado de afiliación</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="191" name="FSTC" value="191">
          <label for="191">Billetera delagente</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     

    </td>

</tr>











<tr>
    <td colspan="3" style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; padding: 10px">
        <input type="button" id="btnfinalizar"  value="Finalizar" onclick="actualizar()">                      
    </td>
</tr>
</tbody>
</table>
</html>
