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
                idfinal = $('input:radio[name=Canales_Virtuales_y_recaudo]:checked').val()
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

                    case "145":
                        desfinal = "TARJETA DEBITO";
                        break;
                    case "146":
                        desfinal = "PORTAL TRANSACICONAL";
                        break;
                    case "148":
                        desfinal = "BALOTO";
                        break;
                    case "149":
                        desfinal = "PUNTO RED";
                        break;
                    case "150":
                        desfinal = "472";
                        break;
                    case "183":
                        desfinal = "EFECTY";
                        break;
                    case "184":
                        desfinal = "PAGO PSE";
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
            <th colspan="3">FINALES - CANALES VIRTUALES Y RECAUDO</th>
        </tr>

    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="0" name="Canales_Virtuales_y_recaudo" value="0" hidden = "true" checked > 
        <input type="radio" id="145" name="Canales_Virtuales_y_recaudo" value="145">
          <label for="145">TARJETA DEBITO</label><br> 
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="146" name="Canales_Virtuales_y_recaudo" value="146">
          <label for="146">PORTAL TRANSACCIONAL</label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="148" name="Canales_Virtuales_y_recaudo" value="148">
          <label for="148">BALOTO</label>     
    </td>

</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="149" name="Canales_Virtuales_y_recaudo" value="149">
          <label for="149">PUNTO RED</label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="150" name="Canales_Virtuales_y_recaudo" value="150">
          <label for="150">472</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="183" name="Canales_Virtuales_y_recaudo" value="183">
          <label for="183">EFECTY</label>     
    </td>
</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="184" name="Canales_Virtuales_y_recaudo" value="184">
          <label for="184">PAGO PSE</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
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
