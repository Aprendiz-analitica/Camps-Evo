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
        <title> HematoOncólogos Gestion OUT</title>
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
                        'copyHtml5',
                        'excelHtml5',
                        'csvHtml5',
                        'pdfHtml5'
                    ],
                    responsive: true
                });

            });

        </script>
        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: #504741;
                border : 1px solid #f37920;
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: white;
                background-color: #f37920;
                font-size: 16px;
                border : 1px solid #f37920;
                width: 100% ;
                height: 50px;

            }
            .text{
                border : 1px solid #f37920;
                width: 100%;
            }
            .lista{
                border : 1px solid #f37920;
                color: #504741;
            }
            .boton{
                width: 200px;
            }



        </style>

        <%
            int desfinal = Integer.parseInt(request.getParameter("desfinal"));
            String fechaIn = request.getParameter("fechaIn");
            String fechaFin = request.getParameter("fechaFin");
            System.out.println("desfinal: " + desfinal);
            System.out.println("fechaIn: " + fechaIn);
            System.out.println("fechaFin: " + fechaFin);
        %>
    <center>
        <div style="position: initial; overflow: hidden;" > 
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #f37920;">
                <div class="container-fluid">
                    <img style="position:relative;" src="https://asertis.com.co/wp-content/uploads/2021/03/logo-asertis-blanco.png" alt="Asertis" width="100px"  >
                    <div class="collapse navbar-collapse" id="navbarCollapse4">
                        <div class="navbar-nav">
                        </div>
                    </div>
                    <a href="lista.jsp" class="navbar-brand">Salir</a
                </div>        
            </nav>

        </div>
        <div>

        </div>

    </center>
</head>

<body style="background-color: #fcfaf9">

    <div class="container-fluid" style="width: 100%">            
        <table id="dataTable" class="table table-striped table-bordered" style="color: #f8db66">
            <thead>
                <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #f37920; border : 1px solid #f37920;">                  
                    <th>NID</th>                    
                    <th>FECHA DE ASIGNACIÓN</th>
                    <th>FECHA DE CREACIÓN</th>
                    <th>CIUDAD</th>
                    <th>TELÉFONO</th>
                    <th>DIRECCIÓN</th>
                    <th>CONJUNTO_EDIFICIO</th>
                    <th>ESTADO FINAL</th>
                    <th>OBSERVACIONES</th>
                </tr>  
            </thead>        
            <tbody>
                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        //Connection con1 = DriverManager.getConnection("jdbc:sqlserver://200.1.1.103:1433;DatabaseName=EVOLUTIONDB", "sa", "pcs3rv3r");
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.83:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        String sql1 = " ";
                        switch (desfinal) {
                            case 100000523:
                                sql1 = "SELECT "
                                        + "    c.IDSUJETO AS NIT, "
                                        + "    t.tInicio, "
                                        + "    t.tCreacion, "
                                        + "    PivotTable.CIUDAD, "
                                        + "    c.TELEFONO, "
                                        + "    PivotTable.DIRECCION, "
                                        + "    c.NOMBRE AS CONJUNTOEDIFICIO, "
                                        + "    PivotTable.ESTADOFINAL, "
                                        + "    c.OBSERVACIONES "
                                        + "FROM "
                                        + "    ( "
                                        + "        SELECT clave, idSujeto, valor "
                                        + "        FROM tbDatosCliente "
                                        + "    ) AS SourceTable "
                                        + "    PIVOT "
                                        + "    ( "
                                        + "        MAX(valor) "
                                        + "        FOR clave IN "
                                        + "        ( "
                                        + "            CIUDAD, "
                                        + "            TELEFONO, "
                                        + "            DIRECCION, "
                                        + "            ESTADOFINAL, "
                                        + "            OBSERVACIONES "
                                        + "        ) "
                                        + "    ) AS PivotTable "
                                        + "    INNER JOIN tbHistoFTransacciones t ON PivotTable.idSujeto = t.idSujeto "
                                        + "    INNER JOIN CLIENTES c ON c.IDSUJETO = t.idSujeto "
                                        + "    INNER JOIN tbHistoDAgentes age ON t.idAgente = age.idAgente "
                                        + "WHERE "
                                        + "    t.idTransaccion IN "
                                        + "    ( "
                                        + "        SELECT MAX(vt.idTransaccion) "
                                        + "        FROM tbHistoFTransacciones vt "
                                        + "        WHERE "
                                        + "            vt.idCampanya = '100000523' "
                                        + "            AND vt.tCreacion BETWEEN '" + fechaIn + " 00:00:00' AND '" + fechaFin + " 23:59:59' "
                                        + "        GROUP BY vt.idSujeto "
                                        + "    ) "
                                        + "UNION "
                                        + "SELECT "
                                        + "    c.IDSUJETO AS NIT, "
                                        + "    t.tInicio, "
                                        + "    t.tCreacion, "
                                        + "    PivotTable.CIUDAD, "
                                        + "    c.TELEFONO, "
                                        + "    PivotTable.DIRECCION, "
                                        + "    c.NOMBRE AS CONJUNTOEDIFICIO, "
                                        + "    PivotTable.ESTADOFINAL, "
                                        + "    c.OBSERVACIONES "
                                        + "FROM "
                                        + "    ( "
                                        + "        SELECT clave, idSujeto, valor "
                                        + "        FROM tbDatosCliente "
                                        + "    ) AS SourceTable "
                                        + "    PIVOT "
                                        + "    ( "
                                        + "        MAX(valor) "
                                        + "        FOR clave IN "
                                        + "        ( "
                                        + "            CIUDAD, "
                                        + "            TELEFONO, "
                                        + "            DIRECCION, "
                                        + "            ESTADOFINAL, "
                                        + "            OBSERVACIONES "
                                        + "        ) "
                                        + "    ) AS PivotTable "
                                        + "    INNER JOIN TRANSACCION t ON PivotTable.idSujeto = t.idSujeto "
                                        + "    INNER JOIN CLIENTES c ON c.IDSUJETO = t.idSujeto "
                                        + "    INNER JOIN tbHistoDAgentes age ON t.idAgente = age.idAgente "
                                        + "WHERE "
                                        + "    t.idTransaccion IN "
                                        + "    ( "
                                        + "        SELECT MAX(vt.idTransaccion) "
                                        + "        FROM TRANSACCION vt "
                                        + "        WHERE "
                                        + "            vt.idCampanya = '100000523' "
                                        + "           AND vt.tCreacion BETWEEN '" + fechaIn + " 00:00:00' AND '" + fechaFin + " 23:59:59' "
                                        + "        GROUP BY vt.idSujeto "
                                        + "    );";
                                break;
                            default:
                                throw new AssertionError();
                        }
                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next()) {
                %>
                <tr>
                    <td><%= rs1.getString("NIT")%></td>
                    <td><%= rs1.getString("tInicio")%></td>
                    <td><%= rs1.getString("tCreacion")%></td>
                    <td><%= rs1.getString("CIUDAD")%></td>
                    <td><%= rs1.getString("TELEFONO")%></td>
                    <td><%= rs1.getString("DIRECCION")%></td>
                    <td><%= rs1.getString("CONJUNTOEDIFICIO")%></td>
                    <td><%= rs1.getString("ESTADOFINAL")%></td>
                    <td><%= rs1.getString("OBSERVACIONES")%></td>
                </tr> 
                <%
                        }
                        rs1.close();
                        ps1.close();
                        con1.close();
                    } catch (Exception e) {
                        out.println("Error : " + e.getMessage());
                    }
                %>
        </table>
    </div>




</body>


</html>