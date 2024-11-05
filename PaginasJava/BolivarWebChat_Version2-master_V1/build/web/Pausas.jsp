<%@page import="java.io.PrintWriter"%>
<%
// Evitar que la página se almacene en caché
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<%@page import="java.security.MessageDigest"%>
<%@page import="java.time.format.DateTimeFormatter"%>
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

<%// Verifica si el usuario ha iniciado sesión
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
        <title>Constructora Bolivar Leads Reporte de Clientes</title>
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
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link href="css/Lista.css" rel="stylesheet" type="text/css">
        <%@ page import="java.sql.*" %>
    </head>

    <body>
        <%
            Connection conn = null;
            String motivoPausa = ""; // Inicializa la variable
            try {
                // Obtener valores del formulario
                motivoPausa = request.getParameter("motivoPausa");

                String accion = request.getParameter("accion");

                // Obtener la hora actual del servidor
                java.util.Date fechaHoraActual = new java.util.Date();

                // Conectar a la base de datos
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                conn = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");

                // Obtener el nombre de usuario de la sesión actual
                String username = (String) request.getSession().getAttribute("username");

                // Preparar la consulta SQL
                String consulta;
                PreparedStatement pst;

                if ("inicio".equals(accion)) {
                    // Insertar un nuevo registro en la tabla Pausas
                    consulta = "INSERT INTO Pausas (Pausa, inicio_pausa, usuario, fecha_creacion) "
                            + "SELECT ?, ?, ?, ? "
                            + "WHERE NOT EXISTS (SELECT * FROM Pausas WHERE fin_pausa IS NULL AND usuario = ?)";

                    pst = conn.prepareStatement(consulta);
                    pst.setString(1, motivoPausa);
                    pst.setTimestamp(2, new Timestamp(fechaHoraActual.getTime()));
                    pst.setString(3, username);
                    pst.setTimestamp(4, new Timestamp(fechaHoraActual.getTime()));
                    pst.setString(5, username);
                    int filasAfectadas = pst.executeUpdate();

                    if (filasAfectadas > 0) {
                        response.sendRedirect("FinalesGEN.jsp?pausaFinalizadainsert=true&Devs=1&mtv=" + motivoPausa);
                    } else {
                        response.sendRedirect("FinalesGEN.jsp?pausaFinalizadainsert=false&mtv=" + motivoPausa);
                    }
                } else {
                    response.sendRedirect("FinalesGEN.jsp?error=accion_invalida");
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("FinalesGEN.jsp?error=" + e.getMessage());
            } finally {
                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            }
        %>
    </body>
</html>
