<%-- 
    Document   : Indice = Original
    Created on : 15/07/2019, 11:47:10 AM
    Author     : jvaldes
--%>
<%
// Evitar que la página se almacene en caché
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<%@page import="java.security.MessageDigest"%>
<%

%>
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

        <%            out.println("Inicio del bloque try-catch.");
            try {
                // Obtener los valores del formulario
                String username = request.getParameter("username");
                String pass = request.getParameter("contrasena");
                out.println("Username: " + username);
                out.println("Contraseña: " + pass);

                // Calcular el hash MD5 de la contraseña
                MessageDigest md = MessageDigest.getInstance("MD5");
                byte[] hash = md.digest(pass.getBytes());
                out.println("Hash de la contraseña: " + new String(hash));

                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                out.println("Driver cargado exitosamente.");

                // Realizar la validación de las credenciales del usuario
                Connection conn = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                out.println("Conexión a la base de datos establecida.");

                PreparedStatement pst = conn.prepareStatement("SELECT * FROM USUARIO where LOGIN = ? and Password = ?");
                pst.setString(1, username);
                pst.setBytes(2, hash);
                ResultSet rs = pst.executeQuery();
                out.println("Consulta ejecutada.");

                HttpSession sesion = request.getSession();
                sesion.setAttribute("username", username);

                if (rs.next()) {
                    out.println("Usuario autenticado correctamente.");
                    int tipousuario = rs.getInt("IDTIPO");
                    LocalDateTime now = LocalDateTime.now();
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                    String fechaHora = now.format(formatter);

                    PreparedStatement insertStmt = conn.prepareStatement("INSERT INTO Sesiones (usuario, inicio_sesion) VALUES (?, ?)");
                    insertStmt.setString(1, username);
                    insertStmt.setString(2, fechaHora);
                    insertStmt.executeUpdate();
                    conn.commit();
                    out.println("Registro de sesión insertado correctamente.");

                    session.setAttribute("usuarioLogueado", "true");

                    if (tipousuario == 1 || tipousuario == 5) {
                        response.sendRedirect("lista.jsp");
                    } else {
                        response.sendRedirect("FinalesGEN.jsp");
                    }

                } else {
                    out.println("Credenciales inválidas.");
                    response.sendRedirect("inicio.jsp?error=1");
                }
            } catch (Exception e) {
                out.println("<p>Se ha producido un error al intentar iniciar sesión. Por favor, comuníquese con el administrador del sistema.</p>");
                //e.printStackTrace(out);
            }
            out.println("Fin del bloque try-catch.");
        %>

    </body>
</html>
