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
                idfinal = $('input:radio[name=SinDisponibilidadCitaCirugia]:checked').val()
                var idcall = $('input:hidden[name=idllamada]').val();
                if (idfinal == 0) {
                    alert("Error al actualizar, por favor seleccione un final");
                    return false;
                }
                switch (idfinal) {
                    case "1800":
                        desfinal = "SD CONS CIRUGIA POLIZAS";
                        break;
                    case "1801":
                        desfinal = "SD CARD SD CONS CIRUGIA PARTICULAR";
                        break;
                    case "1802":
                        desfinal = "SD CONS CIRUGIA";
                        break;
                    case "1803":
                        desfinal = "SD CONS CIRUGIA EPS SANITAS";
                        break;
                    case "1804":
                        desfinal = "SD CIRUGIA EPS SURA OTR  EPS";
                        break;
                    case "1805":
                        desfinal = "SD CONS CIRUGIA MP";
                        break;
                    case "1806":
                        desfinal = "SD CONS CIRUGIA PAC";
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
               FINALES SIN DISPONIBILIDAD CITA CIRUGIA</th>
        </tr>
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                       
        <input type="radio" id="0" name="SinDisponibilidadCitaCirugia" value="0" hidden = "true" checked >  
        <input type="radio" id="1800" name="SinDisponibilidadCitaCirugia" value="1800">
          <label for="1800">SD CONS CIRUGIA POLIZAS</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">  
        <input type="radio" id="1801" name="SinDisponibilidadCitaCirugia" value="1801">
          <label for="1801">SD CONS CIRUGIA PARTICULAR</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">  
        <input type="radio" id="1802" name="SinDisponibilidadCitaCirugia" value="1802">
          <label for="1802">SD CONS CIRUGIA</label>     
    </td>

</tr>
<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                       
        <input type="radio" id="1803" name="SinDisponibilidadCitaCirugia" value="1803">
          <label for="1803">SD CONS CIRUGIA EPS SANITAS</label><br>
    </td>

    
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">  
        <input type="radio" id="1804" name="SinDisponibilidadCitaCirugia" value="1804">
          <label for="1804">SD CIRUGIA EPS SURA OTR EPS</label><br> 
    </td>
     <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">  
        <input type="radio" id="1805" name="SinDisponibilidadCitaCirugia" value="1805">
          <label for="1805">SD CONS CIRUGIA MP</label><br> 
    </td>


</tr>
<tr>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">  
        <input type="radio" id="1806" name="SinDisponibilidadCitaCirugia" value="1806">
          <label for="1806">SD CONS CIRUGIA PAC</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">   
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">   
    </td>
</tr>


<tr>
    <td colspan="3" style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #00b85d; height: 50px; ">
        <input type="button" id="btnfinalizar"  value="Finalizar" onclick="actualizar()">                      
    </td>
</tr>
</tbody>
</table>
</html>
