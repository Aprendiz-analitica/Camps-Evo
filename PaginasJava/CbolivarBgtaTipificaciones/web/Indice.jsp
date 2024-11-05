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
            var cedula;
            var nombre1;
            var nombre2;
            var apellido1;
            var apellido2;
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
            function editar(idtransaccion, numdoc, n1, n2, a1, a2) {
                idllamada = idtransaccion;
                cedula = numdoc;
                nombre1 = n1;
                nombre2 = n2;
                apellido1 = a1;
                apellido2 = a2;
                $('input:text[name=inumdoc]').val(cedula);
                $('input:text[name=inombre1]').val(nombre1);
                $('input:text[name=inombre2]').val(nombre2);
                $('input:text[name=iapellido1]').val(apellido1);
                $('input:text[name=iapellido2]').val(apellido2);
                $('#exampleModal').modal('show');

            }
            function inbound() {
                document.getElementById("contenido2").innerHTML = "";
                $('#modal2').modal('show');
                $("#contenido2").load("tipificar.jsp", {id: idllamada});
            }

            function fundacion() {
                document.getElementById("contenido2").innerHTML = "";
                $('#modal2').modal('show');
                $("#contenido2").load("fundacion.jsp", {id: idllamada});
            }
            function insertarpqrs(idfinal, sdescripcion) {
                var iidoriginal = $('input:text[name=inumdoc]').val();
                var inombre1 = $('input:text[name=inombre1]').val();
                var inombre2 = $('input:text[name=inombre2]').val();
                var iapellido1 = $('input:text[name=iapellido1]').val();
                var iapellido2 = $('input:text[name=iapellido2]').val();
                if (iidoriginal == '' || iidoriginal == 'null') {
                    alert("El campo Número de documento esta vacio y es obligatorio");
                    return false;
                } else if (inombre1 == '' || inombre1 == 'null') {
                    alert("El campo Primer nombre esta vacio y es obligatorio");
                    return false;
                } else if (iapellido1 == '' || iapellido1 == 'null') {
                    alert("El campo Primer Apellido esta vacio y es obligatorio");
                    return false;
                }
                var settings = {
                    "url": url + "/webservicefenalco/cbolivarbgta/ingresarpqrsora",
                    "method": "POST",
                    "timeout": 0,
                    "headers": {
                        "Authorization": "Bearer " + token,
                        "Content-Type": "application/json"
                    },
                    "data": JSON.stringify({
                        "idcall": idllamada,
                        "idoriginal": iidoriginal,
                        "nombre1": inombre1,
                        "nombre2": inombre2,
                        "apellido1": iapellido1,
                        "apellido2": iapellido2,
                        "origen": "Llamada",
                        "cierre": sdescripcion

                    }),
                };
                $('input:button[id=llamadaadmin]').prop('disabled', true);
                $('input:button[id=equivocado]').prop('disabled', true);
                $('input:button[id=nodatos]').prop('disabled', true);
                $.ajax(settings).done(function (response) {
                    var updatepqrs = {
                        "url": url + "/webservicefenalco/cbolivarbgta/actualizarpqrsOra",
                        "method": "POST",
                        "timeout": 0,
                        "headers": {
                            "Authorization": "Bearer " + token,
                            "Content-Type": "application/json"
                        },
                        "data": JSON.stringify({
                            "idtipificacion": idfinal,
                            "idcall": idllamada,
                            "destipificacion": sdescripcion
                        }),
                    };

                    $.ajax(updatepqrs).done(function (response) {
                        alert("Tipificacion creada");
                        location.reload();
                    });
                });
            }


        </script>
        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: Roboto;
                color: #504741;
                border : 1px solid #2b8b4b;
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: Roboto;
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
                    <img style="position:relative;" src="img/logo-bolivar_scroll.svg" alt="ConstructoraBolivar">
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
                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        // Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");
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
        "WHERE idFinal = 302 " +
        "AND idAgente = " + idagente +
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
        "WHERE idFinal = 302 " +
        "AND idAgente = "+ idagente +
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
                        ResultSet rsl = ps1.executeQuery();
                        while (rsl.next() == true) {
                %>
                <tr>
                    <td onclick="editar(<%=rsl.getString("idTransaccion")%>,
                                    '<%=rsl.getString("CEDULA")%>',
                                    '<%=rsl.getString("NAME1")%>',
                                    '<%=rsl.getString("NAME2")%>',
                                    '<%=rsl.getString("APELLIDO1")%>',
                                    '<%=rsl.getString("APELLIDO2")%>')">
                        <%=rsl.getString("idTransaccion")%></td>
                    <td><%=rsl.getString("tFinal")%></td>
                    <td><%=rsl.getString("idFinal")%></td>
                    <td><%=rsl.getString("CEDULA")%></td>
                    <td><%=rsl.getString("TELEFONO")%></td>
                    <td><%=rsl.getString("NAME1")%></td>
                    <td><%=rsl.getString("NAME2")%></td>
                    <td><%=rsl.getString("APELLIDO1")%></td>
                    <td><%=rsl.getString("APELLIDO2")%></td>                        
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
    <div class="modal" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content" style="width:650px; margin-left: auto; margin-right:auto;" >
                <div class="modal-body" id ="contenido">

                    <table class="formulario" style="width:603px; margin-left: auto; margin-right:auto;">
                        <tr style="font-weight: bold; font-family: Roboto; color: white; background-color: #2b8b4b;font-size: 16px; border : 1px solid #2b8b4b; width: 100% ;height: 50px">
                            <th colspan="3">Constructora Bolivar Inbound Datos</th>
                        </tr>
                        <tr>
                            <td class="campo">
                                Numero de Documento:<br />
                                <input class="text" type="text" id="iIdOriginal" name="inumdoc"  required minlength="1" maxlength="500" size="10%" >
                            </td>
                            <td class="campo">
                                Primer nombre:<br />
                                <input class="text" type="text" id="iname1" name="inombre1"  required minlength="1" maxlength="500" size="10%" >
                            </td>
                            <td class="campo">
                                Segundo nombre:<br />
                                <input class="text" type="text" id="iname2" name="inombre2"  required minlength="1" maxlength="500" size="10%" >
                            </td>
                        </tr>
                        <tr>
                            <td class="campo">
                            </td>  
                            <td class="campo">
                                Primer apellido:<br />
                                <input class="text" type="text" id="ilastname1" name="iapellido1"  required minlength="1" maxlength="500" size="10%" >
                                <br />
                            </td>
                            <td class="campo">
                                Segundo apellido:<br />
                                <input class="text" type="text" id="ilastname2" name="iapellido2"  required minlength="1" maxlength="500" size="10%" >
                            </td>    

                        </tr>
                        <tr style="font-weight: bold; font-family: Roboto; color: white; background-color: #2b8b4b;font-size: 16px; border : 1px solid #2b8b4b; width: 100% ;height: 50px">
                            <th colspan="3">Finales</th>
                        </tr>

                        <tr>

                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; padding:20px; ">
                                <input style="height: 50px;width: 160px" id="tipificar" type="button" value="Bolivar Inbound" onclick ="inbound()"  />
                                
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; padding:20px; ">
                                <input style="height: 50px;width: 160px" id="fundacion" type="button" value="Fundacion Bolivar" onclick ="fundacion()" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; padding:20px; ">
                            
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; padding:20px;">
                                <input style="height: 50px;width: 160px" id="nodatos" type="button" value="No es titular" onclick="insertarpqrs(111, 'NO ES TITULAR')"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; padding:20px;">
                                <input style="height: 50px;width: 160px" id="equivocado" type="button" value="Llamada equivocada / Broma" onclick ="insertarpqrs(106, 'LLAMADA EQUIVOCADA')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; padding:20px;">
                                <input style="height: 50px;width: 160px" id="llamadaadmin" type="button" value="Llamada administrativa" onclick="insertarpqrs(110, 'LLAMADA ADMINISTRATIVA')"  />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; padding:20px;">
                                <input style="height: 50px;width: 160px" id="tranfercali" type="button" value="Transferencia menu Cali" onclick="insertarpqrs(113, 'TRANSFER MENU CALI')"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; padding:20px;">
                                <input style="height: 50px;width: 160px" id="llamadacortada" type="button" value="Llamada cortada" onclick="insertarpqrs(112, 'LLAMADA CORTADA')"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; padding:20px;">
                                <input style="height: 50px;width: 160px" id="llamadamuda" type="button" value="Llamada muda" onclick="insertarpqrs(104, 'LLAMADA MUDA')"  />
                            </td>
                        </tr>
                    </table>
                    <div class="modal-footer">
                        <button  type="button" style="background-color: #2b8b4b" class="btn btn-secondary" data-dismiss="modal">Atras</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="modal" id="modal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false"  >
        <div class="modal-dialog modal-lg">
            <div class="modal-content" style="width:650px; margin-left: auto; margin-right:auto;" >
                <div class="modal-body" id ="contenido2">

                </div>
                <div class="modal-footer">
                    <button type="button" style="background-color: #2b8b4b"  data-dismiss="modal" class="btn btn-secondary">Atras</button>
                </div>
            </div>
        </div>
    </div> 


</body>


</html>