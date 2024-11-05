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
        <title>Comfenalco Caja Cartagena llamadas sin tipificar</title>
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
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link href="css/Listas.css" rel="stylesheet" type="text/css">
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
                    buttons: []
                });
                var temp;
                var settings = {
                    "url": url + "/auth/login",
                    "method": "POST",
                    "timeout": 0,
                    "headers": {
                        "username": "UsrCBolivarBgta",
                        "password": "*CB0L1b4RB0Gt4-O22."
                    },
                };
                $.ajax(settings).done(function (response) {
                    token = response.token;


                });
            });
            function editar(idtransaccion) {
                idllamada = idtransaccion;
                $('#ModalFinales').modal('show');

            }
            function finalesac() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesAC.jsp", {id: idllamada});
               
            }
            function finalescc() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesCC.jsp", {id: idllamada});
               
            }
            function finalescs() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesCS.jsp", {id: idllamada});
               
            }
            function finalesec() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesEC.jsp", {id: idllamada});
                
            }
            function finalesdep() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesDEP.jsp", {id: idllamada});
                
            }
            function finalesfsd() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesFSD.jsp", {id: idllamada});
                
            }
            function finalesmv() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesMV.jsp", {id: idllamada});
                
            }
            function finalesps() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesPS.jsp", {id: idllamada});
                
            }
            function finalesrt() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesRT.jsp", {id: idllamada});
                
            }
            function finalesras() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesRAS.jsp", {id: idllamada});
                
            }             
            function finalesviv() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesVIV.jsp", {id: idllamada});
                
            }
            function finalesti() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesTI.jsp", {id: idllamada});
                
            }
            function finaleslsg() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesLSG.jsp", {id: idllamada});
                
            }             
            function finalesgo() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesGO.jsp", {id: idllamada});
                
            }
              function finalesTRANS() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesTRANS.jsp", {id: idllamada});
                
            }
            function inicio(){
              window.location.href = "index.html";   
                
            }
            
            
        </script>
        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: Lato;
                color: #504741;
                border : 1px solid #24a26f; 
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: Lato;
                color: white;
                background-color: #24a26f;
                font-size: 16px; 
                border : 1px solid #24a26f; 
                width: 100% ;
                height: 50px;

            }
            .text{
                border : 1px solid #24a26f;
                width: 100%;
            }
            .lista{
                border : 1px solid #24a26f;
                color: #504741;
                width: 100%;
            }
            .boton{
                width: 200px;
            }
            


        </style>

        <%

            String idagente = request.getParameter("codigoagente");

        %>
       

    <center>
        <div style="position: initial; overflow: hidden;" > 
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #f37920;">
                <div class="container-fluid" style="padding: 0px;">
                    <img style="position:relative;" src="https://asertis.com.co/wp-content/uploads/2021/03/logo-asertis-blanco.png" alt="Asertis" width="100px" onclick="inicio()"  >
                    <div class="collapse navbar-collapse" id="navbarCollapse4">

                    </div>
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
            <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #24a26f; border : 1px solid #24a26f !important;  ">
                <th>IDTRANSACCION</th>                        
                <th>FECHA Y HORA</th>
                <th>IDFINAL</th>
                <th>TELEFONO</th>
            </tr>  
            </thead>        
            <tbody>
                
                
                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        // Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");
                       
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                      
                       
                        String sql1 = "";
                        sql1 = "SELECT A.idTransaccion,\n" +
    "       A.tFinal,\n" +
    "       A.idFinal,\n" +
    "       CONCAT(B.sNombreUsuario, ' ', B.sApellido1Usuario) AS Agente,\n" +
    "       C.sOrigen\n" +
    "FROM tbHistoFTransacciones A\n" +
    "INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente\n" +
    "INNER JOIN tbHistoFContactos C ON A.idTransaccion = C.idTransaccion\n" +
    "WHERE A.idFinal = 1500\n" +
    "      AND A.idCampanya = 100000225\n" +
    "      AND C.idAgente = " + idagente + "\n" +
    "      AND C.nSentido = 1\n" +
    "      AND A.tCreacion >= DATEADD(MONTH, -3, GETDATE())\n" +
    "UNION\n" +
    "(SELECT A.idTransaccion,\n" +
    "        A.tFinal,\n" +
    "        A.idFinal,\n" +
    "        CONCAT(B.sNombreUsuario, ' ', B.sApellido1Usuario) AS Agente,\n" +
    "        C.sOrigen\n" +
    " FROM TRANSACCION A\n" +
    " INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente\n" +
    " INNER JOIN tbContactos C ON A.idTransaccion = C.idTransaccion\n" +
    " WHERE A.idFinal = 1500\n" +
    "       AND A.idCampanya = 100000225\n" +
    "       AND C.idAgente = " + idagente + "\n" +
    "       AND C.nSentido = 1\n" +
    "       AND A.tCreacion >= DATEADD(MONTH, -3, GETDATE()))";
                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td onclick="editar(<%=rs1.getString("idTransaccion")%>)">
                        <%=rs1.getString("idTransaccion")%></td>  
                    <td><%=rs1.getString("tFinal")%></td>
                    <td><%=rs1.getString("idFinal")%></td>
                    <td><%=rs1.getString("sOrigen")%></td>                  
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
    <div class="modal" id="ModalFinales" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content" >
                <div class="modal-body" id ="contenido">

                    <table class="formulario" style="width:100%;">
                        
                        <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #ed7203;font-size: 18px; border : 1px solid #ed7203; width: 100% ;height: 50px">
                            <th colspan="3">FINALES</th>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesac" type="button" value="ATENCIÓN AL CLIENTE" onclick="finalesac()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalescc" type="button" value="CARTERA CORPORATIVA" onclick ="finalescc()" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalescs" type="button" value="CREDITO SOCIAL" onclick="finalescs()"  />
                            </td>                            
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesec" type="button" value="EDUCACION Y CULTURA" onclick ="finalesec()" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesdep" type="button" value="DEPORTE" onclick="finalesdep()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesfsd" type="button" value="FOSFEC - SUBSIDIO AL DESEMPLEO" onclick ="finalesfsd()" />
                            </td>                            
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesmv" type="button" value="MERCADEO Y VENTA" onclick="finalesmv()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesps" type="button" value="PROTECCION SOCIAL" onclick="finalesps()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesrt" type="button" value="RECREACION Y TURISMO" onclick="finalesrt()"  />
                            </td>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesras" type="button" value="REGISTRO, APORTES Y SUBSIDIO" onclick="finalesras()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesviv" type="button" value="VIVIENDA" onclick="finalesviv()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesti" type="button" value="TAREA INTERNA" onclick="finalesti()"  />
                            </td>         
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finaleslsg" type="button" value="LLAMADAS SIN GESTION" onclick="finaleslsg()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 10px">
                                <input class="boton" id="finalesgo" type="button" value="GESTION OUTBOUND" onclick="finalesgo()"  />
                            </td>
                             <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalesgo" type="button" value="FINALES TRANSFERENCIAS" onclick="finalesTRANS()"  />
                            </td>  
                        </tr>
                    </table>
                    <div class="modal-footer" style="text-align: center; padding: 1rem">
                        <button  type="button" class="boton" style="background-color: #24a26f;color: white;border-color: #24a26f;"  data-dismiss="modal">ATRAS</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="modal" id="ModalFinalesDetalle" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false"  >
        <div class="modal-dialog modal-lg">
            <div class="modal-content" >
                <div class="modal-body" id ="contenido2">

                </div>
                <div class="modal-footer" style="text-align: center; padding: 1rem">
                        <button  type="button" class="boton" style="background-color: #24a26f;color: white;border-color: #24a26f;"  data-dismiss="modal">ATRAS</button>
                </div>
            </div>
        </div>
    </div> 


</body>


</html>