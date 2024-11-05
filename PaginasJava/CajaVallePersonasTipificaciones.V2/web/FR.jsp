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
                    case "127":
                        desfinal = "PQR evento de la gente recreac";
                        break;
                    case "131":
                        desfinal = "Informacion recreacion";
                        break;
                    case "136":
                        desfinal = "Academias deportivas";
                        break;
                    case "128":
                        desfinal = "Eventos sociales";
                        break;

                    case "133":
                        desfinal = "Cotización de Alojamiento";
                        break;
                    case "183":
                        desfinal = "Cotización momentos especiales";
                        break;
                    case "129":
                        desfinal = "Eventos de la gente recreacion";
                        break;
                    case "134":
                        desfinal = "Vacaciones recreativas";
                        break;
                    case "192":
                        desfinal = "Soporte App delagente";
                        break;
                    case "130":
                        desfinal = "Reservas momentos especiales";
                        break;
                    case "135":
                        desfinal = "Reservas Hoteleras";
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
                FINALES ASIGNACIÓN DE CITA</th>
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
        <input type="radio" id="127" name="FSTC" value="127">
          <label for="127">PQR EVENTO DE LA GENTE RECREA</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">
        <input type="radio" id="131" name="FSTC" value="131">
          <label for="131">INFORMACIÓN RECREACIÓN</label><br> 
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">
        <input type="radio" id="136" name="FSTC" value="136">
          <label for="136">ACADEMIAS DEPORTIVAS</label>     
    </td>
</tr>
<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="128" name="FSTC" value="128">
          <label for="128">EVENTOS SOCIALES</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="133" name="FSTC" value="133">
          <label for="133">COTIZACIÓN DE ALOJAMIENTO</label><br>
    </td><!-- comment -->
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="183" name="FSTC" value="183">
          <label for="183">COTIZACIÓN MOMENTOS ESPECIALES</label><br>
    </td>




</tr>

<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="129" name="FSTC" value="129">
          <label for="129">EVENTOS DE LA GENTE RECREACIÓN</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="134" name="FSTC" value="134">
          <label for="134">VACACIONES RECREATIVAS</label><br>
    </td><!-- comment -->
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="192" name="FSTC" value="192">
          <label for="192">SOPORTE APP DE LA GENTE</label><br>
    </td>




</tr>
<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="130" name="FSTC" value="130">
          <label for="130">RESERVAS MOMENTOS ESPECIALES</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     
        <input type="radio" id="135" name="FSTC" value="135">
          <label for="135">RESERVAS HOTELERAS</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small;;">                     

    </td>




</tr>


<tr>
    <td colspan="3" style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; padding: 10px ">
        <input type="button" id="btnfinalizar"  value="Finalizar" onclick="actualizar()">                      
    </td>
</tr>
</tbody>
</table>
</html>
