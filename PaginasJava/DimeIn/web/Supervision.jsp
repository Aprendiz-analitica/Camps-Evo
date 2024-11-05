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
        <title>Dime llamadas sin tipificar</title>
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
                        {
                            extend: 'copyHtml5',
                            text: 'COPIAR',
                            className: 'button-uppercase'
                        },
                        {
                            extend: 'excelHtml5',
                            text: 'EXCEL',
                            className: 'button-uppercase'
                        },
                        {
                            extend: 'csvHtml5',
                            text: 'CSV',
                            className: 'button-uppercase'
                        },
                        {
                            extend: 'pdfHtml5',
                            text: 'PDF',
                            className: 'button-uppercase'
                        }
                    ]
                });
            });
            function inicio() {
                window.location.href = "index.html";

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
                border : 1px solid #24a26f;
                width: 100%;
            }
            .lista{
                border : 1px solid #24a26f;
                color: #504741;
                width: 100%;
            }
            .dt-button buttons-copy buttons-html5{
                width: 100px;
            }



        </style>

        <%

            String fechaIn = request.getParameter("fechaIn");
            String fechaFin = request.getParameter("fechaFin");

        %>
        <%String titulo = "LLAMADAS SIN TIPIFICAR DESDE EL " + fechaIn + " HASTA EL " + fechaFin;%>

    <center>
        <div style="position: initial; overflow: hidden;" > 
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #f37920;">
                <div class="container-fluid" style="padding: 0px;">
                    <img style="position:relative;" src="https://asertis.com.co/wp-content/uploads/2021/03/logo-asertis-blanco.png" alt="Asertis" width="100px" onclick="inicio()" >
                    <div class="collapse navbar-collapse" id="navbarCollapse4">
                        <label style="color: white; font-size: 20px"><%=titulo%></label>   

                    </div>
                </div>        
            </nav>

        </div>
        <div>

        </div>

    </center>


</head>

<body style="background-color: #fcfaf9">

    <div class="container" style="width: 100%">            



        <table id="dataTable" class="table table-striped table-bordered" style="color: #fcfaf9">

            <thead>
                <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #24a26f; border : 1px solid #24a26f !important;  ">
                    <th>IDTRANSACCION</th>                        
                    <th>FECHA Y HORA</th>
                    <th>IDFINAL</th>
                    <th>AGENTE</th>
                    <th>TELEFONO</th>
                </tr>  
            </thead>        
            <tbody>


                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        // Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        String sql1
                                = "SELECT "
                                + "    A.idTransaccion, "
                                + "    A.tFinal, "
                                + "    A.idFinal, "
                                + "    CONCAT(B.sNombreUsuario,' ',B.sApellido1Usuario) as Agente, "
                                + "    C.sOrigen "
                                + "FROM "
                                + "    tbHistoFTransacciones A "
                                + "    INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "    INNER JOIN tbHistoFContactos C ON A.idTransaccion = C.idTransaccion "
                                + "WHERE "
                                + "    A.idFinal = 177 "
                                + "    AND A.idCampanya = 100000218 "
                                + "    AND C.idAgente != 0 "
                                + "    AND A.tCreacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59' "
                                + "UNION "
                                + "SELECT "
                                + "    A.idTransaccion, "
                                + "    A.tFinal, "
                                + "    A.idFinal, "
                                + "    CONCAT(B.sNombreUsuario,' ',B.sApellido1Usuario) as Agente, "
                                + "    C.sOrigen "
                                + "FROM "
                                + "    TRANSACCION A "
                                + "    INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "    INNER JOIN tbContactos C ON A.idTransaccion = C.idTransaccion "
                                + "WHERE "
                                + "    A.idFinal = 177 "
                                + "    AND A.idCampanya = 100000218 "
                                + "    AND C.idAgente != 0 "
                                + "    AND A.tCreacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59'";

                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td><%=rs1.getString("idTransaccion")%></td>  
                    <td><%=rs1.getString("tFinal")%></td>
                    <td><%=rs1.getString("idFinal")%></td>
                    <td><%=rs1.getString("Agente")%></td>
                    <td><%=rs1.getString("sOrigen")%></td>                  
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

</body>


</html>