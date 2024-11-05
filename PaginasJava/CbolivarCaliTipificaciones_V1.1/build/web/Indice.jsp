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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Constructora Bolivar Cali Llamadas sin tipificar</title>
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
        <link href="css/Lista.css" rel="stylesheet" type="text/css">
        <script>
            var idllamada;
            var token;
            var url = "https://8aozurcink.execute-api.us-east-2.amazonaws.com";
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
                    buttons: [
                    ]
                });
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

            function editar(idtransaccion) {
                idllamada = idtransaccion;
                $('#ModalFinales').modal('show');
            }

            function actualizar(fidfinal, fdesfinal) {
                var idcall = idllamada;
                var updatefinal = {
                    "url": url + "/webservicefenalco/cbolivarbgta/actualizarpqrsOra",
                    "method": "POST",
                    "timeout": 0,
                    "headers": {
                        "Authorization": "Bearer " + token,
                        "Content-Type": "application/json"
                    },
                    "data": JSON.stringify({
                        "idtipificacion": fidfinal,
                        "idcall": idcall,
                        "destipificacion": fdesfinal
                    }),

                };

                $.ajax(updatefinal).done(function (response) {
                    console.log(response);
                    if (response.error == true) {
                        alert(response.respuesta);
                        return false;
                    } else {
                        alert("Tipificacion Actualizada");
                        $('input:button').prop('disabled', true);
                        location.reload();
                    }
                });
            }
            function finalestyc() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesTYC.jsp", {id: idllamada});

            }
            function finalespyc() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesPYC.jsp", {id: idllamada});

            }
            function finalescom() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesCOM.jsp", {id: idllamada});

            }
            function finalesgen() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesGEN.jsp", {id: idllamada});

            }

        </script>
        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: #504741;
                border : 1px solid #2b8b4b;
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: white;
                background-color: #2b8b4b;
                font-size: 16px;
                border : 1px solid #2b8b4b;
                width: 100% ;
                height: 50px;

            }
            .text{
                border : 1px solid #2b8b4b;
                width: 100%;
            }
            .lista{
                border : 1px solid #2b8b4b;
                color: #504741;
                width: 100%;
            }
            .boton{
                width: 200px;
            }



        </style>

        <%

            String idagente = request.getParameter("codigoagente");
            String nombreagente = request.getParameter("nom");
            String apellidoagente = request.getParameter("apel");
            String nombrecompletoagente = "AGENTE:  "+nombreagente + " " + apellidoagente;
        %>
    <center>
        <div style="position: initial; overflow: hidden;" > 
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #2b8b4b;">
                <div class="container-fluid">
                    <img style="position:relative;" src="logo-bolivar_scroll.svg" alt="ConstructoraBolivar">
                    <div class="collapse navbar-collapse" id="navbarCollapse4">
                        <div class="navbar-nav">
                            <h1  style="margin:  0px; font-weight: bold; font-family: Roboto; color: white;position: relative;width: 100%; font-size: 16px"><%=nombrecompletoagente%></h1> 
                        </div>
                    </div>
                    <a href="Inicio.jsp" class="navbar-brand">Salir</a
                </div>        
            </nav>

        </div>
            <div>
                
            </div>

    </center>
</head>

<body style="background-color: #fcfaf9">

    <div class="container" style="width: 100%">            



        <table id="dataTable" class="table table-striped table-bordered" style="color: #f8db66">

            <thead>
                <tr style="font-weight: bold; font-family: Roboto; color: white; background-color: #2b8b4b; border : 1px solid #2b8b4b;">
                    <th>Id.Transaccion</th>                        
                    <th>Fecha y Hora</th>
                    <th>IdFinal</th>
                    <th>Número de documento</th>
                    <th>Télefono</th>
                    <th>Primer Nombre</th>
                    <th>Segundo Nombre</th>
                    <th>Primer Apellido</th>
                    <th>Segundo Apellido</th>
                </tr>  
            </thead>        
            <tbody>
                <%                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        //Connection con1 = DriverManager.getConnection("jdbc:sqlserver://200.1.1.103:1433;DatabaseName=EVOLUTIONDB", "sa", "pcs3rv3r");
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        String sql1 = "";
                        sql1 = "WITH tbHistFTrans AS ( " +
        "SELECT " +
        "idTransaccion, " +
        "tFinal, " +
        "idFinal, " +
        "idAgente, " +
        "idSujeto, " +
        "idCampanya, " +
        "tCreacion " +
        "FROM tbHistoFTransacciones " +
        "WHERE idFinal = 186 " +
        "AND idAgente = " + idagente +
		"AND idCampanya != 100000194" +
        "AND tCreacion >= DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 1, 0) " +
		"AND tCreacion <= GETDATE() " +
        "), " +
        "tbTrans AS ( " +
        "SELECT " +
        "idTransaccion, " +
        "tFinal, " +
        "idFinal, " +
        "idAgente, " +
        "idSujeto, " +
        "idCampanya, " +
        "tCreacion " +
        "FROM TRANSACCION " +
        "WHERE idFinal = 186 " +
        "AND idAgente = "+ idagente +
		"AND idCampanya != 100000194" +
        "AND tCreacion >= DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 1, 0) " +
        "AND tCreacion <= GETDATE() " +
        "), " +
        "clientescero AS ( " +
        "SELECT " +
        "IDORIGINAL, " +
        "TELEFONO, " +
        "NOMBRE, " +
        "sNombreCompleto, " +
        "APELLIDO1, " +
        "APELLIDO2, " +
        "TRY_CAST(TEXTO1 AS numeric) AS TEXTO1 " +
        "FROM clientes C2 " +
        "INNER JOIN tbHistFTrans A ON A.idSujeto = 0 AND C2.TEXTO1 = CAST(A.idTransaccion AS VARCHAR) " +
        ") " +
        "SELECT TOP(5) " +
        "A.idTransaccion, " +
        "A.tFinal, " +
        "A.idFinal, " +
        "CONCAT(B.sNombreUsuario, ' ', B.sApellido1Usuario) AS Agente, " +
        "(CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.IDORIGINAL ELSE C1.IDORIGINAL END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.IDORIGINAL ELSE C1.IDORIGINAL END) END ) AS CEDULA, " +
        "(CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.TELEFONO ELSE C1.TELEFONO END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.TELEFONO ELSE C1.TELEFONO END) END ) AS TELEFONO, " +
        "REPLACE((CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.NOMBRE ELSE C1.NOMBRE END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.NOMBRE ELSE C1.NOMBRE END) END ),'''','') AS NAME1, " +
        "REPLACE((CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.sNombreCompleto ELSE C1.sNombreCompleto END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.sNombreCompleto ELSE C1.sNombreCompleto END) END ),'''','') AS NAME2, " +
        "REPLACE((CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.APELLIDO1 ELSE C1.APELLIDO1 END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.APELLIDO1 ELSE C1.APELLIDO1 END) END ),'''','') AS APELLIDO1, " +
        "REPLACE((CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.APELLIDO2 ELSE C1.APELLIDO2 END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.APELLIDO2 ELSE C1.APELLIDO2 END) END ) ,'''','') AS APELLIDO2 " +
        "FROM tbHistFTrans A " +
        "INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente " +
        "LEFT OUTER JOIN clientes C1 ON A.idSujeto > 0 AND C1.IDSUJETO = A.idSujeto " +
        "LEFT JOIN clientescero C2 ON A.idSujeto = 0 AND A.idTransaccion = C2.TEXTO1 " +
        "UNION ALL " +
        "SELECT " +
        "A.idTransaccion, " +
        "A.tFinal, " +
        "A.idFinal, " +
        "CONCAT(B.sNombreUsuario, ' ', B.sApellido1Usuario) AS Agente, " +
        "(CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.IDORIGINAL ELSE C1.IDORIGINAL END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.IDORIGINAL ELSE C1.IDORIGINAL END) END ) AS CEDULA, " +
        "(CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.TELEFONO ELSE C1.TELEFONO END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.TELEFONO ELSE C1.TELEFONO END) END ) AS TELEFONO, " +
        "REPLACE((CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.NOMBRE ELSE C1.NOMBRE END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.NOMBRE ELSE C1.NOMBRE END) END ),'''','') AS NAME1, " +
        "REPLACE((CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.sNombreCompleto ELSE C1.sNombreCompleto END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.sNombreCompleto ELSE C1.sNombreCompleto END) END ),'''','') AS NAME2, " +
        "REPLACE((CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.APELLIDO1 ELSE C1.APELLIDO1 END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.APELLIDO1 ELSE C1.APELLIDO1 END) END ),'''','') AS APELLIDO1, " +
        "REPLACE((CASE WHEN (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.APELLIDO2 ELSE C1.APELLIDO2 END) IS NULL THEN '' " +
        "ELSE (CASE WHEN C1.IDORIGINAL IS NULL THEN C2.APELLIDO2 ELSE C1.APELLIDO2 END) END ) ,'''','') AS APELLIDO2 " +
        "FROM tbTrans A " +
        "INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente " +
        "LEFT OUTER JOIN clientes C1 ON A.idSujeto > 0 AND C1.IDSUJETO = A.idSujeto " +
        "LEFT JOIN clientescero C2 ON A.idSujeto = 0 AND A.idTransaccion = C2.TEXTO1";
        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td onclick="editar(<%=rs1.getString("idTransaccion")%>)">
                        <%=rs1.getString("idTransaccion")%></td> 
                    <td><%=rs1.getString("tFinal")%></td>
                    <td><%=rs1.getString("idFinal")%></td>
                    <td><%=rs1.getString("CEDULA")%></td>
                    <td><%=rs1.getString("TELEFONO")%></td>
                    <td><%=rs1.getString("NAME1")%></td>
                    <td><%=rs1.getString("NAME2")%></td>
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
    <!-- Modal -->
    <div class="modal" id="ModalFinales" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content" >
                <div class="modal-body" id ="contenido">

                    <table class="formulario" style="width:100%;">
                        <tr style="font-weight: bold; font-family: Roboto; color: white; background-color: #2b8b4b;font-size: 16px; border : 1px solid #2b8b4b; width: 100% ;height: 50px">
                            <th colspan="2">FINALES</th>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%" id="tramiteycartera" type="button" value="Tramite y Cartera" onclick="finalestyc()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%" id="postventayconstruccion" type="button" value="Postventa y Construcción" onclick ="finalespyc()" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%" id="comercial" type="button" value="Comercial" onclick="finalescom()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%" id="general" type="button" value="General" onclick ="finalesgen()" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="221" type="button" value="Transferencia Area Administrativa" onclick ="actualizar('221', 'TRANSFER AREA ADMINISTRATIVA')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="220" type="button" value="Transferencia menu Bogota" onclick ="actualizar('220', 'TRANSFER MENU BGTA')" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="222" type="button" value="Llamada muda" onclick ="actualizar('222', 'LLAMADA MUDA')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="175" type="button" value="Llamada de prueba" onclick ="actualizar('175', 'LLAMADA DE PRUEBA')" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="176" type="button" value="Llamada equivocada" onclick ="actualizar('176', 'LLAMADA EQUIVOCADA')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="177" type="button" value="No titular" onclick ="actualizar('177', 'NO TITULAR')" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="168" type="button" value="Interesados no dejan datos" onclick ="actualizar('168', 'INTERESADOS NO DEJAN DATOS')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="167" type="button" value="Interesados en proyectos no vigentes" onclick ="actualizar('167', 'INTERESADOS EN PROYECTOS NO VI')" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 25%"  id="173" type="button" value="Informacion otras areas" onclick ="actualizar('173', 'INFORMACION OTRAS AREAS')" />
                            </td>
                        </tr>

                    </table>
                    <div class="modal-footer">
                        <button  type="button" onclick="" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="modal" id="ModalFinalesDetalle" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false"  >
        <div class="modal-dialog modal-lg">
            <div class="modal-content" >
                <div class="modal-body" id ="contenido2">

                </div>
                <div class="modal-footer">
                    <button type="button"  data-dismiss="modal" onclick="">Cerrar</button>
                </div>
            </div>
        </div>
    </div> 


</body>


</html>