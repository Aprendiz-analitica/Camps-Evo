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
                idfinal = $('input:radio[name=InformacionGeneralSanitasPGP]:checked').val()
                var idcall = $('input:hidden[name=idllamada]').val();
                if (idfinal == 0) {
                    alert("Error al actualizar, por favor seleccione un final");
                    return false;
                }
                switch (idfinal) {
                        case "2300":
                        desfinal = "DIRECCIONAMIENTO CORREO";
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
            <th colspan="4" style="font-weight: bold; font-family: 'Roboto', sans-serif; color: white; background-color: #00854fe6;font-size: 16px; border : 1px solid #00854fe6; width: 100% ;height: 50px">
            FINALES INFORMACION GENERAL SANITASPGP</th>
        </tr>
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px">                     
        <input type="radio" id="0" name="InformacionGeneralSanitasPGP" value="0" hidden = "true" checked >  
        <input type="radio" id="2300" name="InformacionGeneralSanitasPGP" value="2300">
          <label for="2300">DIRECCIONAMIENTO CORREO</label><br>
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">
       
    </td>
    <td style="text-align: left; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px; font-size: 11px;">    
    </td>
</tr>
<tr>
    <td colspan="3" style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px; width: 255.66px;  ">
        <input type="button" id="btnfinalizar"  value="Finalizar" onclick="actualizar()">                      
    </td>
</tr>
</tbody>