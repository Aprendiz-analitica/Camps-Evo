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
        <title>Caja valle personas</title>
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
                    buttons: [
                        'copyHtml5',
                        'excelHtml5',
                        'csvHtml5',
                        'pdfHtml5'
                    ]
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


            function FC() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FC.jsp", {id: idllamada});

            }



            function FEC() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FEC.jsp", {id: idllamada});

            }
            function FGC() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FGC.jsp", {id: idllamada});

            }
            function FG() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FG.jsp", {id: idllamada});

            }
            function FE() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FE.jsp", {id: idllamada});

            }
            function FR() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FR.jsp", {id: idllamada});

            }
            function FRYA() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FRYA.jsp", {id: idllamada});

            }


            function FSF() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FSF.jsp", {id: idllamada});

            }


            function FV() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FV.jsp", {id: idllamada});

            }


            function FLLS() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FLLS.jsp", {id: idllamada});

            }


        </script>





        <style type="text/css">


            .campo{
                font-weight: bold;
                font-family: Lato;
                color: #504741;
                border : 1px solid #00b85d;
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: Lato;
                color: white;
                background-color: #00b85d;
                font-size: 16px;
                border : 1px solid #00b85d;
                width: 100% ;
                height: 50px;

            }
            .text{
                border : 1px solid #00b85d;
                width: 100%;
            }
            .lista{
                border : 1px solid #00b85d;
                color: #504741;
                width: 100%;
            }


            div.dt-buttons{
                position: absolute;
                width: 100%;
                display: flex;
                flex-direction: row;
            }

            div.dt-buttons button, .boton{
                font-family: Lato;
                background-color: #24a26f;
                color: white;
                border: none;
                display: inline-block;
                margin-bottom: 0;
                margin-right: 10px;
                font-weight: 400;
                text-align: center;
                white-space: nowrap;
                vertical-align: middle;
                -ms-touch-action: manipulation;
                touch-action: manipulation;
                cursor: pointer;
                background-image: none;
                border: 1px solid transparent;
                padding: 6px 12px;
                font-size: 14px;
                line-height: 1.42857143;
                border-radius: 4px;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
                width: 75px;
                height: 33px;
            }

            a,a:hover{
                color: black;
                text-decoration: none;
            }
            div.dataTables_filter{
                width: 100%;
                padding-left: 15px;
                margin-right: auto;
                margin-left: auto;
            }
            tr.r{
                color: white;
                font-family: lato;
                background-color: #24a26f;
                border : 1px solid #24a26f !important;
            }
        </style>

        <%

            String fechaIn = request.getParameter("fechaIn");
            String fechaFin = request.getParameter("fechaFin");
            String titulo;
            titulo = "Llamadas sin tipificar desde " + fechaIn + " Hasta " + fechaFin;
        %>

        <%%>


    <center>
        <div style="position: initial; overflow: hidden;"> 
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #f37920;">
                <div class="container-fluid" style="padding: 0px;">
                    <img style="position:relative;" src="https://asertis.com.co/wp-content/uploads/2021/03/logo-asertis-blanco.png" alt="Asertis" width="100px" onclick="inicio()">
                    <div class="collapse navbar-collapse" id="navbarCollapse4">
                        <h3 style="color: #FCFAF9; font-size: 20px; font-weight: unset"><%=titulo%></h3>
                    </div>
                    <a href="lista.jsp">
                        <button type="button" style="width: 150px" class="btn btn-primary boton">Atras</button>
                    </a>
                </div>        
            </nav>

        </div>
        <div>

        </div>

    </center>
</head>

<body style="background-color: #fcfaf9">

    <div class="container" style="width: 100%">            



        <table id="dataTable" class="table table-striped table-bordered" style="color: #808080">

            <thead>            

                <tr class="r" style="">
                    <th>IDTRANSCCION</th>                        
                    <th>FECHA Y HORA</th>
                    <th>IDFINAL</th>
                    <th>AGENTE</th>
                    <th>TELEFONO</th>
                </tr>  
            </thead>        
            <tbody>
                <%
                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");

                        String sql1 = "SELECT "
                                + "A.idTransaccion, "
                                + "A.tFinal, "
                                + "A.idFinal, "
                                + "CONCAT(B.sNombreUsuario, ' ', B.sApellido1Usuario) AS Agente, "
                                + "C.sOrigen "
                                + "FROM "
                                + "tbHistoFTransacciones A "
                                + "INNER JOIN "
                                + "tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "INNER JOIN "
                                + "tbHistoFContactos C ON A.idTransaccion = C.idTransaccion "
                                + "WHERE "
                                + "A.idFinal = 180 "
                                + "AND A.idCampanya = 100000073 "
                                + "AND C.idAgente != 0 "
                                + "AND C.nSentido = 1 "
                                + "AND A.tCreacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59'"
                                + "UNION "
                                + "SELECT "
                                + "A.idTransaccion, "
                                + "A.tFinal, "
                                + "A.idFinal, "
                                + "CONCAT(B.sNombreUsuario, ' ', B.sApellido1Usuario) AS Agente, "
                                + "C.sOrigen "
                                + "FROM "
                                + "TRANSACCION A "
                                + "INNER JOIN "
                                + "tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "INNER JOIN "
                                + "tbContactos C ON A.idTransaccion = C.idTransaccion "
                                + "WHERE "
                                + "A.idFinal = 180 "
                                + "AND A.idCampanya = 100000073 "
                                + "AND C.idAgente != 0 "
                                + "AND C.nSentido = 1 "
                                + "AND A.tCreacion BETWEEN '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59'";

                        // sql1 = "Select A.idTransaccion,A.tFinal,A.idFinal,CONCAT(B.sNombreUsuario,' ',B.sApellido1Usuario) as Agente,C.sOrigen from tbHistoFTransacciones A INNER JOIN tbHistoDAgentes B  ON A.idAgente = B.idAgente INNER JOIN tbHistoFContactos C ON A.idTransaccion = C.idTransaccion where A.idFinal = 180 and A.idCampanya = 100000073 and C.idAgente !=0 and C.nSentido = 1 and A.tCreacion  between '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59' UNION(Select A.idTransaccion,A.tFinal,A.idFinal,CONCAT(B.sNombreUsuario,' ',B.sApellido1Usuario) as Agente,C.sOrigen from TRANSACCION A INNER JOIN tbHistoDAgentes B  ON A.idAgente = B.idAgente INNER JOIN tbContactos C ON A.idTransaccion = C.idTransaccion where A.idFinal = 180 and A.idCampanya = 100000073 and C.idAgente !=0 and C.nSentido = 1 and A.tCreacion  between '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59')";
                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td><%=rs1.getString("idTransaccion")%></td>  
                    <td><%=rs1.getString("tFinal")%></td>
                    <td><%=rs1.getString("idFinal")%></td>
                    <td><%=rs1.getString("Agente")%></td>
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

                        <tr style="font-weight: bold; font-family: Lato; color: #FCFAF9; background-color: #24a26f;font-size: 18px; border : 1px solid #24a26f; width: 100% ;height: 50px">
                            <th colspan="3">FINALES</th>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalesac" type="button" value="CONVENIO" onclick="FC()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalescc" type="button" value="EDUCACIÓN Y CULTURA" onclick ="FEC()" />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalescs" type="button" value="GESTIÓN COMERCIAL" onclick="FGC()"  />
                            </td>                            
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalesec" type="button" value="GENERALES" onclick ="FG()" />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalesdep" type="button" value="EMPLEABILIDAD" onclick="FE()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalesfsd" type="button" value="RECREACIÓN" onclick ="FR()" />
                            </td>                            
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalesmv" type="button" value="REGISTRO Y APORTES" onclick="FRYA()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalesps" type="button" value="SERVICIOS FINANCIEROS" onclick="FSF()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalesrt" type="button" value="VIVIENDA" onclick="FV()"  />
                            </td>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; padding: 10px">
                                <input class="boton" id="finalesras" type="button" value="LLAMADA SALIENTE" onclick="FLLS()"  />
                            </td>


                        </tr>





                    </table>

                    <br>

                    <button type="button" class="boton" style="background-color: #24a26f;color: white;border-color: #24a26f;" data-dismiss="modal">VOLVER</button>


                </div>

            </div>
        </div>
    </div>








    <div class="modal" id="ModalFinalesDetalle" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false"  >
        <div class="modal-dialog modal-lg">
            <div class="modal-content" >
                <div class="modal-body" id ="contenido2">

                </div>
                <div class="modal-footer">
                    <button type="button"  data-dismiss="modal" class="btn btn-secondary" style="background-color: #00b85d;color: white;border-color: #fcfaf9;">Atras</button>
                </div>
            </div>
        </div>
    </div> 


</body>


</html>