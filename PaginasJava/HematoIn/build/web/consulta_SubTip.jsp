<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%
    // Recibimos el parámetro 'sql' enviado por AJAX
    String sqlQuery = request.getParameter("sql");

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        // Establecer la conexión con la base de datos (reemplaza con tus propios datos de conexión)
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        con = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");

        // Preparar la consulta SQL
        ps = con.prepareStatement(sqlQuery);

        // Ejecutar la consulta
        rs = ps.executeQuery();

        // Crear un StringBuilder para construir la respuesta JSON manualmente
        StringBuilder jsonResult = new StringBuilder();
        jsonResult.append("[");

        // Iterar sobre el ResultSet y construir la respuesta JSON
        boolean first = true;
        while (rs.next()) {
            if (!first) {
                jsonResult.append(",");
            }
            jsonResult.append("{");
            jsonResult.append("\"idfinal\": \"").append(rs.getString("idfinal")).append("\",");
            jsonResult.append("\"descripcion\": \"").append(rs.getString("descripcion")).append("\"");
            jsonResult.append("}");
            first = false;
        }

        jsonResult.append("]");

        // Devolvemos la respuesta como JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonResult.toString());

    } catch (Exception ex) {
        // Manejo de excepciones
        ex.printStackTrace();
        response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        response.getWriter().write("{\"error\": \"" + ex.getMessage() + "\"}");
    } finally {
        // Cerrar recursos
        try { if (rs != null) rs.close(); } catch (Exception e) { /* Ignorar */ }
        try { if (ps != null) ps.close(); } catch (Exception e) { /* Ignorar */ }
        try { if (con != null) con.close(); } catch (Exception e) { /* Ignorar */ }
    }
%>
