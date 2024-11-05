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
                idfinal = $('input:radio[name=Ayuda_Diagnosticas_Oftalmologia]:checked').val()
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

                    case "1000":
                        desfinal = "TOMOGRAFIA OPTICA OCT SEGMENTO";
                        break;
                    case "1001":
                        desfinal = "ANGIOTOMOGRAFIA";
                        break;
                    case "1002":
                        desfinal = "BIOMETRIA";
                        break;
                    case "1003":
                        desfinal = "TOPOGRAFIA";
                        break;
                    case "1004":
                        desfinal = "PAQUIMETRIA";
                        break;
                    case "1005":
                        desfinal = "RECUENTO DE CELULAS ENDOTELIAL";
                        break;
                    case "1006":
                        desfinal = "ANGIOGRAFIA DE SEGMENTO POSTER";
                        break;
                    case "1007":
                        desfinal = "CAMPO VISUAL";
                        break;
                    case "1008":
                        desfinal = "POTENCIAL VISUAL PVE";
                        break;   
                    case "1009":
                        desfinal = "ELECTRORETINOGRAMA";
                        break;
                    case "1010":
                        desfinal = "ECOGRAFIA";
                        break;
                    case "1011":
                        desfinal = "FOTOGRAFIA DE SEGMENTO POSTERIOR";
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
            <th colspan="3">FINALES - AYUDA DIAGNOSTICAS OFTALMOLOGIA</th>
        </tr>

    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
        <tr>
    <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="0" name="Ayuda_Diagnosticas_Oftalmologia" value="0" hidden = "true" checked > 
        <input type="radio" id="1000" name="Ayuda_Diagnosticas_Oftalmologia" value="1000">
          <label for="1000">TOMOGRAFIA OPTICA OCT SEGMENTO</label><br> 
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1001" name="Ayuda_Diagnosticas_Oftalmologia" value="1001">
          <label for="1001">ANGIOTOMOGRAFIA</label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1002" name="Ayuda_Diagnosticas_Oftalmologia" value="1002">
          <label for="1002">BIOMETRIA</label>     
    </td>

</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1003" name="Ayuda_Diagnosticas_Oftalmologia" value="1003">
          <label for="1003">TOPOGRAFIA</label>     
    </td>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1004" name="Ayuda_Diagnosticas_Oftalmologia" value="1004">
          <label for="1004">PAQUIMETRIA</label>     
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1005" name="Ayuda_Diagnosticas_Oftalmologia" value="1005">
          <label for="1005">RECUENTO DE CELULAS ENDOTELIAL</label>     
    </td>
</tr>
<tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">

        <input type="radio" id="1006" name="Ayuda_Diagnosticas_Oftalmologia" value="1006">
          <label for="1006">ANGIOGRAFIA DE SEGMENTO POSTER</label><br>
    </td>

    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1007" name="Ayuda_Diagnosticas_Oftalmologia" value="1007">
          <label for="1007">CAMPO VISUAL</label>     
    </td>
    
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1008" name="Ayuda_Diagnosticas_Oftalmologia" value="1008">
          <label for="1008">POTENCIAL VISUAL PVE</label>     
    </td> 
</tr>
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1009" name="Ayuda_Diagnosticas_Oftalmologia" value="1009">
          <label for="1009">ELECTRORETINOGRAMA</label>     
    </td> 
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1010" name="Ayuda_Diagnosticas_Oftalmologia" value="1010">
          <label for="1010">ECOGRAFIA</label>     
    </td> 
    <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px">
        <input type="radio" id="1011" name="Ayuda_Diagnosticas_Oftalmologia" value="1011">
          <label for="1011">FOTOGRAFIA DE SEGMENTO POSTERIOR</label>     
    </td> 
<tr>
    <td colspan="3"  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
        <input type="button" id="btnfinalizar"  value="FINALIZAR" onclick="actualizar()">                      
    </td>
</tr>
</tbody>
</table>
</html>
