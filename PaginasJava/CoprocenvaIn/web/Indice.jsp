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

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coprocenva Llamadas sin tipificar</title>
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
            var url = "https://api.fenalcovalle.com";
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
                //  console.log(afiliacion);
                $('#ModalFinalesDetalle').modal('show');
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Otros.jsp", {id: idllamada});
            }
            
            function Credito() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Credito.jsp", {id: idllamada});
            }
            function Novedades_Del_Asociado() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Novedades_Del_Asociado.jsp", {id: idllamada});
            }
            function Ahorro() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Ahorro.jsp", {id: idllamada});
            }
            function Cartera() {
                document.getElementById("contenido2").innerHTML = "";               
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Cartera.jsp", {id: idllamada});
            }
            function Canales_Virtuales_y_recaudo() {
                document.getElementById("contenido2").innerHTML = "";                
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Canales_Virtuales_y_recaudo.jsp", {id: idllamada});
            }
            function Bienestar_Social() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Bienestar_Social.jsp", {id: idllamada});
            }
            function Otros() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Otros.jsp", {id: idllamada});
            }
            function Informacion_General() {
                document.getElementById("contenido2").innerHTML = "";                
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Informacion_General.jsp", {id: idllamada});
            }
            function Informacion_Facturacion_General() {
                document.getElementById("contenido2").innerHTML = "";                
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Informacion_Facturacion_General.jsp", {id: idllamada});
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

<body style="background-color: #f0f0f0">

    <div class="container" style="width: 100%">            



        <table id="dataTable" class="table table-striped table-bordered" style="color: #1a72ba">



            <thead>
            <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #24a26f; border : 1px solid #24a26f !important;  ">
                <th>IDTRANSACCION</th>                        
                <th>FECHA Y HORA</th>
                <th>IDFINAL</th>
                <th>TELEFONO</th>
                <th>DOCUMENTO</th>
                <th>NOMBRES</th>
                <th>APELLIDOS</th>
            </tr>  
            </thead>          
            <tbody>
                <%                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        // Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");

                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        String sql1
                                = "SELECT "
                                + "    A.idTransaccion, "
                                + "    A.tFinal, "
                                + "    A.idFinal, "
                                + "    C.sOrigen, "
                                + "    D.IDORIGINAL as 'NUMDOC', "
                                + "    UPPER(D.NOMBRE) as 'NOMBRES', "
                                + "    UPPER(D.APELLIDO1) as 'APELLIDOS' "
                                + "FROM "
                                + "    tbHistoFTransacciones A "
                                + "    INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "    INNER JOIN tbHistoFContactos C ON A.idTransaccion = C.idTransaccion "
                                + "    LEFT JOIN CLIENTES D ON A.idSujeto = D.IDSUJETO "
                                + "WHERE "
                                + "    A.idFinal = 167 "
                                + "       AND A.idCampanya = 100000052\n"
                                + "       AND C.idAgente = " + idagente + "\n"
                                + "       AND MONTH(A.tCreacion) = MONTH(GETDATE()) AND YEAR(A.tCreacion) = YEAR(GETDATE())\n"
                                + "UNION "
                                + "    (SELECT "
                                + "        A.idTransaccion, "
                                + "        A.tFinal, "
                                + "        A.idFinal, "
                                + "        C.sOrigen, "
                                + "        D.IDORIGINAL as 'NUMDOC', "
                                + "        UPPER(D.NOMBRE) as 'NOMBRES', "
                                + "        UPPER(D.APELLIDO1) as 'APELLIDOS' "
                                + "    FROM "
                                + "        TRANSACCION A "
                                + "        INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "        INNER JOIN tbContactos C ON A.idTransaccion = C.idTransaccion "
                                + "        LEFT JOIN CLIENTES D ON A.idSujeto = D.IDSUJETO "
                                + "    WHERE "
                                + "        A.idFinal = 167 "
                                + "       AND A.idCampanya = 100000052\n"
                                + "       AND C.idAgente = " + idagente + "\n"
                                + "       AND MONTH(A.tCreacion) = MONTH(GETDATE()) AND YEAR(A.tCreacion) = YEAR(GETDATE()))";
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
                    <td><%=rs1.getString("NUMDOC")%></td>
                    <td><%=rs1.getString("NOMBRES")%></td>
                    <td><%=rs1.getString("APELLIDOS")%></td>                    
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
    <!-- Modal Finales -->
    <div class="modal" id="ModalFinales" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false">
        <div class="modal-dialog modal-lg">
            <div class="modal-content" >
                <div class="modal-body" id ="contenido">

                    <table class="formulario" style="width:100%;">

                        <tr style="font-weight: bold; font-family: Lato; color: white; background-color: #ed7203;font-size: 18px; border : 1px solid #ed7203; width: 100% ;height: 50px">
                            <th colspan="3">TIPIFICACIONES</th>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
                                <input class="boton" id="Credito" type="button" value="CREDITO" onclick="Credito()"   />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
                                <input class="boton" id="Novedades_Del_Asociado" type="button" value="NOVEDADES DEL ASOCIADO" onclick ="Novedades_Del_Asociado()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
                                <input class="boton" id="Ahorro" type="button" value="AHORRO" onclick="Ahorro()"   />
                            </td>                            
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
                                <input class="boton" id="Cartera" type="button" value="CARTERA" onclick ="Cartera()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
                                <input class="boton" id="Canales_Virtuales_y_recaudo" type="button" value="CANALES VIRTUALES Y DE RECAUDO" onclick="Canales_Virtuales_y_recaudo()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
                                <input class="boton" id="Bienestar_Social" type="button" value="BIENESTAR SOCIAL" onclick ="Bienestar_Social()" />
                            </td>                            
                        </tr>

                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
                                <input class="boton" id="Otros" type="button" value="OTROS" onclick="Otros()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
                                <input class="boton" id="Informacion_General" type="button" value="INFORMACION GENERAL" onclick="Informacion_General()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px">
                                <input class="boton" id="Informacion_Facturacion_General" type="button" value="INFORMACION FACTURACION GENERAL" onclick ="Informacion_Facturacion_General()"  />
                        </tr>
                       
                         
                        </tr><!-- comment -->


                    </table>
                    <div class="modal-footer">
                        <button  type="button" class="btn btn-success btn-block" style="background-color: #24a26f;color: white;border-color: #24a26f; font-weight: bold;font-size: 12px"  data-dismiss="modal">ATRAS</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Modal FinalesDetalle -->
    <div class="modal" id="ModalFinalesDetalle" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-backdrop="static" keyboard="false"  >
        <div class="modal-dialog modal-lg">
            <div class="modal-content" >
                <div class="modal-body" id ="contenido2">

                </div>
                <div class="modal-footer">
                        <button  type="button" class="btn btn-success btn-block" style="background-color: #24a26f;color: white;border-color: #24a26f; font-weight: bold;font-size: 12px"  data-dismiss="modal">ATRAS</button>
                </div>
            </div>
        </div>
    </div> 


</body>





