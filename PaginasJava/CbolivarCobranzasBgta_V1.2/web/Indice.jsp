<%-- 
    Document   : Indice = Original
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
        <title>Constructora Bolivar Bgta Cobranzas Reporte de Clientes</title>
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
                        'copyHtml5',
                        'excelHtml5',
                        'csvHtml5',
                        'pdfHtml5'
                    ]
                });
            });


        </script>

        <%
            String idtransaccion = "";
            String fechaIn = request.getParameter("fechaIn");
            String fechaFin = request.getParameter("fechaFin");
            String desfinal = request.getParameter("desfinal");
            boolean traerAgentes = request.getParameter("TraerAgentes") != null;

        %>
        <%String titulo = "Constructora Bolivar Bgta Cobranzas Reporte de Clientes Desde " + fechaIn + " Hasta " + fechaFin;%>



    <center>
        <div style="height: 65px;
             /* width: 100%; */
             background-color: #008c44;
             display: flex;
             justify-content: center;
             align-items: center;
             color: white;
             font-family: Arial, Helvetica, sans-serif;
             border-radius: 3px;
             top: 5px;
             position: relative;">
            <h3><%=titulo%></h3>
        </div>

        <br>
        <br><!-- comment -->
        <br><!-- comment -->
        <br>

        <br>
        <br>


    </center>


</head>

<body style="background-color: #fcfaf9">

    <div class="container" style="width: 100%;display: flex;justify-content: center;">            



        <table id="dataTable" class="table table-striped table-bordered" style="color: #f8db66">



            <thead>
            <a href="lista.jsp"><button type="button" 
                                        style="background-color: #008c44;color: white;border-color: #fcfaf9;" 
                                        class="btn btn-primary">Atras</button></a>


            <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #008c44; border : 1px solid #008c44;">                  
                <th>Nit</th>
                <th>Nombre</th>
                <th>Telefono1</th>
                <th>Telefono2</th>
                <th>Correo</th>
                <th>Proyecto</th>
                <th>Agrupacion</th>
                <th>MaxMoraEdad</th>
                <th>UltimoFinalBase</th>
                <th>Observaciones</th>
                <th>Agente</th>
                <th>Ultima llamada</th>
                <th>Tipificacion out</th> 
                <th>Tipologia</th> 
                <th>Sub Tipificacion</th> 
            </tr>  
            </thead>        
            <tbody>
                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        //Connection con1 = DriverManager.getConnection("jdbc:sqlserver://200.1.1.103:1433;DatabaseName=EVOLUTIONDB", "sa", "pcs3rv3r");
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        String sql1 = "SELECT "
                                + "c.IDORIGINAL, "
                                + "C.NOMBRE, "
                                + "C.TELEFONO, "
                                + "C.TELEFONO2, "
                                + "PivotTable.Correo, "
                                + "PivotTable.Proyecto, "
                                + "PivotTable.Agrupacion, "
                                + "PivotTable.MaxMoraEdad, "
                                + "PivotTable.UltimoFinal, "
                                + "C.OBSERVACIONES, "
                                + "CONCAT(age.sNombreUsuario, ' ', age.sApellido1Usuario) AS Agente, "
                                + "t.tFinal AS [F.Fin], "
                                + "CASE "
                                + "    WHEN t.idFinal >= 200 AND t.idFinal < 300 THEN 'Contacto Efectivo' "
                                + "    WHEN t.idFinal >= 300 AND t.idFinal < 400 THEN 'Buzón de Mensajes' "
                                + "    WHEN t.idFinal >= 400 AND t.idFinal < 500 THEN 'Equivocado' "
                                + "    WHEN t.idFinal >= 500 AND t.idFinal < 600 THEN 'Fuera de Servicio' "
                                + "    WHEN t.idFinal >= 600 AND t.idFinal < 700 THEN 'No contacto' "
                                + "    ELSE 'Valor nulo' "
                                + "END AS 'Tipifacion_out', "
                                + "CASE "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '00' AND t.idFinal < SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '20') OR "
                                + "         (t.idFinal >= 600 AND t.idFinal < 620) THEN (SELECT f.DESCRIPCION FROM FINALES f WHERE f.IDFINAL = t.idFinal AND f.IDCAMPANYA = t.idCampanya) "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '21' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '39') THEN 'EN DEFINICION' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '40' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '41') THEN 'COMPROMISO DE PAGO' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '42' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '43') THEN 'DESISTIMIENTO VOLUNTARIO' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '44' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '52') THEN 'PQRS' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '53' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '57') THEN 'PENDIENTE PROMESA - CS Y AH' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '58' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '59') THEN 'CASOS ESPECIALES' "
                                + "    ELSE 'Valor nulo' "
                                + "END AS Tipologia, "
                                + "CASE "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '00' AND t.idFinal < SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '20') THEN 'NULL' "
                                + "    ELSE (SELECT f.DESCRIPCION FROM FINALES f WHERE f.IDFINAL = t.idFinal AND f.IDCAMPANYA = t.idCampanya) "
                                + "END AS 'SubTpificacion', "
                                + "t.idFinal AS idFinal "
                                + "FROM (SELECT clave, idSujeto, valor FROM tbDatosCliente) AS SourceTable "
                                + "PIVOT (MAX(valor) FOR clave IN (Correo, Proyecto, Agrupacion, MaxMoraEdad, UltimoFinal)) AS PivotTable "
                                + "INNER JOIN tbHistoFTransacciones t ON PivotTable.idSujeto = t.idSujeto "
                                + "INNER JOIN CLIENTES c ON c.IDSUJETO = t.idSujeto "
                                + "INNER JOIN tbHistoDAgentes age ON t.idAgente = age.idAgente "
                                + "WHERE t.idTransaccion IN ( "
                                + "    SELECT MAX(vt.idTransaccion) AS idTransaccion "
                                + "    FROM tbHistoFTransacciones vt ";
                        if (traerAgentes) {
                            sql1 = sql1 + "    WHERE idCampanya IN (100000588,100000589,100000590,100000591,100000592,100000593,100000594,100000595,100000596,100000597,100000598,100000599,100000600) ";
                        } else {
                            sql1 = sql1 + "    WHERE idCampanya IN (" + desfinal + ") ";

                        }
                        sql1 = sql1 + "    AND vt.tCreacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59' GROUP BY vt.idSujeto )"
                                + "UNION "
                                + "SELECT "
                                + "c.IDORIGINAL, "
                                + "C.NOMBRE, "
                                + "C.TELEFONO, "
                                + "C.TELEFONO2, "
                                + "PivotTable.Correo, "
                                + "PivotTable.Proyecto, "
                                + "PivotTable.Agrupacion, "
                                + "PivotTable.MaxMoraEdad, "
                                + "PivotTable.UltimoFinal, "
                                + "C.OBSERVACIONES, "
                                + "CONCAT(age.sNombreUsuario, ' ', age.sApellido1Usuario) AS Agente, "
                                + "t.tFinal AS [F.Fin], "
                                + "CASE "
                                + "    WHEN t.idFinal >= 200 AND t.idFinal < 300 THEN 'Contacto Efectivo' "
                                + "    WHEN t.idFinal >= 300 AND t.idFinal < 400 THEN 'Buzón de Mensajes' "
                                + "    WHEN t.idFinal >= 400 AND t.idFinal < 500 THEN 'Equivocado' "
                                + "    WHEN t.idFinal >= 500 AND t.idFinal < 600 THEN 'Fuera de Servicio' "
                                + "    WHEN t.idFinal >= 600 AND t.idFinal < 700 THEN 'No contacto' "
                                + "    ELSE 'Valor nulo' "
                                + "END AS 'Tipifacion_out', "
                                + "CASE "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '00' AND t.idFinal < SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '20') OR "
                                + "         (t.idFinal >= 600 AND t.idFinal < 620) THEN (SELECT f.DESCRIPCION FROM FINALES f WHERE f.IDFINAL = t.idFinal AND f.IDCAMPANYA = t.idCampanya) "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '21' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '39') THEN 'EN DEFINICION' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '40' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '41') THEN 'COMPROMISO DE PAGO' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '42' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '43') THEN 'DESISTIMIENTO VOLUNTARIO' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '44' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '52') THEN 'PQRS' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '53' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '57') THEN 'PENDIENTE PROMESA - CS Y AH' "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '58' AND t.idFinal <= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '59') THEN 'CASOS ESPECIALES' "
                                + "    ELSE 'Valor nulo' "
                                + "END AS Tipologia, "
                                + "CASE "
                                + "    WHEN (t.idFinal >= SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '00' AND t.idFinal < SUBSTRING(CAST(t.idFinal AS VARCHAR), 1, 1) + '20') THEN 'NULL' "
                                + "    ELSE (SELECT f.DESCRIPCION FROM FINALES f WHERE f.IDFINAL = t.idFinal AND f.IDCAMPANYA = t.idCampanya) "
                                + "END AS 'SubTpificacion', "
                                + "t.idFinal AS idFinal "
                                + "FROM (SELECT clave, idSujeto, valor FROM tbDatosCliente) AS SourceTable "
                                + "PIVOT (MAX(valor) FOR clave IN (Correo, Proyecto, Agrupacion, MaxMoraEdad, UltimoFinal)) AS PivotTable "
                                + "INNER JOIN TRANSACCION t ON PivotTable.idSujeto = t.idSujeto "
                                + "INNER JOIN CLIENTES c ON c.IDSUJETO = t.idSujeto "
                                + "INNER JOIN tbHistoDAgentes age ON t.idAgente = age.idAgente "
                                + "WHERE t.idTransaccion IN ( "
                                + "    SELECT MAX(vt.idTransaccion) AS idTransaccion "
                                + "    FROM TRANSACCION vt ";
                        if (traerAgentes) {
                            sql1 = sql1 + "    WHERE idCampanya IN (100000588,100000589,100000590,100000591,100000592,100000593,100000594,100000595,100000596,100000597,100000598,100000599,100000600) ";
                        } else {
                            sql1 = sql1 + "    WHERE idCampanya IN (" + desfinal + ") ";

                        }
                        sql1 = sql1 + "    AND vt.tCreacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59' GROUP BY vt.idSujeto )";

                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td><%=rs1.getString("IDORIGINAL")%></td>  
                    <td><%=rs1.getString("NOMBRE")%></td>
                    <td><%=rs1.getString("TELEFONO")%></td>
                    <td><%=rs1.getString("TELEFONO2")%></td>
                    <td><%=rs1.getString("Correo")%></td>
                    <td><%=rs1.getString("Proyecto")%></td>
                    <td><%=rs1.getString("Agrupacion")%></td>
                    <td><%=rs1.getString("MaxMoraEdad")%></td>
                    <td><%=rs1.getString("UltimoFinal")%></td>
                    <td><%=rs1.getString("OBSERVACIONES")%></td>
                    <td><%=rs1.getString("Agente")%></td>
                    <td><%=rs1.getString("F.Fin")%></td>
                    <td><%=rs1.getString("Tipifacion_out")%></td>
                    <td><%=rs1.getString("Tipologia")%></td>
                    <td><%=rs1.getString("SubTpificacion")%></td>                    
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



</body>


</html>