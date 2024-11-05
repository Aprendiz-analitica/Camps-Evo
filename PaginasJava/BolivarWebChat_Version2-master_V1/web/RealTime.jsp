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
        <link href="css/Lista.css" rel="stylesheet" type="text/css">
        <!--Recargar pagina   -->
        <script type="text/javascript">
            $(document).ready(function () {
                setInterval(function () {
                    location.reload();
                }, 30000);
            });
        </script>
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
        <%String titulo = "Constructora Bolivar WebChat Estado Real de Agentes ";%>
    <center>
        <divt>
            <h3><%=titulo%></h3>
        </divt>
        <br>
    </center>
    <style>
         *,divt{
                font-family: Lato;
            }
    </style>
</head>

<body style="background-color: #fcfaf9">
    <!--Recargar pagina cada 5 segundos  -->
    <div class="container" style="width: 100%">            
        <table id="dataTable" class="table table-striped table-bordered" style="color: #f8db66">
            <thead>
            <a href="lista.jsp"><button type="button" style="background-color: #008c44;color: white;border-color: #fcfaf9;"  class="btn btn-primary">Atras</button></a>
            <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #008c44; border : 1px solid #008c44;">                  
                <th>Agente</th>  
                <th>Estado Conexión</th>
                <th>Inicio Sesión</th>
                <th>Fin Sesión</th>
                <th>Tiempo total</th>
            </tr>  
            </thead>        
            <tbody>
                <%
                    try {

                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                        // Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");

                        java.util.Date fechaActual = new java.util.Date();

                        java.sql.Date fechaActualSQL = new java.sql.Date(fechaActual.getTime());
                        String fechaActualStr = fechaActualSQL.toString();
                        String sql1 = "";

                        //sql1 = "SELECT s.usuario, p.pausa, p.inicio_pausa, p.fin_pausa, p.tiempo_total_minutos, CASE WHEN s.fin_sesion IS NOT NULL THEN 'Desconectado' ELSE 'Disponible' END AS Estado_Conexion, CASE WHEN s.fin_sesion IS NULL AND p.fin_pausa IS NULL THEN 'En pausa ' WHEN p.pausa IS NULL AND s.fin_sesion IS NOT NULL THEN 'Desconectado' WHEN p.pausa IS NULL THEN 'En pausa' ELSE 'Sin pausa iniciada' END AS Estado_Pausa, s.inicio_sesion, s.fin_sesion FROM (SELECT usuario, inicio_sesion AS ultima_sesion FROM Sesiones WHERE inicio_sesion BETWEEN '" + fechaIn + " 00:00:00' AND '" + fechaFin + " 23:59:59') AS ultima_sesion JOIN Sesiones AS s ON s.usuario = ultima_sesion.usuario AND s.inicio_sesion = ultima_sesion.ultima_sesion LEFT JOIN (SELECT usuario, pausa, inicio_pausa, fin_pausa, DATEDIFF(MINUTE, inicio_pausa, fin_pausa) AS tiempo_total_minutos FROM Pausas WHERE fin_pausa IS NOT NULL AND fecha_creacion BETWEEN '" + fechaIn +  " 00:00:00' AND '" + fechaFin + " 23:59:59' AND fecha_creacion >= (SELECT MAX(fecha_creacion) FROM Pausas WHERE fecha_creacion BETWEEN '" + fechaIn +  " 00:00:00' AND '" + fechaFin + " 23:59:59')) AS p ON s.usuario = p.usuario ORDER BY s.usuario ASC, s.inicio_sesion DESC;";
                        sql1 = "SELECT s.usuario, p.pausa, p.inicio_pausa, p.fin_pausa, p.tiempo_total_minutos, CASE WHEN s.fin_sesion IS NOT NULL THEN 'Desconectado' ELSE 'Disponible' END AS Estado_Conexion, CASE WHEN s.fin_sesion IS NULL AND p.fin_pausa IS NULL THEN 'En pausa' WHEN p.pausa IS NULL AND s.fin_sesion IS NOT NULL THEN 'Desconectado' WHEN p.pausa IS NULL THEN 'En pausa' ELSE 'Sin pausa iniciada' END AS Estado_Pausa, s.inicio_sesion, CASE WHEN s.fin_sesion IS NULL THEN '<span style=\"color: green\">Sin finalizar sesión</span>' ELSE CONVERT(varchar, s.fin_sesion, 120) END AS fin_sesion, DATEDIFF(MINUTE, s.inicio_sesion, COALESCE(s.fin_sesion, GETDATE())) AS tiempo_total_minutos, CONVERT(VARCHAR(8), DATEADD(MINUTE, DATEDIFF(MINUTE, s.inicio_sesion, COALESCE(s.fin_sesion, GETDATE())), '00:00:00'), 108) AS tiempo_total_horas FROM (SELECT usuario, inicio_sesion AS ultima_sesion FROM Sesiones WHERE inicio_sesion BETWEEN '" + fechaIn + " 00:00:00' AND '" + fechaFin + " 23:59:59') AS ultima_sesion JOIN Sesiones AS s ON s.usuario = ultima_sesion.usuario AND s.inicio_sesion = ultima_sesion.ultima_sesion LEFT JOIN (SELECT usuario, pausa, inicio_pausa, fin_pausa, DATEDIFF(MINUTE, inicio_pausa, fin_pausa) AS  tiempo_total_minutos  FROM Pausas WHERE fin_pausa IS NOT NULL AND fecha_creacion BETWEEN '" + fechaIn + " 00:00:00' AND '" + fechaFin + " 23:59:59' AND fecha_creacion >= (SELECT MAX(fecha_creacion) FROM Pausas WHERE fecha_creacion BETWEEN '" + fechaIn + " 00:00:00' AND '" + fechaFin + " 23:59:59')) AS p ON s.usuario = p.usuario ORDER BY s.usuario ASC, s.inicio_sesion DESC";
                        //sql1 = "SELECT s.usuario, p.pausa, p.inicio_pausa, p.fin_pausa, p.tiempo_total_minutos, CASE WHEN s.fin_sesion IS NOT NULL THEN 'Desconectado' ELSE 'Disponible' END AS Estado_Conexion, CASE WHEN s.fin_sesion IS NULL AND p.fin_pausa IS NULL THEN 'En pausa ' WHEN p.pausa IS NULL AND s.fin_sesion IS NOT NULL THEN 'Desconectado' WHEN p.pausa IS NULL THEN 'En pausa' ELSE 'Sin pausa iniciada' END AS Estado_Pausa, s.inicio_sesion, s.fin_sesion FROM (SELECT usuario, MAX(inicio_sesion) AS ultima_sesion FROM Sesiones WHERE inicio_sesion BETWEEN '" + fechaActualStr + " 00:00:00' AND '" + fechaActualStr + " 23:59:59' GROUP BY usuario) AS ultima_sesion JOIN Sesiones AS s ON s.usuario = ultima_sesion.usuario AND s.inicio_sesion = ultima_sesion.ultima_sesion LEFT JOIN (SELECT usuario, pausa, inicio_pausa, fin_pausa, DATEDIFF(MINUTE, inicio_pausa, fin_pausa) AS tiempo_total_minutos FROM Pausas WHERE fin_pausa IS NOT NULL AND fecha_creacion BETWEEN '" + fechaActualStr + " 00:00:00' AND '" + fechaActualStr + " 23:59:59' AND fecha_creacion >= (SELECT MAX(fecha_creacion) FROM Pausas WHERE fecha_creacion BETWEEN '" + fechaActualStr + " 00:00:00' AND '" + fechaActualStr + " 23:59:59')) AS p ON s.usuario = p.usuario ORDER BY s.usuario ASC, s.inicio_sesion DESC;";
                        //sql1 = "SELECT s.usuario, p.pausa, p.inicio_pausa, p.fin_pausa, p.tiempo_total_minutos, CASE WHEN s.fin_sesion IS NOT NULL THEN 'Desconectado' ELSE 'Disponible' END AS Estado_Conexion, CASE WHEN s.fin_sesion IS NULL AND p.fin_pausa IS NULL THEN 'En pausa ' WHEN p.pausa IS NULL AND s.fin_sesion IS NOT NULL THEN 'Desconectado' WHEN p.pausa IS NULL THEN 'En pausa' ELSE 'Sin pausa iniciada' END AS Estado_Pausa, s.inicio_sesion, s.fin_sesion FROM (SELECT usuario, MAX(inicio_sesion) AS ultima_sesion FROM Sesiones WHERE inicio_sesion BETWEEN '2023-02-27 00:00:00' AND '2023-02-27 23:59:59' GROUP BY usuario) AS ultima_sesion JOIN Sesiones AS s ON s.usuario = ultima_sesion.usuario AND s.inicio_sesion = ultima_sesion.ultima_sesion LEFT JOIN (SELECT usuario, pausa, inicio_pausa, fin_pausa, DATEDIFF(MINUTE, inicio_pausa, fin_pausa) AS tiempo_total_minutos FROM Pausas WHERE fin_pausa IS NOT NULL AND fecha_creacion BETWEEN '2023-02-27 00:00:00' AND '2023-02-27 23:59:59' AND fecha_creacion >= (SELECT MAX(fecha_creacion) FROM Pausas WHERE fecha_creacion BETWEEN '2023-02-27 00:00:00' AND '2023-02-27 23:59:59')) AS p ON s.usuario = p.usuario ORDER BY s.usuario ASC, s.inicio_sesion DESC;";
                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {


                %>
                <tr>
                    <td><%=rs1.getString("usuario")%></td> 
                    <td><%=rs1.getString("Estado_Conexion")%></td> 
                    <td><%=rs1.getString("inicio_sesion")%></td>
                    <td><%=rs1.getString("fin_sesion")%></td>
                    <td><%=rs1.getString("tiempo_total_horas")%></td>
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









