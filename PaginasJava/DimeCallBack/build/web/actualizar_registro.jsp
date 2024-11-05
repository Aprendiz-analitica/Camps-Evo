<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>

<%
    String idTransaction = request.getParameter("idTransaction");
    String fechaIn = request.getParameter("fechaIn");
    String fechaFin = request.getParameter("fechaFin");
    //String idFinal = request.getParameter("idFinal");
    // Realiza la validación y el procesamiento de los datos aquí

    // Establece la conexión con la base de datos
    Connection con = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        con = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");

        // Ejemplo de actualización
        String sqlUpdate = "UPDATE __callback_Dime SET idfinal = ? WHERE Idtransaction = ?";
        pstmt = con.prepareStatement(sqlUpdate);
        pstmt.setString(1, "nuevo_valor");
        pstmt.setString(2, idTransaction);
        pstmt.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
        // Maneja las excepciones adecuadamente
    } finally {
        try {
            if (pstmt != null) {
                pstmt.close();
            }
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Redirige de vuelta a la página original o muestra un mensaje de éxito
    response.sendRedirect("Supervision.jsp?fechaIn=" + fechaIn + "&fechaFin=" + fechaFin);
%>
