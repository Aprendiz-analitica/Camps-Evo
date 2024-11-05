<%-- 
    Document   : Indice
    Created on : 15/07/2019, 11:47:10 AM
    Author     : jvaldes
--%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>HEMATO ONCOLOGOS IN</title>
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
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="css/Listas.css" rel="stylesheet" type="text/css">
    <%

        String idagente = request.getParameter("codigoagente");
        String desfinal = request.getParameter("desfinal");

    %>
    <script>
        var idllamada;
        var token;
        var url = "https://api.fenalcovalle.com";
        $(document).ready(function () {
            var dropdownMenu = $("#dropdownMenuButtonSUBCont");
            var dropdownMenu2 = $("#dropdownMenuButtonSUB2Cont");
            dropdownMenu.css({
                "display": "none"
            });
            dropdownMenu2.css({
                "display": "none"
            });

            $('#dataTable').DataTable({
                "language": {
                    "decimal": "",
                    "emptyTable": "No hay información",
                    "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",
                    "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
                    "infoFiltered": "(Filtrado de _MAX_ total entradas)",
                    "infoPostFix": "",
                    "thousands": ",",
                    "lengthMenu": "Mostrar _MENU_ Entradas",
                    "loadingRecords": "Cargando...",
                    "processing": "Procesando...",
                    "search": "Buscar:",
                    "zeroRecords": "Sin resultados encontrados",
                    "paginate": {
                        "first": "Primero",
                        "last": "Ultimo",
                        "next": "Siguiente",
                        "previous": "Anterior"
                    }
                },
                dom: 'Bfrtip',
                buttons: []
            });

            var temp;
            var settings = {
                "url": url + "/auth/login",
                "method": "POST",
                "timeout": 0,
                "headers": {
                    "username": "UsrCBolivarBgta",
                    "password": "*CB0L1b4RB0Gt4-O22."
                }
            };
            $.ajax(settings).done(function (response) {
                token = response.token;


            });

        });

        function editar(idtransaccion) {
            idllamada = idtransaccion;
            //  console.log(afiliacion);
            $('#ModalFinales').modal('show');
        }

        function inicio() {
            window.location.href = "index.html";

        }

        function Sub_tipificar(value) {
            // Parseamos el valor a entero para asegurarnos de que es un número
            var sql = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = \n\
            (SELECT CASE\n\
             WHEN (SELECT idCampanya FROM tbHistoFTransacciones WHERE idTransaccion = "+idllamada+") IS NOT NULL\n\
             THEN (SELECT idCampanya FROM tbHistoFTransacciones WHERE idTransaccion = "+idllamada+")\n\
             WHEN (SELECT idCampanya FROM TRANSACCION WHERE idTransaccion = "+idllamada+") IS NOT NULL \n\
             THEN (SELECT idCampanya FROM TRANSACCION WHERE idTransaccion = "+idllamada+")\n\
             ELSE NULL\n\
             END AS Resultado) ";
            var num = parseInt(value);
            var Consultar = false;

            var dropdownMenu = $("#dropdownMenuButtonSUBCont");
            dropdownMenu.css({"display": "block"});
            dropdownMenu.empty();
            dropdownMenu.append("<option value=0 class=dropdown-item BtnTipificacionPrincipal>SELECCIONE</option>");

            var dropdownMenu2 = $("#dropdownMenuButtonSUB2Cont");
            dropdownMenu2.css({"display": "none"});
            dropdownMenu2.empty();
            dropdownMenu2.append("<option value=0 class=dropdown-item BtnTipificacionPrincipal>SELECCIONE</option>");

            switch (num) {
                case 1:
                    dropdownMenu.append("<option value=1 class=dropdown-item BtnTipificacionPrincipal>ONCOLOGIA</option>");
                    dropdownMenu.append("<option value=2 class=dropdown-item BtnTipificacionPrincipal>HEMATOLOGIA</option>");
                    dropdownMenu.append("<option value=3 class=dropdown-item BtnTipificacionPrincipal>DERMATOLOGIA ONCO</option>");
                    dropdownMenu.append("<option value=4 class=dropdown-item BtnTipificacionPrincipal>UROLOGIA ONCO</option>");
                    dropdownMenu.append("<option value=5 class=dropdown-item BtnTipificacionPrincipal>CIRUGIA ONCO(MAMA)</option>");
                    dropdownMenu.append("<option value=6 class=dropdown-item BtnTipificacionPrincipal>CIRUGIA ONCO(GAST)</option>");
                    dropdownMenu.append("<option value=7 class=dropdown-item BtnTipificacionPrincipal>CIRUGIA PLASTICA</option>");
                    dropdownMenu.append("<option value=8 class=dropdown-item BtnTipificacionPrincipal>COLOPROCTOLOGIA</option>");
                    dropdownMenu.append("<option value=9 class=dropdown-item BtnTipificacionPrincipal>GINECOLOGIA ONCO</option>");
                    dropdownMenu.append("<option value=10 class=dropdown-item BtnTipificacionPrincipal>MASTOLOGIA</option>");
                    dropdownMenu.append("<option value=11 class=dropdown-item BtnTipificacionPrincipal>CABEZA Y CUELLO</option>");
                    dropdownMenu.append("<option value=12 class=dropdown-item BtnTipificacionPrincipal>TEJIDOS BLANDOS</option>");
                    dropdownMenu.append("<option value=13 class=dropdown-item BtnTipificacionPrincipal>HEMATOONCOLÓGIA</option>");
                    dropdownMenu.append("<option value=14 class=dropdown-item BtnTipificacionPrincipal>ORTOPEDIA Y TRAUMA</option>");
                    dropdownMenu.append("<option value=15 class=dropdown-item BtnTipificacionPrincipal>PSICOLOGIA</option>");
                    dropdownMenu.append("<option value=16 class=dropdown-item BtnTipificacionPrincipal>CIRUGIA DE TORAX</option>");
                    dropdownMenu.append("<option value=17 class=dropdown-item BtnTipificacionPrincipal>CIRUGÍA GASTROINTE</option>");
                    dropdownMenu.append("<option value=18 class=dropdown-item BtnTipificacionPrincipal>DOLOR Y CUIDADO PALIATIVOS</option>");
                    dropdownMenu.append("<option value=19 class=dropdown-item BtnTipificacionPrincipal>NUTRICIÓN</option>");
                    dropdownMenu.append("<option value=20 class=dropdown-item BtnTipificacionPrincipal>TRABAJO SOCIAL</option>");
                    break;
                case 2:
                    dropdownMenu.append("<option value=21 class=dropdown-item BtnTipificacionPrincipal>ONCOLOGIA</option>");
                    dropdownMenu.append("<option value=22 class=dropdown-item BtnTipificacionPrincipal>HEMATOLOGIA</option>");
                    dropdownMenu.append("<option value=23 class=dropdown-item BtnTipificacionPrincipal>DERMATOLOGIA ONCO</option>");
                    dropdownMenu.append("<option value=24 class=dropdown-item BtnTipificacionPrincipal>UROLOGIA ONCO</option>");
                    dropdownMenu.append("<option value=25 class=dropdown-item BtnTipificacionPrincipal>CIRUGIA ONCO(MAMA)</option>");
                    dropdownMenu.append("<option value=26 class=dropdown-item BtnTipificacionPrincipal>CIRUGIA ONCO(GAST)</option>");
                    dropdownMenu.append("<option value=27 class=dropdown-item BtnTipificacionPrincipal>CIRUGIA PLASTICA</option>");
                    dropdownMenu.append("<option value=28 class=dropdown-item BtnTipificacionPrincipal>COLOPROCTOLOGIA</option>");
                    dropdownMenu.append("<option value=29 class=dropdown-item BtnTipificacionPrincipal>GINECOLOGIA ONCO</option>");
                    dropdownMenu.append("<option value=30 class=dropdown-item BtnTipificacionPrincipal>MASTOLOGIA</option>");
                    dropdownMenu.append("<option value=31 class=dropdown-item BtnTipificacionPrincipal>CABEZA Y CUELLO</option>");
                    dropdownMenu.append("<option value=32 class=dropdown-item BtnTipificacionPrincipal>TEJIDOS BLANDOS</option>");
                    dropdownMenu.append("<option value=33 class=dropdown-item BtnTipificacionPrincipal>HEMATOONCOLÓGIA</option>");
                    dropdownMenu.append("<option value=34 class=dropdown-item BtnTipificacionPrincipal>ORTOPEDIA Y TRAUMA</option>");
                    dropdownMenu.append("<option value=35 class=dropdown-item BtnTipificacionPrincipal>PSICOLOGIA</option>");
                    dropdownMenu.append("<option value=36 class=dropdown-item BtnTipificacionPrincipal>CIRUGIA DE TORAX</option>");
                    dropdownMenu.append("<option value=37 class=dropdown-item BtnTipificacionPrincipal>CIRUGÍA GASTROINTE</option>");
                    dropdownMenu.append("<option value=38 class=dropdown-item BtnTipificacionPrincipal>DOLOR Y CUIDADO PALIATIVOS</option>");
                    dropdownMenu.append("<option value=39 class=dropdown-item BtnTipificacionPrincipal>NUTRICIÓN</option>");
                    dropdownMenu.append("<option value=40 class=dropdown-item BtnTipificacionPrincipal>TRABAJO SOCIAL</option>");
                    break;
                case 3:
                    dropdownMenu.append("<option value=41 class=dropdown-item BtnTipificacionPrincipal>TOMOGRAFIA</option>");
                    dropdownMenu.append("<option value=42 class=dropdown-item BtnTipificacionPrincipal>RADIOGRAFIA</option>");
                    dropdownMenu.append("<option value=43 class=dropdown-item BtnTipificacionPrincipal>ECOGRAFIAS</option>");
                    dropdownMenu.append("<option value=44 class=dropdown-item BtnTipificacionPrincipal>DOPPLER</option>");
                    dropdownMenu.append("<option value=45 class=dropdown-item BtnTipificacionPrincipal>BIOPSIAS</option>");
                    break;
                case 4:
                    sql += "AND IDFINAL BETWEEN 5925 AND 5931";
                    Consultar = true;
                    break;
                case 5:
                    dropdownMenu.append("<option value=46 class=dropdown-item BtnTipificacionPrincipal>ATENCION AL CLIENTE</option>");
                    sql += "AND IDFINAL BETWEEN 6010 AND 6019";
                    Consultar = true;
                    break;
                case 6:
                    sql += "AND IDFINAL BETWEEN 6060 AND 6064";
                    Consultar = true;
                    break;
                default:
                    Consultar = false;
                    dropdownMenu.css({"display": "none"});
                    break;
            }

            if (Consultar) {
                var inputValue = sql;
                console.log("SQL: " + sql);
                $.ajax({
                    type: "POST",
                    url: "consulta_SubTip.jsp",
                    data: {sql: inputValue}, // Envía el valor de 'inputValue' como parámetro 'sql'
                    dataType: "json", // Especifica que esperas recibir JSON del servidor
                    success: function (response) {
                        console.log("Response from server:", response);
                        // Vacía el contenido actual del dropdown-menu
                        var dropdownMenu = $("#dropdownMenuButtonSUBCont");

                        $.each(response, function (index, item) {
                            var option = $("<option>").addClass("dropdown-item BtnTipificacionPrincipal dropdownMenuButtonSUBCont").text(item.descripcion).val(parseInt(item.idfinal));
                            dropdownMenu.append(option);
                        });
                    },
                    error: function (xhr, status, error) {
                        console.error("Error:", error);
                    }
                });
            }
        }

        function Sub_tipificar2(value) {
            var Consultar = false;
            // Parseamos el valor a entero para asegurarnos de que es un número
            var num = parseInt(value);
            // Construimos la consulta SQL
            
            var sql = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = \n\
            (SELECT CASE\n\
             WHEN (SELECT idCampanya FROM tbHistoFTransacciones WHERE idTransaccion = "+idllamada+") IS NOT NULL\n\
             THEN (SELECT idCampanya FROM tbHistoFTransacciones WHERE idTransaccion = "+idllamada+")\n\
             WHEN (SELECT idCampanya FROM TRANSACCION WHERE idTransaccion = "+idllamada+") IS NOT NULL \n\
             THEN (SELECT idCampanya FROM TRANSACCION WHERE idTransaccion = "+idllamada+")\n\
             ELSE NULL\n\
             END AS Resultado) ";
        
            if (num > 0 && num < 47) {
                Consultar = true;
            } else {
                Consultar = false;
            }
            switch (num) {
//CITAS PRIMERA VEZ                
                case 1: //ONCOLOGIA
                    sql += "AND IDFINAL BETWEEN 2200 AND 2205";
                    break;
                case 2: // HEMATOLOGIA 
                    sql += "AND IDFINAL BETWEEN 2255 AND 2260";
                    break;
                case 3: // DERMATOLOGIA ONCO 
                    sql += "AND IDFINAL BETWEEN 2310 AND 2315";
                    break;
                case 4: // UROLOGIA ONCO 
                    sql += "AND IDFINAL BETWEEN 2375 AND 2380";
                    break;
                case 5: // CIRUGIA ONCO(MAMA) 
                    sql += "AND IDFINAL BETWEEN 2430 AND 2435";
                    break;
                case 6: // CIRUGIA ONCO(GAST) 
                    sql += "AND IDFINAL BETWEEN 2485 AND 2490";
                    break;
                case 7: // CIRUGIA PLASTICA 
                    sql += "AND IDFINAL BETWEEN 2540 AND 2545";
                    break;
                case 8: // COLOPROCTOLOGIA 
                    sql += "AND IDFINAL BETWEEN 2595 AND 2600";
                    break;
                case 9: // GINECOLOGIA ONCO 
                    sql += "AND IDFINAL BETWEEN 2650 AND 2655";
                    break;
                case 10: // MASTOLOGIA 
                    sql += "AND IDFINAL BETWEEN 2705 AND 2710";
                    break;
                case 11: // CABEZA Y CUELLO 
                    sql += "AND IDFINAL BETWEEN 2760 AND 2765";
                    break;
                case 12: // TEJIDOS BLANDOS 
                    sql += "AND IDFINAL BETWEEN 2815 AND 2820";
                    break;
                case 13: // HEMATOONCOLÓGIA 
                    sql += "AND IDFINAL BETWEEN 3050 AND 3055";
                    break;
                case 14: // ORTOPEDIA Y TRAUMA 
                    sql += "AND IDFINAL BETWEEN 3105 AND 3110";
                    break;
                case 15: // PSICOLOGIA 
                    sql += "AND IDFINAL BETWEEN 3160 AND 3165";
                    break;
                case 16: // CIRUGIA DE TORAX 
                    sql += "AND IDFINAL BETWEEN 3215 AND 3220";
                    break;
                case 17: // CIRUGÍA GASTROINTE 
                    sql += "AND IDFINAL BETWEEN 3270 AND 3275";
                    break;
                case 18: // DOLOR Y CUIDADO PALIATIVOS 
                    sql += "AND IDFINAL BETWEEN 3325 AND 3330";
                    break;
                case 19: // NUTRICIÓN 
                    sql += "AND IDFINAL BETWEEN 3370 AND 3375";
                    break;
                case 20: // TRABAJO SOCIAL 
                    sql += "AND IDFINAL BETWEEN 3435 AND 3440";
                    break;
//CITAS DE CONTROL
                case 21: //ONCOLOGIA
                    sql += "AND IDFINAL BETWEEN 3490 AND 3495";
                    break;
                case 22: // HEMATOLOGIA 
                    sql += "AND IDFINAL BETWEEN 3545 AND 3550";
                    break;
                case 23: // DERMATOLOGIA ONCO 
                    sql += "AND IDFINAL BETWEEN 4610 AND 4615";
                    break;
                case 24: // UROLOGIA ONCO 
                    sql += "AND IDFINAL BETWEEN 4665 AND 4670";
                    break;
                case 25: // CIRUGIA ONCO(MAMA) 
                    sql += "AND IDFINAL BETWEEN 4740 AND 4745";
                    break;
                case 26: // CIRUGIA ONCO(GAST) 
                    sql += "AND IDFINAL BETWEEN 4795 AND 4800";
                    break;
                case 27: // CIRUGIA PLASTICA 
                    sql += "AND IDFINAL BETWEEN 4850 AND 4855";
                    break;
                case 28: // COLOPROCTOLOGIA 
                    sql += "AND IDFINAL BETWEEN 4915 AND 4920";
                    break;
                case 29: // GINECOLOGIA ONCO 
                    sql += "AND IDFINAL BETWEEN 4970 AND 4975";
                    break;
                case 30: // MASTOLOGIA 
                    sql += "AND IDFINAL BETWEEN 5025 AND 5030";
                    break;
                case 31: // CABEZA Y CUELLO 
                    sql += "AND IDFINAL BETWEEN 5070 AND 5075";
                    break;
                case 32: // TEJIDOS BLANDOS 
                    sql += "AND IDFINAL BETWEEN 5125 AND 5130";
                    break;
                case 33: // HEMATOONCOLÓGIA 
                    sql += "AND IDFINAL BETWEEN 5270 AND 5275";
                    break;
                case 34: // ORTOPEDIA Y TRAUMA 
                    sql += "AND IDFINAL BETWEEN 5325 AND 5330";
                    break;
                case 35: // PSICOLOGIA 
                    sql += "AND IDFINAL BETWEEN 5370 AND 5375";
                    break;
                case 36: // CIRUGIA DE TORAX 
                    sql += "AND IDFINAL BETWEEN 5425 AND 5430";
                    break;
                case 37: // CIRUGÍA GASTROINTE 
                    sql += "AND IDFINAL BETWEEN 5470 AND 5475";
                    break;
                case 38: // DOLOR Y CUIDADO PALIATIVOS 
                    sql += "AND IDFINAL BETWEEN 5525 AND 5530";
                    break;
                case 39: // NUTRICIÓN 
                    sql += "AND IDFINAL BETWEEN 5570 AND 5575";
                    break;
                case 40: // TRABAJO SOCIAL 
                    sql += "AND IDFINAL BETWEEN 5625 AND 5630";
                    break;
//CITAS IMAGENOLOGIA
                case 41: // TOMOGRAFIA 
                    sql += "AND IDFINAL BETWEEN 5670 AND 5675";
                    break;
                case 42: // RADIOGRAFIA 
                    sql += "AND IDFINAL BETWEEN 5725 AND 5730";
                    break;
                case 43: // ECOGRAFIAS  
                    sql += "AND IDFINAL BETWEEN 5770 AND 5775";
                    break;
                case 44: // DOPPLER  
                    sql += "AND IDFINAL BETWEEN 5825 AND 5830";
                    break;
                case 45: // BIOPSIAS 
                    sql += "AND IDFINAL BETWEEN 5870 AND 5875";
                    break;
//LLAMADAS OTROS SERVICIOS PENDIENTES
                case 46: // ATENCION AL CLIENTE 
                    sql += "AND IDFINAL BETWEEN 5960 AND 5962";
                    break;
            }


            if (Consultar) {
                var inputValue = sql;
                console.log("SQL: " + sql);
                $.ajax({
                    type: "POST",
                    url: "consulta_SubTip.jsp",
                    data: {sql: inputValue}, // Envía el valor de 'inputValue' como parámetro 'sql'
                    dataType: "json", // Especifica que esperas recibir JSON del servidor
                    success: function (response) {
                        console.log("Response from server:", response);
                        // Vacía el contenido actual del dropdown-menu
                        var dropdownMenu = $("#dropdownMenuButtonSUB2Cont");
                        dropdownMenu.css({"display": "block"});
                        dropdownMenu.empty();
                        dropdownMenu.append("<option value=0 class=dropdown-item BtnTipificacionPrincipal>SELECCIONE</option>");

                        $.each(response, function (index, item) {
                            var option = $("<option>").addClass("dropdown-item BtnTipificacionPrincipal dropdownMenuButtonSUBCont").text(item.descripcion).val(parseInt(item.idfinal));
                            dropdownMenu.append(option);
                        });
                    },
                    error: function (xhr, status, error) {
                        console.error("Error:", error);
                    }
                });
            } else {
                var dropdownMenu = $("#dropdownMenuButtonSUB2Cont");
                dropdownMenu.empty();
                dropdownMenu.css({"display": "none"});
                dropdownMenu.append("<option value=0 class=dropdown-item BtnTipificacionPrincipal>SELECCIONE</option>");
            }

        }

        function atras() {
            $('.custom-select').val(0);
            $('#dropdownMenuButtonSUBCont').empty(); // Vacía el contenido del dropdown
            $('#dropdownMenuButtonSUBCont').css({"display": "none"});
            $('#dropdownMenuButtonSUB2Cont').css({"display": "none"});
            $('#dropdownMenuButtonSUBCont').append("<option value=0 class=dropdown-item BtnTipificacionPrincipal>SELECCIONE</option>");
        }

        function actualizar() {
            var desfinal;
            var idfinal;
            var id1 = parseInt($("#dropdownMenuButtonSUBCont").val());
            var id2 = parseInt($("#dropdownMenuButtonSUB2Cont").val());


            if (id1 > 0 && id1 < 47) {
                if (id2 > 2199 && id2 < 5875 || id2 > 5959 && id2 < 5963) {
                    idfinal = id2;
                    desfinal = $("#dropdownMenuButtonSUB2Cont option:selected").text();
                } else {
                    console.error("Debe seleccionar una tipificación en ambos campos");
                    Swal.fire({
                        icon: 'warning',
                        title: 'Selección incompleta',
                        text: 'Debe seleccionar una tipificación en ambos campos.'
                    });
                    return; // Detener la ejecución si la validación falla
                }
            } else {
                if ((id1 > 5924 && id1 < 5931) || (id1 > 6009 && id1 < 6020) || (id1 > 6059 && id1 < 6065)) {
                    idfinal = id1;
                    desfinal = $("#dropdownMenuButtonSUBCont option:selected").text();
                } else {
                    console.error("Debe seleccionar una tipificación en ambos campos");
                    Swal.fire({
                        icon: 'warning',
                        title: 'Selección incompleta',
                        text: 'Debe seleccionar una tipificación en ambos campos.'
                    });
                    return; // Detener la ejecución si la validación falla
                }
            }

            var idcall = idllamada;


            // Deshabilitar el botón mientras se procesa la solicitud
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
                    "destipificacion": desfinal // Asegúrate de definir 'desfinal' antes de usarlo aquí
                })
            };

            // Realizar la solicitud AJAX para actualizar
            $.ajax(updatefinal).done(function (response) {
                console.log("IdFinal :      " + idfinal);
                console.log("Desfinal:      " + desfinal);
                console.log("IdTransaccion: " + idcall);

                Swal.fire({
                    icon: 'success',
                    title: 'Tipificación actualizada',
                    showConfirmButton: false,
                    timer: 1500
                });
                location.reload(); // Recargar la página después de actualizar
            }).fail(function (jqXHR, textStatus, errorThrown) {
                // Manejar el error de la solicitud AJAX
                console.error("Error al actualizar:", errorThrown);
                Swal.fire({
                    icon: 'error',
                    title: 'Error al actualizar',
                    text: 'Hubo un problema al intentar actualizar la tipificación'
                });
            });
            $('#dropdownMenuButtonSUBCont').empty(); // Vacía el contenido del dropdown
        }


    </script>


    <style type="text/css">
        .campo{
            font-weight: bold;
            font-family: Lato;
            color: #504741;
            border : 1px solid #24a26f;
            height: 50px;
            width: 25%;
            padding: 10px;
        }
        .titulo{
            font-weight: bold;
            font-family: Lato;
            color: white;
            background-color: #24a26f;
            font-size: 16px;
            border : 1px solid #24a26f;
            width: 100% ;
            height: 50px;

        }
        .text{

            width: 100%;
        }
        .lista{
            border : 1px solid #24a26f;
            color: #504741;
            width: 100%;
            cursor: pointer;
        }
        .boton{
            width: 48%;
            margin: 2%;
        }

        td{
            width: 100%;
            padding: 1%;
            border: none;
        }

        .dropdown .flex-container {
            display: flex;
            justify-content: center;
        }

        .dropdown-menu {
            max-height: 200px; /* Altura máxima del dropdown */
            overflow-y: auto; /* Habilita el scroll vertical */
        }

        .BtnTipificacionPrincipal{
            padding: 2% 10px;
        }

        .BtnTipificacionPrincipal:hover{
            transition: 0.3s;
            color: #fff;
            background-color: #24a26f;
        }

        .selectionM{
            width: 100%;
            height: 100%;

        }
    </style>




<center>
    <div style="position: initial; overflow: hidden;" > 
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #f37920;">
            <div class="container-fluid" style="padding: 0px;">
                <img style="position:relative;" src="https://asertis.com.co/wp-content/uploads/2021/03/logo-asertis-blanco.png" alt="Asertis" width="100px" onclick="inicio()"  >
                <div class="collapse navbar-collapse" id="navbarCollapse4">

                </div>
            </div>        
        </nav>

    </div>
    <div>

    </div>

</center>


</head>

<body style="background-color: #f0f0f0">

    <div class="container" style="width: 100%">            

        <table id="dataTable" class="table table-striped table-bordered" style="color: #1a72ba">

            <thead>
                <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #24a26f; border : 1px solid #24a26f !important;  ">
                    <th>IDTRANSACCION</th>                        
                    <th>FECHA Y HORA</th>
                    <th>IDFINAL</th>
                    <th>TELEFONO</th>
                    <th>DOCUMENTO</th>
                    <th>PRIMER NOMBRE</th>
                    <th>SEGUNDO NOMBRE</th>
                    <th>PRIMER APELLIDO</th>
                    <th>SEGUNDO APELLIDO</th>

                </tr>  
            </thead>          
            <tbody>
                <%                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        // Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");

                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        String sql1
                                = "SELECT "
                                + "    A.idTransaccion, "
                                + "    A.tFinal, "
                                + "    A.idFinal, "
                                + "    C.sOrigen, "
                                + "    D.IDORIGINAL as 'NUMDOC', "
                                + "    UPPER(D.NOMBRE) as 'NOMBRE1', "
                                + "    UPPER(D.sNombreCompleto) as 'NOMBRE2', "
                                + "    UPPER(D.APELLIDO1) as 'APELLIDO1', "
                                + "    UPPER(D.APELLIDO2) as 'APELLIDO2' "
                                + "FROM "
                                + "    tbHistoFTransacciones A "
                                + "    INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "    INNER JOIN tbHistoFContactos C ON A.idTransaccion = C.idTransaccion "
                                + "    LEFT JOIN CLIENTES D ON A.idSujeto = D.IDSUJETO "
                                + "WHERE "
                                + "    A.idFinal = 3000 "
                                + "       AND A.idCampanya IN (100000417, 100000418) "
                                + "       AND C.idAgente = " + idagente + "\n"
                                + "AND MONTH(A.tCreacion) = MONTH(GETDATE()) AND YEAR(A.tCreacion) = YEAR(GETDATE())\n"
                                + "UNION "
                                + "    (SELECT "
                                + "        A.idTransaccion, "
                                + "        A.tFinal, "
                                + "        A.idFinal, "
                                + "        C.sOrigen, "
                                + "        D.IDORIGINAL as 'NUMDOC', "
                                + "        UPPER(D.NOMBRE) as 'NOMBRE1', "
                                + "        UPPER(D.sNombreCompleto) as 'NOMBRE2', "
                                + "        UPPER(D.APELLIDO1) as 'APELLIDO1', "
                                + "        UPPER(D.APELLIDO2) as 'APELLIDO2' "
                                + "    FROM "
                                + "        TRANSACCION A "
                                + "        INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "        INNER JOIN tbContactos C ON A.idTransaccion = C.idTransaccion "
                                + "        LEFT JOIN CLIENTES D ON A.idSujeto = D.IDSUJETO "
                                + "    WHERE "
                                + "        A.idFinal = 3000 "
                                + "       AND A.idCampanya IN (100000417, 100000418) "
                                + "       AND C.idAgente = " + idagente + "\n"
                                + "       AND MONTH(A.tCreacion) = MONTH(GETDATE()) AND YEAR(A.tCreacion) = YEAR(GETDATE()))";
                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td onclick="editar(<%=rs1.getString("idTransaccion")%>)">
                        <%=rs1.getString("idTransaccion")%></td>  
                    <td><%=rs1.getString("tFinal")%></td>
                    <td><%=rs1.getString("idFinal")%></td>
                    <td><%=rs1.getString("sOrigen")%></td>
                    <td><%=rs1.getString("NUMDOC")%></td>
                    <td><%=rs1.getString("NOMBRE1")%></td>
                    <td><%=rs1.getString("NOMBRE2")%></td>
                    <td><%=rs1.getString("APELLIDO1")%></td>
                    <td><%=rs1.getString("APELLIDO2")%></td>                    
                </tr> 

                <% } %>                  
            </tbody>
        </table>
        <%
            } catch (Exception e) {
                out.println("Error : " + e.getMessage());
            }
        %>

    </div>
    <!-- Modal Finales -->
    <div class="modal" id="ModalFinales" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content" >
                <div class="modal-body" id ="contenido">
                    <table class="formulario" style="width:100%;">
                        <thead>
                            <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #ed7203; font-size: 18px; border: 1px solid #ed7203; width: 100%; height: 50px;">
                                <th colspan="3">TIPIFICACIONES</th>
                            </tr>
                        </thead>
                        <tbody id="ConterTip">

                            <tr>
                                <td style="text-align: center;  vertical-align: middle;"  class="boton">
                                    <div class="">    
                                        <select class="custom-select selectionM" onchange="Sub_tipificar(this.value)">
                                            <option value="0" class="BtnTipificacionPrincipal">SELECCIONE</option>
                                            <option value="1" class="BtnTipificacionPrincipal">CITAS PRIMERA VEZ</option>
                                            <option value="2" class="BtnTipificacionPrincipal">CITAS DE CONTROL</option>
                                            <option value="3" class="BtnTipificacionPrincipal">CITAS IMAGENOLOGIA</option>
                                            <option value="4" class="BtnTipificacionPrincipal">NO APLICA AGENDAMIENTO</option>
                                            <option value="5" class="BtnTipificacionPrincipal">LLAMADAS OTROS SERVICIOS PENDIENTES</option>
                                            <option value="6" class="BtnTipificacionPrincipal">LLAMADAS SIN GESTIÓN</option>
                                        </select>
                                    </div>
                                </td>
                                <td style="text-align: center; vertical-align: middle;" class="boton">
                                    <div class="">                                        
                                        <select class="custom-select selectionM" aria-labelledby="" onchange="Sub_tipificar2(this.value)" id="dropdownMenuButtonSUBCont">
                                            <option value="0" class="">SELECCIONE</option>
                                        </select>
                                    </div>
                                </td>                                
                            </tr>
                            <tr>
                                <td style="text-align: center; vertical-align: middle;" class="boton">
                                    <div class="">                                        
                                        <select class="custom-select selectionM" aria-labelledby="" id="dropdownMenuButtonSUB2Cont">
                                            <option value="0" class="">SELECCIONE</option>
                                        </select>
                                    </div>
                                </td> 
                            </tr>
                        </tbody>
                    </table>

                    </table>
                    <div class="modal-footer">
                        <button  type="button" class="btn btn-success btn-block" style="margin:1%; background-color: #24a26f;color: white; border-color: #24a26f; font-weight: bold; font-size: 12px;"  data-dismiss="modal" onclick="atras()">ATRAS</button>
                        <button  type="button" class="btn btn-success btn-block" style="margin:1%; background-color: #24a26f;color: white; border-color: #24a26f; font-weight: bold; font-size: 12px;"  data-dismiss="modal" onclick="actualizar()">   FINALIZAR</button>  
                    </div>

                </div>
            </div>
        </div>
        <!-- Modal FinalesDetalle -->
        <div class="modal" id="ModalFinalesDetalle" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false"  >
            <div class="modal-dialog modal-lg">
                <div class="modal-content" >
                    <div class="modal-body" id ="contenido2">

                    </div>
                    <div class="modal-footer">
                        <button  type="button" class="btn btn-success btn-block" style="background-color: #24a26f;color: white;border-color: #24a26f; font-weight: bold;font-size: 12px"  data-dismiss="modal" >ATRAS</button>
                    </div>
                </div>
            </div>
        </div> 


</body>





