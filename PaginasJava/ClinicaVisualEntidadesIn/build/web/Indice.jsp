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
    <title>Clinica Visual Entidades Llamadas sin tipificar</title>
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
    <script>
        var idllamada;
        var token;
        var url = "https://api.fenalcovalle.com";
        $(document).ready(function () {
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
            var num = parseInt(value);

            // Calculamos los límites del rango
            var min = (num - 1) * 100 + 100;
            var max = (num - 1) * 100 + 199;

            // Construimos la consulta SQL
            var sql = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = 100000461 ";

            if (num === 3) {
                sql += "AND IDFINAL BETWEEN " + min + " AND " + max + " AND IDFINAL NOT IN (301);";
            }
            if (num === 13) {
                sql += "AND IDFINAL BETWEEN " + min + " AND " + max + " AND IDFINAL NOT IN (1300);";
            } else {
                sql += "AND IDFINAL BETWEEN " + min + " AND " + max + ";";
            }

            var inputValue = sql;
            $.ajax({
                type: "POST",
                url: "consulta_SubTip.jsp",
                data: {sql: inputValue}, // Envía el valor de 'inputValue' como parámetro 'sql'
                dataType: "json", // Especifica que esperas recibir JSON del servidor
                success: function (response) {
                    console.log("Response from server:", response);
                    // Vacía el contenido actual del dropdown-menu
                    var dropdownMenu = $("#dropdownMenuButtonSUBCont");
                    dropdownMenu.empty();
                    dropdownMenu.append("<option value=0 class=dropdown-item BtnTipificacionPrincipal>SELECCIONE</option>");

                    $.each(response, function (index, item) {
                        var option = $("<option>").addClass("dropdown-item BtnTipificacionPrincipal dropdownMenuButtonSUBContt").text(item.descripcion).val(parseInt(item.idfinal));
                        dropdownMenu.append(option);
                    });
                },
                error: function (xhr, status, error) {
                    console.error("Error:", error);
                }
            });
        }

        function atras() {
            $('.custom-select').val(0);
            $('#dropdownMenuButtonSUBCont').empty(); // Vacía el contenido del dropdown
        }

        function actualizar() {

            var idfinal = parseInt($("#dropdownMenuButtonSUBCont").val());
            var desfinal = $("#dropdownMenuButtonSUBCont option:selected").text();
            var idcall = idllamada;

            if (idfinal === 0 || desfinal.trim() === "" || desfinal === "SELECCIONE") {
                console.error("Debe seleccionar una tipificación en ambos campos");
                Swal.fire({
                    icon: 'warning',
                    title: 'Selección incompleta',
                    text: 'Debe seleccionar una tipificación en ambos campos.'
                });
                return; // Detener la ejecución si la validación falla
            }
            // Deshabilitar el botón mientras se procesa la solicitud
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
                    "destipificacion": desfinal // Asegúrate de definir 'desfinal' antes de usarlo aquí
                })
            };

            // Realizar la solicitud AJAX para actualizar
            $.ajax(updatefinal).done(function (response) {
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
    <%

        String idagente = request.getParameter("codigoagente");

    %>



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

                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.83:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
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
                                + "       AND A.idCampanya = 100000461\n"
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
                                + "       AND A.idCampanya = 100000461\n"
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
                                            <option value="1" class="BtnTipificacionPrincipal">CITA REASIGNADA</option>
                                            <option value="2" class="BtnTipificacionPrincipal">ESPECIALIDADES</option>
                                            <option value="3" class="BtnTipificacionPrincipal">TRANSFERENCIA PARTICULAR</option>
                                            <option value="4" class="BtnTipificacionPrincipal">OPTOMETRIA</option>
                                            <option value="5" class="BtnTipificacionPrincipal">OTORRINO</option>
                                            <option value="6" class="BtnTipificacionPrincipal">OTROS</option>
                                            <option value="7" class="BtnTipificacionPrincipal">AYUDAS DIAGNOSTICAS AUDIOLOGIA</option>
                                            <option value="8" class="BtnTipificacionPrincipal">BAJA VISION</option>
                                            <option value="9" class="BtnTipificacionPrincipal">AUDIFONOS</option>
                                            <option value="10" class="BtnTipificacionPrincipal">AYUDAS DIAGNOSTICAS OFTALMOLOGIA</option>
                                            <option value="11" class="BtnTipificacionPrincipal">AYUDAS DIAGNOSTICAS OTORRINO</option>
                                            <option value="12" class="BtnTipificacionPrincipal">FONOAUDIOLOGIA</option>
                                            <option value="13" class="BtnTipificacionPrincipal">INFORMACION GENERAL</option>
                                            <option value="14" class="BtnTipificacionPrincipal">DATOS INCOMPLETOS </option>
                                        </select>
                                    </div>
                                </td>
                                <td style="text-align: center; vertical-align: middle;" class="boton">
                                    <div class="">                                        
                                        <select class="custom-select selectionM" aria-labelledby="" id="dropdownMenuButtonSUBCont">
                                            <option value="0" class="">SELECCIONE</option>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    </table>
                    <div class="modal-footer">
                        <button  type="button" class="btn btn-success btn-block" style="background-color: #24a26f;color: white; border-color: #24a26f; font-weight: bold; font-size: 12px"  data-dismiss="modal" onclick="atras()">        ATRAS</button>
                        <button  type="button" class="btn btn-success btn-block" style="margin:0%; background-color: #24a26f;color: white; border-color: #24a26f; font-weight: bold; font-size: 12px"  data-dismiss="modal" onclick="actualizar()">   FINALIZAR</button>  
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





