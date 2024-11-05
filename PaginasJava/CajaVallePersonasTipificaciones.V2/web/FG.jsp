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
                idfinal = $('input:radio[name=FIG]:checked').val()
                var idcall = $('input:hidden[name=idllamada]').val();
                if (idfinal == 0) {
                    alert("Error al actualizar, por favor seleccione un final");
                    return false;
                }
                switch (idfinal) {
                    case "112":
                        desfinal = "Transferencia Agencia de Emple";
                        break;
                    case "119":
                        desfinal = "Transferencia otros";
                        break;
                    case "124":
                        desfinal = "Transferencia mi planilla";
                        break;
                    case "115":
                        desfinal = "EPS";
                        break;
                    case "120":
                        desfinal = "Colgada antes de servicio";
                        break;
                    case "125":
                        desfinal = "Llamada de prueba y otras";
                        break;
                    case "116":
                        desfinal = "PQRS";
                        break;
                    case "121":
                        desfinal = "Transf Servicios Financieros";
                        break;
                    case "126":
                        desfinal = "Direcciones y horarios admin";
                        break;
                    case "117":
                        desfinal = "Otros";
                        break;
                    case "122":
                        desfinal = "Transferencia vivienda";
                        break;
                    case "302":
                        desfinal = "TRANSFERENCIA A EPS";
                        break;
                    case "118":
                        desfinal = "Transferencia Agencia de Viaje";
                        break;
                    case "123":
                        desfinal = "Transferencia educación";
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
                FINALES INFORMACION GENERAL</th>
        </tr>
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">                     
        <input type="radio" id="0" name="FIG" value="0" hidden = "true" checked >  
        <input type="radio" id="112" name="FIG" value="112">
          <label for="112">TRANSFERENCIA AGENCIA DE EMPLEO</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">
        <input type="radio" id="119" name="FIG" value="119">
          <label for="119">TRANSFERENCIA OTROS</label><br> 
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">
        <input type="radio" id="124" name="FIG" value="124">
          <label for="124">TRANSFERENCIA MI PLANILLA</label>     
    </td>
</tr>
<tr>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">                     
        <input type="radio" id="115" name="FIG" value="115">
          <label for="115">EPS</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">
        <input type="radio" id="120" name="FIG" value="120">
          <label for="120">COLGADA ANTES DE SERVICIO</label><br> 
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small" >
        <input type="radio" id="125" name="FIG" value="125">
          <label for="125">LLAMADA DE PRUEBA Y OTRAS</label>     
    </td>

</tr>
<tr>


    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small" >
        <input type="radio" id="116" name="FIG" value="116">
          <label for="116">PQRS</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">                     
        <input type="radio" id="121" name="FIG" value="121">
          <label for="121">TRANS SERVICIOS FINANCIEROS</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">
        <input type="radio" id="126" name="FIG" value="126">
          <label for="126">DIRECCIONES Y HORARIOS ADMIN</label><br> 
    </td>


</tr>
<tr>


    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">
        <input type="radio" id="117" name="FIG" value="117">
          <label for="117">OTROS</label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">                     
        <input type="radio" id="122" name="FIG" value="122">
          <label for="122">TRANSFERENCIA VIVIENDA</label><br>
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">
        <input type="radio" id="302" name="FIG" value="302">
          <label for="302">TRANSFERENCIA A EPS</label><br> 
    </td>




</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">
        <input type="radio" id="118" name="FIG" value="118">
          <label for="118">TRANSFERENCIA AGENCIA DE VIAJE</label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">                     
        <input type="radio" id="123" name="FIG" value="123">
          <label for="123">TRANSFERENCIA EDUACIÓN</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ED7203; height: 50px; font-size: small">                     

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
