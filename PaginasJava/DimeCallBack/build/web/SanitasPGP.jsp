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
        </script>
        <tr>
            <th colspan="3" style="font-weight: bold; font-family: 'Roboto', sans-serif; color: white; background-color: #00854fe6;font-size: 13px; border : 1px solid #00854fe6; width: 100% ;height: 50px">
                TIPIFICACIONES SANITASPGP</th>
        </tr>
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
        %>
    
                        <tr>
                            <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
                            <td  style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="AsignacionDeCitaSanitasPGP" type="button" value="ASIGNACIÓN DE CITA" onclick="AsignacionDeCitaSanitasPGP()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="ConfirmacionDeCitaSanitasPGP" type="button" value="CONFIRMACIÓN CITA" onclick ="ConfirmacionDeCitaSanitasPGP()" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="ReprogramacionDeCitaSanitasPGP" type="button" value="REPROGRAMACIÓN CITA" onclick="ReprogramacionDeCitaSanitasPGP()"  />
                            </td>                            
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="CancelacionDeCitaSanitasPGP" type="button" value="CANCELACIÓN CITA" onclick="CancelacionDeCitaSanitasPGP()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="SinDisponibilidadSanitasPGP" type="button" value="SIN DISPONIBILIDAD" onclick ="SinDisponibilidadSanitasPGP()" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="InformacionGeneralSanitasPGP" type="button" value="INFORMACION GENERAL" onclick="InformacionGeneralSanitasPGP()"  />
                            </td>                            
                        </tr>



</tbody>
</table>
</html>
