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
            var url = "https://api.fenalcovalle.com";
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
                idfinal = $('input:radio[name=Asignacion_Cita]:checked').val();
                var idcall = $('input:hidden[name=idllamada]').val();

                if (idfinal == 0) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Seleccione un final',
                        showConfirmButton: false,
                        timer: 1500
                    });
                    return false;
                }

                switch (idfinal) {
                    case 510:
                        desfinal = "CITA ECOCARDIOGRAMA TRANSESOFA";
                        break;
                    case 533:
                        desfinal = "CITA PRUEBA DE MESA BASCULANTE";
                        break;
                    case 511:
                        desfinal = "CITA ECOCARDIOGRAMA TRANSTORAC";
                        break;
                    case 517:
                        desfinal = "CITA REPROGRAMACION DE MARCAPA";
                        break;
                    case 546:
                        desfinal = "ESCANOGRAFIA-PACIENTE PREMEDIC";
                        break;
                    case 547:
                        desfinal = "RESONANCIA-PACIENTE PREMEDIC";
                        break;
                    default:
                        desfinal = document.querySelector(`label[for="` + idfinal + `"]`).textContent;
                        break;
                }
                
                if (idcall.trim() === "" || idcall === 0) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Seleccione un final',
                        showConfirmButton: false,
                        timer: 1500
                    });
                    return false;
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
                    Swal.fire({
                        icon: 'success',
                        title: 'Tipificacion actualizada',
                        showConfirmButton: false,
                        timer: 1500
                    });
                    location.reload();
                });
            }

        </script>
        <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #ed7203;font-size: 18px; border : 1px solid #ed7203; width: 100% ;height: 50px">
            <th colspan="3">FINALES - ASIGNACIÓN DE CITA</th>
        </tr>

    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="0" name="Asignacion_Cita" value="0" hidden = "true" checked > 
        <input type="radio" id="500" name="Asignacion_Cita" value="500">
          <label for="500">CITA CARDIOLOGIA</label><br> 
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="501" name="Asignacion_Cita" value="501">
          <label for="501">CITA MEDICINA INTERNA</label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="502" name="Asignacion_Cita" value="502">
          <label for="502">CITA NEUROLOGIA</label>     
    </td>

</tr>

<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="503" name="Asignacion_Cita" value="503">
          <label for="503">CITA NUTRICION</label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="504" name="Asignacion_Cita" value="504">
          <label for="504">CITA DENSITOMETRIA</label>     
    </td> 
    

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="505" name="Asignacion_Cita" value="505">
          <label for="505">CITA ECOGRAFIA</label>     
    </td>
</tr>

<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="506" name="Asignacion_Cita" value="506">
          <label for="506">CITA ESCANOGRAFIA</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="507" name="Asignacion_Cita" value="507">
          <label for="507">CITA MAMOGRAFIA</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="509" name="Asignacion_Cita" value="509">
          <label for="509">CITA RESONANCIA</label>     
    </td>


</tr>

<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="510" name="Asignacion_Cita" value="510">
          <label for="510">CITA ECOCARDIOGRAMA TRANSESOFAGICO</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="511" name="Asignacion_Cita" value="511">
          <label for="511">CITA ECOCARDIOGRAMA TRANSTORACICO</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="512" name="Asignacion_Cita" value="512">
          <label for="512">CITA HOLTER</label>     
    </td>

</tr>

<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="513" name="Asignacion_Cita" value="513">
          <label for="513">CITA MAPA</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="514" name="Asignacion_Cita" value="514">
          <label for="514">CITA PRUEBA DE ESFUERZO</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="515" name="Asignacion_Cita" value="515">
          <label for="515">CITA COLONOSCOPIA</label>     
    </td>
</tr>

<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="516" name="Asignacion_Cita" value="516">
          <label for="516">CITA ENDOSCOPIA</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="517" name="Asignacion_Cita" value="517">
          <label for="517">CITA REPROGRAMACION DE MARCAPASOS</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="518" name="Asignacion_Cita" value="518">
          <label for="518">CITA NEUMOLOGIA</label>     
    </td>
</tr>

<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="519" name="Asignacion_Cita" value="519">
          <label for="519">CITA NEUROCIRUGIA</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="520" name="Asignacion_Cita" value="520">
          <label for="520">CITA NEURORADIOLOGIA</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="522" name="Asignacion_Cita" value="522">
          <label for="522">CITA GASTROENTEROLOGIA</label>     
    </td>
</tr>

<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="524" name="Asignacion_Cita" value="524">
          <label for="524">CITA CIRUGIA VASCULAR</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="525" name="Asignacion_Cita" value="525">
          <label for="525">CITA CIRUGIA CARDIOVASCULAR</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="526" name="Asignacion_Cita" value="526">
          <label for="526">CITA ELECTROFISIOLOGIA</label>     
    </td>
</tr>

<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="530" name="Asignacion_Cita" value="530">
          <label for="530">CITA POLISOMNOGRAFIA</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="531" name="Asignacion_Cita" value="531">
          <label for="531">CITA ESPIROMETRIA</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="532" name="Asignacion_Cita" value="532">
          <label for="532">CITA ECOCARDIOGRAMA DE STRESS</label>     
    </td>
</tr>

<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="533" name="Asignacion_Cita" value="533">
          <label for="533">CITA PRUEBA DE MESA BASCULANTE</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="534" name="Asignacion_Cita" value="534">
          <label for="534">CITA GERIATRÍA</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="535" name="Asignacion_Cita" value="535">
          <label for="535">CITA ENDOCRINOLOGÍA</label>     
    </td>
</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="536" name="Asignacion_Cita" value="536">
          <label for="536">CITA ANOSCOPIA</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="537" name="Asignacion_Cita" value="537">
          <label for="537">CITA SIGMOIDOSCOPIA</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="538" name="Asignacion_Cita" value="538">
          <label for="538">CITA FONOAUDIOLOGÍA</label>     
    </td>
</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="539" name="Asignacion_Cita" value="539">
          <label for="539">CITA FUNCIÓN VESTIBULAR</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="540" name="Asignacion_Cita" value="540">
          <label for="540">CITA LIBERACIÓN CANALICULAR</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="541" name="Asignacion_Cita" value="541">
          <label for="541">CITA TEST IMPULSO CEFÁLICO </label>     
    </td>

</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="542" name="Asignacion_Cita" value="542">
          <label for="542">CITA RAYOS X </label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="543" name="Asignacion_Cita" value="543">
          <label for="543">CITA PLETISMOGRAFÍA </label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="544" name="Asignacion_Cita" value="544">
          <label for="544">CITA DOPPLER </label>     
    </td>
</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="545" name="Asignacion_Cita" value="545">
          <label for="545">CITA NEFROLOGÍA </label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="546" name="Asignacion_Cita" value="546">
          <label for="546">ESCANOGRAFIA-PACIENTE PREMEDIC</label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="547" name="Asignacion_Cita" value="547">
          <label for="547">RESONANCIA-PACIENTE PREMEDIC</label>     
    </td>
</tr>
<tr>
    <td colspan="3"  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
        <input type="button" id="btnfinalizar"  value="FINALIZAR" onclick="actualizar()">                      
    </td>
</tr>
</tbody>
</table>
</html>
