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
                idfinal = $('input:radio[name=AsignacionDeCita]:checked').val()
                var idcall = $('input:hidden[name=idllamada]').val();
                if (idfinal == 0) {
                    alert("Error al actualizar, por favor seleccione un final");
                    return false;
                }
                switch (idfinal) {
                    case "500":
                        desfinal = "CITA CARDIOLOGIA";
                        break;
                    case "501":
                        desfinal = "CITA MEDICINA INTERNA";
                        break;
                    case "502":
                        desfinal = "CITA NEUROLOGIA";
                        break;
                    case "503":
                        desfinal = "CITA NUTRICION";
                        break;
                    case "504":
                        desfinal = "CITA DENSITOMETRIA";
                        break;
                    case "505":
                        desfinal = "CITA ECOGRAFIA";
                        break;
                    case "506":
                        desfinal = "CITA ESCANOGRAFIA";
                        break;
                    case "507":
                        desfinal = "CITA MAMOGRAFIA";
                        break;
                    case "508":
                        desfinal = "CITA RADIOGRAFIA";
                        break;
                    case "509":
                        desfinal = "CITA RESONANCIA";
                        break;
                    case "510":
                        desfinal = "CITA ECOCARDIOGRAMA TRANSESOFA";
                        break;
                    case "511":
                        desfinal = "CITA ECOCARDIOGRAMA TRANSTORAX";
                        break;
                    case "512":
                        desfinal = "CITA HOLTER";
                        break;
                    case "513":
                        desfinal = "CITA MAPA";
                        break;
                    case "514":
                        desfinal = "CITA PRUEBA DE ESFUERZO";
                        break;
                    case "515":
                        desfinal = "CITA COLONOSCOPIA";
                        break;
                    case "516":
                        desfinal = "CITA ENDOSCOPIA";
                        break;
                    case "517":
                        desfinal = "REPROGRAMACION DE MARCAPASOS";
                        break;
                    case "518":
                        desfinal = "NEUMOLOGIA";
                        break;
                    case "519":
                        desfinal = "NEUROCIRUGIA";
                        break;
                    case "520":
                        desfinal = "NEURORADIOLOGIA";
                        break;
                    case "521":
                        desfinal = "DATOS INCOMPLETOS";
                        break;
                    case "522":
                        desfinal = "ASIGNACION CITA GASTROENTEROLO";
                        break;
                    case "523":
                        desfinal = "INFORMACION DOCUMENTOS";
                        break;
                    case "524":
                        desfinal = "CITA CIRUGIA VASCULAR";
                        break;

                    case "525":
                        desfinal = "CITA CIRUGIA CARDIOVASCULAR";
                        break;
                    case "526":
                        desfinal = "CITA ELECTROFISIOLOGÍA";
                        break;
                    case "527":
                        desfinal = "CITA DOPPLER";
                        break;
                    case "528":
                        desfinal = "CITA PLETISMOGRAFÍA";
                        break;
                    case "529":
                        desfinal = "CITA ANGIOTACT";
                        break;
                    case "530":
                        desfinal = "CITA POLISOMNOFRAFÍA";

                        break;
                    case "531":
                        desfinal = "CITA ESPIROMETRÍA";
                        break;
                    case "532":
                        desfinal = "ECOCARDIOGRAMA DE STRESS";
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
            <th colspan="3" style="font-weight: bold; font-family: 'Roboto', sans-serif; color: white; background-color: #00854fe6;font-size: 13px; border : 1px solid #00854fe6; width: 100% ;height: 50px">
                FINALES ASIGNACION DE CITA</th>
        </tr>
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px">                     
        <input type="radio" id="0" name="AsignacionDeCita" value="0" hidden = "true" checked >  
        <input type="radio" id="500" name="AsignacionDeCita" value="500">
          <label for="500">CITA CARDIOLOGIA</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="501" name="AsignacionDeCita" value="501">
          <label for="501">CITA MEDICINA INTERNA</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="502" name="AsignacionDeCita" value="502">
          <label for="502">CITA NEUROLOGIA</label>     
    </td>

</tr>
<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="503" name="AsignacionDeCita" value="503">
          <label for="503">CITA NUTRICION</label><br>
    </td>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="504" name="AsignacionDeCita" value="504">
          <label for="504">CITA DENSITOMETRIA</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;" >
        <input type="radio" id="505" name="AsignacionDeCita" value="505">
          <label for="505">CITA ECOGRAFIA</label>     
    </td>
    

</tr>
<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="506" name="AsignacionDeCita" value="506">
          <label for="506">CITA ESCANOGRAFIA</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="507" name="AsignacionDeCita" value="507">
          <label for="507">CITA MAMOGRAFIA</label><br> 
    </td>


    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="508" name="AsignacionDeCita" value="508">
          <label for="508">CITA RADIOGRAFIA</label>     
    </td>
    

</tr>

<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="509" name="AsignacionDeCita" value="509">
          <label for="509">CITA RESONANCIA</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="510" name="AsignacionDeCita" value="510">
          <label for="510">CITA ECOCARDIOGRAMA TRANSESOFA</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="511" name="AsignacionDeCita" value="511">
          <label for="511">CITA ECOCARDIOGRAMA TRANSTORAX</label>     
    </td>

    

</tr>
<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="512" name="AsignacionDeCita" value="512">
          <label for="512">CITA HOLTER</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="513" name="AsignacionDeCita" value="513">
          <label for="513">CITA MAPA</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px; ">
        <input type="radio" id="514" name="AsignacionDeCita" value="514">
          <label for="514">CITA PRUEBA DE ESFUERZO</label>     
    </td>

</tr>
<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="515" name="AsignacionDeCita" value="515">
          <label for="515">CITA COLONOSCOPIA</label><br>
    </td>


    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="516" name="AsignacionDeCita" value="516">
          <label for="516">CITA ENDOSCOPIA</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="517" name="AsignacionDeCita" value="517">
          <label for="517">REPROGRAMACION DE MARCAPASOS</label>     
    </td>
   

</tr>

<tr>
     <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="518" name="AsignacionDeCita" value="518">
          <label for="518">NEUMOLOGIA</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="519" name="AsignacionDeCita" value="519">
          <label for="519">NEUROCIRUGIA</label><br> 
    </td>
        <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="520" name="AsignacionDeCita" value="520">
          <label for="520">NEURORADIOLOGIA</label><br>
    </td>
</tr>

<tr>    


    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="521" name="AsignacionDeCita" value="521">
          <label for="521">DATOS INCOMPLETOS</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="522" name="AsignacionDeCita" value="522">
          <label for="522">ASIGNACION CITA GASTROENTEROLO</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="524" name="AsignacionDeCita" value="524">
          <label for="524">CITA CIRUGIA VASCULAR</label>     
    </td>


</tr>
<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="525" name="AsignacionDeCita" value="525">
          <label for="525">CITA CIRUGIA CARDIOVASCULAR</label><br>
    </td>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="526" name="AsignacionDeCita" value="526">
          <label for="526">CITA ELECTROFISIOLOGÍA</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="527" name="AsignacionDeCita" value="527">
          <label for="527">CITA DOPPLER</label>     
    </td>


</tr>
<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="528" name="AsignacionDeCita" value="528">
          <label for="528">CITA PLETISMOGRAFÍA</label><br>
    </td>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="529" name="AsignacionDeCita" value="529">
          <label for="529">CITA ANGIOTACT</label><br> 
    </td>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="530" name="AsignacionDeCita" value="530">
          <label for="530">CITA POLISOMNOFRAFÍA</label>     
    </td>

    

</tr>
<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="531" name="AsignacionDeCita" value="531">
          <label for="531">CITA ESPIROMETRÍA</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="532" name="AsignacionDeCita" value="532">
          <label for="532">ECOCARDIOGRAMA DE STRESS</label><br> 
    </td>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="523" name="AsignacionDeCita" value="523">
          <label for="523">INFORMACION DOCUMENTOS</label><br> 
    </td>

</tr>

<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                     
        <input type="radio" id="543" name="AsignacionDeCita" value="543">
          <label for="543">ESCANOGRAFIA-PACIENTE PREMEDIC</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
        <input type="radio" id="544" name="AsignacionDeCita" value="544">
          <label for="544">RESONANCIA-PACIENTE PREMEDIC</label><br> 
    </td>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">

    </td>

</tr>
<tr>
    <td colspan="3" style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; ">
        <input type="button" id="btnfinalizar"  value="Finalizar" onclick="actualizar()">                      
    </td>
</tr>
</tbody>
</table>
</html>
