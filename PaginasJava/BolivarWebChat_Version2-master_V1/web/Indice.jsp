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
<%@page import="javax.servlet.http.HttpSession" %>

<%
// Verifica si el usuario ha iniciado sesión
    if (session.getAttribute("usuarioLogueado") == null) {
        // Si no ha iniciado sesión, redirige a la página de inicio de sesión
        response.sendRedirect("inicio.jsp"); // Reemplaza "inicio.jsp" por tu página de inicio de sesión
        return; // Importante: detén la ejecución del resto de la página
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Constructora Bolivar WebChat</title>
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
            // int desfinal = Integer.parseInt(request.getParameter("desfinal"));

        %>
        <style>
            *,divt{
                font-family: Lato;
            }
        </style>
        <%String titulo = "Constructora Bolivar Web Chat Reporte de Pausas Agentes " + fechaIn + " Hasta " + fechaFin;%>
    <center>
        <divt>
            <h3><%=titulo%></h3>
        </divt>
        <br><!-- comment -->
    </center>

</head>

<body style="background-color: #fcfaf9">
    <!--Recargar pagina   -->
    <script type="text/javascript">
        $(document).ready(function () {
            setInterval(function () {
                location.reload();
            }, 30000);
        });
    </script>

    <div class="container" style="width: 100%">            
        <table id="dataTable" class="table table-striped table-bordered" style="color: #f8db66">
            <thead>
            <a href="lista.jsp">
                <button type="button" style="background-color: #008c44;color: white;border-color: #fcfaf9;"class="btn btn-primary">Atras</button></a>
            <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #008c44; border : 1px solid #008c44;">                  
                <th>Agente</th>                        
                <th>Tipo Pausa</th>
                <th>Inicio Pausa</th>
                <th>Fin Pausa</th>
                <th>Total Minutos</th>
            </tr>  
            </thead>        
            <tbody>

                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        //Connection con1 = DriverManager.getConnection("jdbc:sqlserver://200.1.1.103:1433;DatabaseName=EVOLUTIONDB", "sa", "pcs3rv3r");
                        //  Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");

                        String consulta = "";

                        consulta = "SELECT \n"
                                + "    usuario, \n"
                                + "    pausa, \n"
                                + "    inicio_pausa AS inicio_pausa_str, \n"
                                + "    CASE \n"
                                + "        WHEN fin_pausa IS NULL THEN '<span style=\"color: red\">Pausa en curso</span>' \n"
                                + "        ELSE fin_pausa \n"
                                + "    END AS fin_pausa_str, \n"
                                + "    DATEDIFF(MINUTE, \n"
                                + "              CAST(inicio_pausa AS DATETIME2),  -- Convertir inicio_pausa a DATETIME2\n"
                                + "              COALESCE(\n"
                                + "                  CAST(fin_pausa AS DATETIME2),  -- Convertir fin_pausa a DATETIME2\n"
                                + "                  GETDATE()\n"
                                + "              )\n"
                                + "    ) AS tiempo_total_minutos \n"
                                + "FROM PAUSAS \n"
                                + "WHERE \n"
                                + "    fecha_creacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59'\n"
                                + "ORDER BY \n"
                                + "    CAST(inicio_pausa AS DATETIME2) DESC;  -- Convertir inicio_pausa en la cláusula ORDER BY";


                        /*sql1 = "SELECT usuario, pausa, CONVERT(VARCHAR, inicio_pausa, 120) AS inicio_pausa, "
                                + "CASE WHEN fin_pausa IS NULL THEN '<span style=\"color: red\">Pausa en curso</span>' ELSE CONVERT(VARCHAR, fin_pausa, 120) END AS fin_pausa, "
                                + "DATEDIFF(MINUTE, inicio_pausa, COALESCE(fin_pausa, GETDATE())) AS tiempo_total_minutos "
                                + "FROM PAUSAS "
                                + "WHERE fecha_creacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59' "
                                + "ORDER BY CONVERT(datetime, inicio_pausa, 109) DESC";
                         */
                        PreparedStatement ps1 = con1.prepareStatement(consulta);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>


                <tr>
                    <td><%=rs1.getString("usuario")%></td>  
                    <td><%=rs1.getString("pausa")%></td>
                    <td><%=rs1.getString("inicio_pausa_str")%></td>
                    <td><%=rs1.getString("fin_pausa_str")%></td>
                    <td><%=rs1.getString("tiempo_total_minutos")%></td>



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