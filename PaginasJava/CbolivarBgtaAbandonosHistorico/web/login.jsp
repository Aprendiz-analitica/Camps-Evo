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


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio Sesión</title>
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


        <%    try {
                // Obtener los valores del formulario
                String username = request.getParameter("username");
                String pass = request.getParameter("contrasena");
                String idusuario = "";
                String nusuario = "";
                String ausuario = "";
                int tipousuario;

                // Calcular el hash MD5 de la contraseña
                MessageDigest md = MessageDigest.getInstance("MD5");
                byte[] hash = md.digest(pass.getBytes());

                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                
                Connection conn = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                // Realizar la validación de las credenciales del usuario
                //Connection conn = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");
                PreparedStatement pst = conn.prepareStatement("SELECT * FROM USUARIO where LOGIN = ? and Password = ? ");
                pst.setString(1, username);
                pst.setBytes(2, hash);
                ResultSet rs = pst.executeQuery();
                

                // Verificar si se ha iniciado sesión
                // Autenticar al usuario
                // ...
                // 30 minutos * 60 segundos/minuto = 1800 segundos
                // Establecer una sesión para el usuario
                HttpSession sesion = request.getSession();

                sesion.setAttribute("username", username); // "username" es el nombre de la variable de sesión que se utilizará en la página JSP

                if (rs.next()) {
                    idusuario = rs.getString("IDUSUARIO");
                    nusuario = rs.getString("NOMBRE");
                    ausuario = rs.getString("APELLIDO1");
                    tipousuario = rs.getInt("IDTIPO");

                    // Las credenciales son válidas
                    response.sendRedirect("Manager.jsp");         

                } else {
                    // Las credenciales son inválidas, redirigir al usuario de vuelta a la página de inicio de sesión con un mensaje de error
                    response.sendRedirect("Inicio.jsp?error=1");
                    //Permite Mostrar Alert si la contraseña o usuario es incorrecto
                }
            } catch (SQLException e) {
                // Manejar cualquier excepción que ocurra durante la validación de las credenciales del usuario
                // Mostrar un mensaje de error al usuario
                out.println("<p>Se ha producido un error al intentar iniciar sesión. Por favor, comuníquese con el administrador del sistema.</p>");
                e.printStackTrace();
            }

        %>





    </body>


</html>