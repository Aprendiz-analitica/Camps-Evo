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
                idfinal = $('input:radio[name=FinalesAudiologia]:checked').val()
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
                    case "226":
                        desfinal = "AUDIOMETRIA";
                        break;
                    case "227":
                        desfinal = "LOGOAUDIOMETRIA";
                        break;
                    case "228":
                        desfinal = "IMPEDANCIOMETRIA";
                        break;
                    case "229":
                        desfinal = "OTOEMESIONES";
                        break;
                    case "230":
                        desfinal = "ACUFENOMETRIA";
                        break;
                    case "231":
                        desfinal = "PRUEBA SIMILACION Y DISIMULACI";
                        break;
                    case "232":
                        desfinal = "PRUEBAS DEL DESORDEN";
                        break;
                    case "233":
                        desfinal = "SCRININ AUDITIVO";
                        break;

                }
                $('input:button[id=btnfinalizar]').prop('disabled', true);
                var updatefinal = {
                    "url": url + "/webservicefenalco/cbolivarbgta/actualizarpqrs",
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
            <th colspan="3">FINALES AUDIOLOGIA</th>
        </tr>

    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="0" name="FinalesAudiologia" value="0" hidden = "true" checked >  
        <input type="radio" id="226" name="FinalesAudiologia" value="226">
          <label for="226">AUDIOMETRIA</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="227" name="FinalesAudiologia" value="227">
          <label for="227">LOGOAUDIOMETRIA</label><br> 
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="230" name="FinalesAudiologia" value="230">
          <label for="230">ACUFENOMETRIA</label><br> 
    </td>
</tr>
<tr>

</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="231" name="FinalesAudiologia" value="231">
          <label for="231">PRUEBA SIMILACION Y DISIMULACION</label><br> 
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="232" name="FinalesAudiologia" value="232">
          <label for="232">PRUEBAS DE DESORDEN</label><br> 
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="233" name="FinalesAudiologia" value="233">
          <label for="233">SCRININ AUDITIVO</label><br> 
    </td>

</tr>
<tr>


<td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="229" name="FinalesAudiologia" value="229">
      <label for="229">OTOEMESIONES</label><br> 
</td>


<td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="228" name="FinalesAudiologia" value="228">
      <label for="228">IMPEDANCIOMETRIA</label><br> 
</td>
<td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
    
</td>

</tr>
<tr>
    <td colspan="3"  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
        <input type="button" id="btnfinalizar"  value="FINALIZAR" onclick="actualizar()">                      
    </td>
</tr>
</tbody>
</table>
</html>
