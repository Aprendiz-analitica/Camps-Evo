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
        <title>Constructora Bolivar Bogota Llamadas Abandonadas</title>
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
        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: Roboto;
                color: #504741;
                border : 1px solid #008c44; 
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: Roboto;
                color: white;
                background-color: #008c44;
                font-size: 16px; 
                border : 1px solid #008c44; 
                width: 100% ;
                height: 50px;

            }
            .text{
                border : 1px solid #008c44;
                width: 100%;
            }
            .lista{
                border : 1px solid #008c44;
                color: #504741;
                width: 100%;
            }


        </style>
        <%String titulo = "Constructora Bolivar Bogota Llamadas Abandonadas";%>


    <center>
        <divt>
            <h3><%=titulo%></h3>
        </divt>
        <img src="logo-constructora-bolivar.svg" alt="ConstructoraBolivarBogota" width="300px">


    </center>


</head>

<body style="background-color: #fcfaf9">

    <div class="container" style="width: 100%">            



        <table id="dataTable" class="table table-striped table-bordered" style="color: #f8db66">

            <thead>
            <tr style="font-weight: bold; font-family: Roboto; color: white; background-color: #008c44; border : 1px solid #008c44;">
                <th>Id.Transaccion</th>                        
                <th>Fecha y Hora</th>
                <th>Descripcion</th>
                <th>Teléfono</th>
                <th>Número de Documento</th>
                
            </tr>  
            </thead>        
            <tbody>
                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        //Connection con1 = DriverManager.getConnection("jdbc:sqlserver://200.1.1.103:1433;DatabaseName=EVOLUTIONDB", "sa", "pcs3rv3r");
                        //Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        //String sql1 = "";
                        String sql1 = "SELECT A.idtransaccion, "
                                        + "A.FechaHora, "
                                        + "(CASE WHEN Final = 10 THEN 'Abandonada' ELSE 'Finalizada por el sistema' END) AS DesFinal, "
                                        + "Telefono, "
                                        + "(SELECT (SELECT IDORIGINAL FROM CLIENTES WHERE idSujeto = B.idSujeto) FROM TRANSACCION B WHERE A.idTransaccion = B.idTransaccion) AS 'numdoc' "
                                        + "FROM vwLlamadasAbandonadasCbolivarBgtaDiarioDetalle A WHERE FINAL IN ('10','14')";
                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td><%=rs1.getString("idtransaccion")%></td>  
                    <td><%=rs1.getString("FechaHora")%></td>
                    <td><%=rs1.getString("DesFinal")%></td>
                    <td><%=rs1.getString("Telefono")%></td>
                    <td><%=rs1.getString("numdoc")%></td> 
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