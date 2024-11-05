<%-- 
    Document   : Indice = Original
    Created on : 15/07/2019, 11:47:10 AM
    Author     : jvaldes
--%>
<%@page import="java.lang.String"%>
<%
// Evitar que la página se almacene en caché
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
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

    // Obtener los valores del formulario
    String numdoc = request.getParameter("inumdoc");
    String nombre1 = request.getParameter("inombre1");
    String nombre2 = request.getParameter("inombre2");
   // String telefono = request.getParameter("telefono");
    String apellido1 = request.getParameter("iapellido1");
    String apellido2 = request.getParameter("iapellido2");
    String tipificacion = request.getParameter("Momento");
    String subtipificacion = request.getParameter("Necesidad");
    String idcall = request.getParameter("idcall");



    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

    // Realizar la validación de las credenciales del usuario
   // Connection conn = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");
     Connection conn = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                      
                       
    // Crear la sentencia SQL para insertar los datos en la tabla
    String sql = "INSERT INTO Webchatbolivar (numdoc, name, name2, lastname, lastname2, t4, t5, idtransaccion) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    PreparedStatement statement = conn.prepareStatement(sql);
    statement.setString(1, numdoc);
    statement.setString(2, nombre1);
    statement.setString(3, nombre2);
    statement.setString(4, apellido1);
    statement.setString(5, apellido2);
    statement.setString(6, tipificacion);
    statement.setString(7, subtipificacion);
    statement.setString(8, idcall);



    // Ejecutar la sentencia SQL y cerrar la conexión
    statement.executeUpdate();
    conn.commit();
    statement.close();
%>


    </body>


</html>