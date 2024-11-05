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
                idfinal = $('input:radio[name=InformacionGeneral]:checked').val()
                var idcall = $('input:hidden[name=idllamada]').val();
                if (idfinal == 0) {
                    alert("Error al actualizar, por favor seleccione un final");
                    return false;
                }
                switch (idfinal) {
                    case "1000":
                        desfinal = "DIRECCIONAMIENTO ÁREAS ADMINIS";
                        break;
                    case "1001":
                        desfinal = "DIRECCION CLINICA";
                        break;
                    case "1002":
                        desfinal = "HORARIOS DE ATENCION";
                        break;
                    case "1003":
                        desfinal = "DIRECCIONAMIENTO HOSPITALIZACI";
                        break;
                    case "1004":
                        desfinal = "DIRTO LABORATORIO GENETICA";
                        break;
                    case "1005":
                        desfinal = "DIRECCIONAMIENTO UCIN";
                        break;
                    case "1006":
                        desfinal = "DIRECCIONAMIENTO UCI";
                        break;
                    case "1007":
                        desfinal = "DIRECCIONAMIENTO URGENCIAS";
                        break;
                    case "1008":
                        desfinal = "DIRTO CITAS CORREO ELECTRONICO";
                        break;
                    case "1009":
                        desfinal = "DIRECCIONAMIENTO ASU";
                        break;
                    case "1010":
                        desfinal = "DIRECCIONAMIENTO RESULTADOS";
                        break;
                    case "1011":
                        desfinal = "DIRECCIONAMIENTO LABORATORIO";
                        break;
                    case "1012":
                        desfinal = "DIRECCIONAMIENTO ANGEOGRAFIA  ";
                        break;
                    case "1013":
                        desfinal = "DIRECCIONAMIENTO CONSULTA EXTE";
                        break;
                    case "1014":
                        desfinal = "DIRTO REFERENCIA Y CONTRAREFER";
                        break;
                    case "1015":
                        desfinal = "INFORMACION DOCUMENTOS";
                        break;
                    case "1016":
                        desfinal = "DIRECCIONAMIENTO CARDIOLOGIA";
                        break;
                    case "1017":
                        desfinal = "DIRECCIONA PROC CARDIACOS";
                        break;
                    case "1018":
                        desfinal = "DIRECCIONAMIENTO CIRUGIA";
                        break;
                    case "1019":
                        desfinal = " DIRECCIONAPROC NEUMOLO";
                        break;
                    case "1020":
                        desfinal = "DIRECCIONAMIENTO DIAGNOSTICO";
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
                FINALES INFORMACION GENERAL</th>
        </tr>
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                    
        <input type="radio" id="0" name="InformacionGeneral" value="0" hidden = "true" checked >  
        <input type="radio" id="1000" name="InformacionGeneral" value="1000">
          <label for="1000">DIRECCIONAMIENTO ÁREAS ADMINIS</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1001" name="InformacionGeneral" value="1001">
          <label for="1001">DIRECCION CLINICA</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1002" name="InformacionGeneral" value="1002">
          <label for="1002">HORARIOS DE ATENCION</label>     
    </td>
</tr>
<tr>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                    
        <input type="radio" id="1003" name="InformacionGeneral" value="1003">
          <label for="1003">DIRECCIONAMIENTO HOSPITALIZACI</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1004" name="InformacionGeneral" value="1004">
          <label for="1004">DIRTO LABORATORIO GENETICA</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1005" name="InformacionGeneral" value="1005">
          <label for="1005">DIRECCIONAMIENTO UCIN</label>     
    </td>

</tr>
<tr>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                    
        <input type="radio" id="1006" name="InformacionGeneral" value="1006">
          <label for="1006">DIRECCIONAMIENTO UCI</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1007" name="InformacionGeneral" value="1007">
          <label for="1007">DIRECCIONAMIENTO URGENCIAS</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1008" name="InformacionGeneral" value="1008">
          <label for="1008">DIRTO CITAS CORREO ELECTRONICO</label>     
    </td>

</tr>
<tr>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                    
        <input type="radio" id="1009" name="InformacionGeneral" value="1009">
          <label for="1009">DIRECCIONAMIENTO ASU</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1010" name="InformacionGeneral" value="1010">
          <label for="1010">DIRECCIONAMIENTO RESULTADOS</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1011" name="InformacionGeneral" value="1011">
          <label for="1011">DIRECCIONAMIENTO LABORATORIO</label>     
    </td>

</tr>
<tr>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                    
        <input type="radio" id="1012" name="InformacionGeneral" value="1012">
          <label for="1012">DIRECCIONAMIENTO ANGEOGRAFIA  </label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1013" name="InformacionGeneral" value="1013">
          <label for="1013">DIRECCIONAMIENTO CONSULTA EXTE</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1014" name="InformacionGeneral" value="1014">
          <label for="1014">DIRTO REFERENCIA Y CONTRAREFER</label>     
    </td>

</tr>
<tr>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                    
        <input type="radio" id="1015" name="InformacionGeneral" value="1015">
          <label for="1015">INFORMACION DOCUMENTOS</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1016" name="InformacionGeneral" value="1016">
          <label for="1016">DIRECCIONAMIENTO CARDIOLOGIA</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1017" name="InformacionGeneral" value="1017">
          <label for="1017">DIRECCIONA PROC CARDIACO</label>     
    </td>

</tr>

<tr>

    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">                    
        <input type="radio" id="1018" name="InformacionGeneral" value="1018">
          <label for="1018">DIRECCIONAMIENTO CIRUGIA</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1019" name="InformacionGeneral" value="1019">
          <label for="1019">DIRECCIONAPROC NEUMOLO</label><br> 
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;"> 
        <input type="radio" id="1020" name="InformacionGeneral" value="1020">
          <label for="1020">DIRECCIONAMIENTO DIAGNOSTICO</label>     
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
