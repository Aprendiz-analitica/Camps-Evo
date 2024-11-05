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
        <title>Constructora Bolivar Leads</title>
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

            });

        </script>
        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: #504741;
                border : 1px solid #2b8b4b;
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: white;
                background-color: #2b8b4b;
                font-size: 16px;
                border : 1px solid #2b8b4b;
                width: 100% ;
                height: 50px;

            }
            .text{
                border : 1px solid #2b8b4b;
                width: 100%;
            }
            .lista{
                border : 1px solid #2b8b4b;
                color: #504741;
                width: 100%;
            }
            .boton{
                width: 200px;
            }



        </style>

        <%
            int desfinal = Integer.parseInt(request.getParameter("desfinal"));
            String fechaIn = request.getParameter("fechaIn");
            String fechaFin = request.getParameter("fechaFin");
        %>
    <center>
        <div style="position: initial; overflow: hidden;" > 
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #2b8b4b;">
                <div class="container-fluid">
                    <img style="position:relative;" src="logo-bolivar_scroll.svg" alt="ConstructoraBolivar"  >
                    <div class="collapse navbar-collapse" id="navbarCollapse4">
                        <div class="navbar-nav">
                        </div>
                    </div>
                    <a href="lista.jsp" class="navbar-brand">Salir</a
                </div>        
            </nav>

        </div>
            <div>
                
            </div>

    </center>
</head>

<body style="background-color: #fcfaf9">

    <div class="container" style="width: 100%">            



        <table id="dataTable" class="table table-striped table-bordered" style="color: #f8db66">
		

            <thead>
            <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #008c44; border : 1px solid #008c44;">                  

                <th>Idoriginal</th>
                <th>Estado Leads</th>
                <th>Estado</th>
                <th>Razon Estado</th>
                <th>Número de documento</th>
                <th>Primer Nombre</th>
                <th>Segundo Nombre</th>
                <th>Primer Apellido</th>
                <th>Segundo Apellido</th>
                <th>Email</th>
                <th>Telefono</th>
                <th>Medios Digitales</th>
                <th>Propietario</th>
                <th>Territorio</th>
                <th>ProyectoInteres</th>
                <th>Pais</th>
                <th>Ciudad</th>
                <th>Agente</th>
                <th>Ultima llamada</th>
                <th>Final</th>
                <th>Leads Reactivado</th>
                <th>Final Descalificado</th>
                <th>Motivo Descalificado</th>
                <th>Final Sin interes</th>
                <th>Observacion Sin interes</th>
                <th>Final No gusta Proyecto</th>
                <th>Observacion No gusta Proyecto</th>
                <th>Idregistro</th>
            </tr>  
            </thead>        
            <tbody>
                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        //Connection con1 = DriverManager.getConnection("jdbc:sqlserver://200.1.1.103:1433;DatabaseName=EVOLUTIONDB", "sa", "pcs3rv3r");
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        String sql1 = "";
                        sql1 = "SELECT c.IDORIGINAL, PivotTable.EstadoLeads, PivotTable.Estado, PivotTable.RazonEstado, c.sDNI, C.NOMBRE, c.sNombreCompleto AS 'SegundoNombre', c.APELLIDO1, c.APELLIDO2, C.EMAIL, C.TELEFONO, PivotTable.MediosDigitales, PivotTable.Propietario, PivotTable.Territorio, PivotTable.ProyectoInteres, PivotTable.Pais, PivotTable.Ciudad, PivotTable.IDREGISTRO, PivotTable.LEADSREACTIVADO, CONCAT(age.sNombreUsuario, ' ', age.sApellido1Usuario) AS 'Agente', t.tFinal AS 'F.Fin', CASE WHEN idFinal = 17 THEN 'Fuera Intervalo Rellamada' WHEN idFinal = 109 THEN 'Se envian datos al asesor' WHEN idFinal = 101 THEN 'Llamar Luego' WHEN idFinal = 103 THEN 'Buzon' WHEN idFinal = 105 THEN 'Leads ya asignado a un asesor' WHEN idFinal = 107 THEN 'Duplicado' WHEN idFinal = 108 THEN 'Telefono no contesta' WHEN idFinal = 125 THEN 'Asistirá salas de venta' WHEN idFinal = 126 THEN 'B2CHAT - Transferido Asesor' WHEN idFinal = 124 THEN 'B2CHAT' WHEN idFinal = 148 THEN 'Duplicado Perfilado' ELSE 'Descalificado' END AS FINAL, CASE WHEN idFinal = 109 THEN '-' WHEN idFinal = 17 THEN '-' WHEN idFinal = 101 THEN '-' WHEN idFinal = 103 THEN '-' WHEN idFinal = 105 THEN '-' WHEN idFinal = 107 THEN '-' WHEN idFinal = 108 THEN '-' WHEN idFinal = 125 THEN '-' WHEN idFinal = 126 THEN '-' WHEN idFinal = 124 THEN '-' WHEN idFinal = 148 THEN '-' WHEN idFinal = 111 THEN 'Compro usado' WHEN idFinal = 112 THEN 'Compro competencia' WHEN idFinal = 113 THEN 'No apto credito' WHEN idFinal = 114 THEN 'No contesta' WHEN idFinal = 115 THEN 'Atendido por otro asesor' WHEN idFinal = 116 THEN 'No apto' WHEN idFinal = 117 THEN 'Telefono errado' WHEN idFinal = 118 THEN 'Visitara sala de ventas' WHEN idFinal = 119 THEN 'Referido a Bogota' WHEN idFinal = 140 THEN 'Por presupuesto' WHEN idFinal = 139 THEN 'Llamar en otro mes' ELSE 'Sin interes' END AS 'FINAL_2', PivotTable.MOTIVODESCALIFICADO AS 'MOTIVODESCALIFICADO', CASE WHEN idFinal = 109 THEN '-' WHEN idFinal = 17 THEN '-' WHEN idFinal = 101 THEN '-' WHEN idFinal = 103 THEN '-' WHEN idFinal = 105 THEN '-' WHEN idFinal = 107 THEN '-' WHEN idFinal = 108 THEN '-' WHEN idFinal = 125 THEN '-' WHEN idFinal = 126 THEN '-' WHEN idFinal = 124 THEN '-' WHEN idFinal = 111 THEN '-' WHEN idFinal = 112 THEN '-' WHEN idFinal = 113 THEN '-' WHEN idFinal = 114 THEN '-' WHEN idFinal = 115 THEN '-' WHEN idFinal = 116 THEN '-' WHEN idFinal = 117 THEN '-' WHEN idFinal = 118 THEN '-' WHEN idFinal = 119 THEN '-' WHEN idFinal = 140 THEN '-' WHEN idFinal = 139 THEN '-' WHEN idFinal = 148 THEN '-' WHEN idFinal = 127 THEN 'Interés en otras ciudades' WHEN idFinal = 128 THEN 'Interés en otro país' WHEN idFinal = 129 THEN 'Interés en otra zona de la ciudad' WHEN idFinal = 130 THEN 'Interés en otra constructora' WHEN idFinal = 131 THEN 'Cliente fuera del país' WHEN idFinal = 132 THEN 'No acepta información' WHEN idFinal = 133 THEN 'Busca Usado' WHEN idFinal = 134 THEN 'Cliente no se registro' WHEN idFinal = 135 THEN 'Cliente cambio de planes' WHEN idFinal = 136 THEN 'Gestión B2chat' WHEN idFinal = 137 THEN 'No autoriza Habeas Data' WHEN idFinal = 138 THEN 'Extranjero' ELSE 'No Le gusto el proyecto' END AS 'FINAL_3', PivotTable.OBSERVACIONESSININTERES AS 'OBSERVACIONESSININTERES', CASE WHEN idFinal = 141 THEN 'Ubicación' WHEN idFinal = 142 THEN 'Precio' WHEN idFinal = 143 THEN 'Área' WHEN idFinal = 144 THEN 'Ascensor' WHEN idFinal = 145 THEN 'Zonas Comunes' WHEN idFinal = 146 THEN 'Parqueadero' WHEN idFinal = 147 THEN 'Otros' ELSE '-' END AS 'FINAL_4', PivotTable.OBSERVACIONNOGUSTAPROYECTO AS 'OBSERVACIONNOGUSTAPROYECTO' FROM (SELECT clave, idSujeto, valor FROM tbDatosCliente) AS SourceTable PIVOT (MAX(valor) FOR clave IN (MOTIVODESCALIFICADO, OBSERVACIONESSININTERES, OBSERVACIONNOGUSTAPROYECTO, EstadoLeads, Estado, RazonEstado, MediosDigitales, Propietario, Territorio, ProyectoInteres, Pais, Ciudad, IDREGISTRO, LEADSREACTIVADO)) AS PivotTable INNER JOIN tbHistoFTransacciones t ON PivotTable.idSujeto = t.idSujeto INNER JOIN CLIENTES c ON c.IDSUJETO = t.idSujeto INNER JOIN tbHistoDAgentes age ON t.idAgente = age.idAgente WHERE t.idTransaccion IN (SELECT MAX(vt.idTransaccion) AS 'idTransaccion' FROM tbHistoFTransacciones vt WHERE idCampanya = '" + desfinal + "' AND vt.tCreacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59' GROUP BY vt.sIdOriginal) UNION (SELECT c.IDORIGINAL, PivotTable.EstadoLeads, PivotTable.Estado, PivotTable.RazonEstado, c.sDNI, C.NOMBRE, c.sNombreCompleto AS 'SegundoNombre', c.APELLIDO1, c.APELLIDO2, C.EMAIL, C.TELEFONO, PivotTable.MediosDigitales, PivotTable.Propietario, PivotTable.Territorio, PivotTable.ProyectoInteres, PivotTable.Pais, PivotTable.Ciudad, PivotTable.IDREGISTRO, PivotTable.LEADSREACTIVADO, CONCAT(age.sNombreUsuario, ' ', age.sApellido1Usuario) AS 'Agente', t.tFinal AS 'F.Fin', CASE WHEN idFinal = 17 THEN 'Fuera Intervalo Rellamada' WHEN idFinal = 109 THEN 'Se envian datos al asesor' WHEN idFinal = 101 THEN 'Llamar Luego' WHEN idFinal = 103 THEN 'Buzon' WHEN idFinal = 105 THEN 'Leads ya asignado a un asesor' WHEN idFinal = 107 THEN 'Duplicado' WHEN idFinal = 108 THEN 'Telefono no contesta' WHEN idFinal = 125 THEN 'Asistirá salas de venta' WHEN idFinal = 126 THEN 'B2CHAT - Transferido Asesor' WHEN idFinal = 124 THEN 'B2CHAT' WHEN idFinal = 148 THEN 'Duplicado Perfilado' ELSE 'Descalificado' END AS FINAL, CASE WHEN idFinal = 109 THEN '-' WHEN idFinal = 17 THEN '-' WHEN idFinal = 101 THEN '-' WHEN idFinal = 103 THEN '-' WHEN idFinal = 105 THEN '-' WHEN idFinal = 107 THEN '-' WHEN idFinal = 108 THEN '-' WHEN idFinal = 125 THEN '-' WHEN idFinal = 126 THEN '-' WHEN idFinal = 124 THEN '-' WHEN idFinal = 148 THEN '-' WHEN idFinal = 111 THEN 'Compro usado' WHEN idFinal = 112 THEN 'Compro competencia' WHEN idFinal = 113 THEN 'No apto credito' WHEN idFinal = 114 THEN 'No contesta' WHEN idFinal = 115 THEN 'Atendido por otro asesor' WHEN idFinal = 116 THEN 'No apto' WHEN idFinal = 117 THEN 'Telefono errado' WHEN idFinal = 118 THEN 'Visitara sala de ventas' WHEN idFinal = 119 THEN 'Referido a Bogota' WHEN idFinal = 140 THEN 'Por presupuesto' WHEN idFinal = 139 THEN 'Llamar en otro mes' ELSE 'Sin interes' END AS 'FINAL_2', PivotTable.MOTIVODESCALIFICADO AS 'MOTIVODESCALIFICADO', CASE WHEN idFinal = 109 THEN '-' WHEN idFinal = 17 THEN '-' WHEN idFinal = 101 THEN '-' WHEN idFinal = 103 THEN '-' WHEN idFinal = 105 THEN '-' WHEN idFinal = 107 THEN '-' WHEN idFinal = 108 THEN '-' WHEN idFinal = 125 THEN '-' WHEN idFinal = 126 THEN '-' WHEN idFinal = 124 THEN '-' WHEN idFinal = 111 THEN '-' WHEN idFinal = 112 THEN '-' WHEN idFinal = 113 THEN '-' WHEN idFinal = 114 THEN '-' WHEN idFinal = 115 THEN '-' WHEN idFinal = 116 THEN '-' WHEN idFinal = 117 THEN '-' WHEN idFinal = 118 THEN '-' WHEN idFinal = 119 THEN '-' WHEN idFinal = 140 THEN '-' WHEN idFinal = 139 THEN '-' WHEN idFinal = 148 THEN '-' WHEN idFinal = 127 THEN 'Interés en otras ciudades' WHEN idFinal = 128 THEN 'Interés en otro país' WHEN idFinal = 129 THEN 'Interés en otra zona de la ciudad' WHEN idFinal = 130 THEN 'Interés en otra constructora' WHEN idFinal = 131 THEN 'Cliente fuera del país' WHEN idFinal = 132 THEN 'No acepta información' WHEN idFinal = 133 THEN 'Busca Usado' WHEN idFinal = 134 THEN 'Cliente no se registro' WHEN idFinal = 135 THEN 'Cliente cambio de planes' WHEN idFinal = 136 THEN 'Gestión B2chat' WHEN idFinal = 137 THEN 'No autoriza Habeas Data' WHEN idFinal = 138 THEN 'Extranjero' ELSE 'No Le gusto el proyecto' END AS 'FINAL_3', PivotTable.OBSERVACIONESSININTERES AS 'OBSERVACIONESSININTERES', CASE WHEN idFinal = 141 THEN 'Ubicación' WHEN idFinal = 142 THEN 'Precio' WHEN idFinal = 143 THEN 'Área' WHEN idFinal = 144 THEN 'Ascensor' WHEN idFinal = 145 THEN 'Zonas Comunes' WHEN idFinal = 146 THEN 'Parqueadero' WHEN idFinal = 147 THEN 'Otros' ELSE '-' END AS 'FINAL_4', PivotTable.OBSERVACIONNOGUSTAPROYECTO AS 'OBSERVACIONNOGUSTAPROYECTO' FROM (SELECT clave, idSujeto, valor FROM tbDatosCliente) AS SourceTable PIVOT (MAX(valor) FOR clave IN (MOTIVODESCALIFICADO, OBSERVACIONESSININTERES, OBSERVACIONNOGUSTAPROYECTO, EstadoLeads, Estado, RazonEstado, MediosDigitales, Propietario, Territorio, ProyectoInteres, Pais, Ciudad, IDREGISTRO, LEADSREACTIVADO)) AS PivotTable INNER JOIN TRANSACCION t ON PivotTable.idSujeto = t.idSujeto INNER JOIN CLIENTES c ON c.IDSUJETO = t.idSujeto INNER JOIN tbHistoDAgentes age ON t.idAgente = age.idAgente WHERE t.idTransaccion IN (SELECT MAX(vt.idTransaccion) AS 'idTransaccion' FROM TRANSACCION vt WHERE idCampanya = '" + desfinal + "' AND vt.tCreacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59' GROUP BY vt.idSujeto))";
                        PreparedStatement ps1 = con1.prepareStatement(sql1);

                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td><%=rs1.getString("IDORIGINAL")%></td>  
                    <td><%=rs1.getString("EstadoLeads")%></td>
                    <td><%=rs1.getString("Estado")%></td>
                    <td><%=rs1.getString("RazonEstado")%></td>
                    <td><%=rs1.getString("sDNI")%></td>
                    <td><%=rs1.getString("NOMBRE")%></td>
                    <td><%=rs1.getString("SegundoNombre")%></td>
                    <td><%=rs1.getString("APELLIDO1")%></td>
                    <td><%=rs1.getString("APELLIDO2")%></td>
                    <td><%=rs1.getString("EMAIL")%></td>
                    <td><%=rs1.getString("TELEFONO")%></td>
                    <td><%=rs1.getString("MediosDigitales")%></td>
                    <td><%=rs1.getString("Propietario")%></td>
                    <td><%=rs1.getString("Territorio")%></td>
                    <td><%=rs1.getString("ProyectoInteres")%></td>
                    <td><%=rs1.getString("Pais")%></td>
                    <td><%=rs1.getString("Ciudad")%></td>
                    <td><%=rs1.getString("Agente")%></td>
                    <td><%=rs1.getString("F.Fin")%></td>
                    <td><%=rs1.getString("FINAL")%></td>
                    <td><%=rs1.getString("LEADSREACTIVADO")%></td>
                    <td><%=rs1.getString("FINAL_2")%></td>
                    <td><%=rs1.getString("MOTIVODESCALIFICADO")%></td>
                    <td><%=rs1.getString("FINAL_3")%></td>
                    <td><%=rs1.getString("OBSERVACIONESSININTERES")%></td>
                    <td><%=rs1.getString("FINAL_4")%></td>
                    <td><%=rs1.getString("OBSERVACIONNOGUSTAPROYECTO")%></td>
                    <td><%=rs1.getString("IDREGISTRO")%></td>
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