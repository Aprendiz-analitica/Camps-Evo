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
                    idfinal = $('input:radio[name=FinalesRAS]:checked').val()
                    var idcall = $('input:hidden[name=idllamada]').val();
                    if (idfinal == 0 ) {
                            Swal.fire({
                        icon: 'error',
                        title: 'Seleccione un final',
                        showConfirmButton: false,
                        timer: 1500
                        });
                        return false;
                    }
                    switch(idfinal){
                        case "1050":
                            desfinal = "APORTE";
                        break;
                        case "1051":
                            desfinal = "REGISTRO Y AFILIACION";
                        break;
                        case "1052":
                            desfinal = "SUBSIDIO FAMILIAR";
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
                <th colspan="3">FINALES REGISTRO, APORTES Y SUBSIDIO</th>
            </tr>
        </thead>
        <tbody>
            <%
            String idcall = request.getParameter("id");
            %>
            <tr>
                <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
                <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">                    
                      <input type="radio" id="1050" name="FinalesRAS" value="1050">
                      <input type="radio" id="0" name="FinalesRAS" value="0" hidden = "true" checked >
                      <label for="1050">APORTE</label><br>
                </td>
                <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">                    
                      <input type="radio" id="1051" name="FinalesRAS" value="1051">
                      <label for="1051">REGISTRO Y AFILIACION</label><br> 
                </td>
                <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">                    
                      <input type="radio" id="1052" name="FinalesRAS" value="1052">
                      <label for="1052">SUBSIDIO FAMILIAR</label>     
                </td>
            </tr>
             <tr>
                <td colspan="3" style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                    <input type="button" id="btnfinalizar"  value="FINALIZAR" onclick="actualizar()">                      
                </td>
            </tr>
        </tbody>
    </table>
</html>