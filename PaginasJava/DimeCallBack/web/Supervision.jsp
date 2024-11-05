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
        <title>DIME CallBack</title>
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
        <link href="css/ListaSupervicion.css" rel="stylesheet" type="text/css">
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
                    ]
                });
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









        </script>
        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: #504741;
                border : 1px solid #00854fe6;
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: white;
                background-color: #00854fe6;
                font-size: 16px;
                border : 1px solid #00854fe6;
                width: 100% ;
                height: 50px;

            }
            .text{
                border : 1px solid #00854fe6;
                width: 100%;
            }
            .lista{
                border : 1px solid #00854fe6;
                color: #504741;
                width: 100%;
            }
            .boton{
                width: 200px;
            }



        </style>

        <%

            String fechaIn = request.getParameter("fechaIn");
            String fechaFin = request.getParameter("fechaFin");

        %>
        <%String titulo = "DIME Llamadas sin tipificar desde " + fechaIn + " Hasta " + fechaFin;%>


    <center>
        <div style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" 
                                                            style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 271.49,-49.98 500.27,147.55 L500.00,0.00 L0.00,0.00 Z" 
                                                            style="stroke: none; fill: #00854fe6;"></path></svg></div>

        <div style="text-align: right; height: 45px; width: 1110px">
            <a href="Manager.jsp"><button type="button" 
                                          style="background-color: #00854fe6;color: white;border-color: #fcfaf9;font-family: 'Roboto', sans-serif; font-weight: bold;">Salir</button></a>    
        </div> 
        <img src="img/logo.png" alt="Dime" width="200px">


    </center>


</head>

<body style="background-color: #fcfaf9">

    <div class="container" style="width: 100%">            



        <table id="dataTable" class="table table-striped table-bordered" style="color: #fcfaf9">

            <thead>
                <tr style="font-weight: bold; font-family: 'Roboto', sans-serif; color: white; background-color: #00854fe6; border : 1px solid #008c44;">
                    <th>Teléfono</th>
                    <th>Fecha de llamada</th>
                    <th>Resultado</th>
                </tr>  
            </thead>        
            <tbody>
                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");

                        String sql1 = "";
                                
                        sql1 = "SELECT A.idTransaction, A.telefono, A.estado, "
                                + "CAST(tCreacion AS date) AS fecha, "
                                + "(SELECT sDescripcionFinal FROM tbHistoFTransacciones WHERE idTransaccion = A.idTransactionFinal) AS finalgestion "
                                + "FROM __callback_Dime A "
                                + "INNER JOIN tbHistoFTransacciones B ON A.idTransaction = B.idTransaccion "
                                + "WHERE tCreacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59' "
                                + "ORDER BY tCreacion";
                                
                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td><%=rs1.getString("telefono")%></td>
                    <td><%=rs1.getString("fecha")%></td>
                    <td><%=rs1.getString("finalgestion")%></td>
                </tr> 

                <% } %>                  
            </tbody>
        </table>

        <%
            } catch (Exception e) {
                out.println("Error : " + e.getMessage());
                out.println("Error : " + fechaIn + fechaFin);
            }
        %>

    </div>
    <!-- Modal -->












</body>


</html>