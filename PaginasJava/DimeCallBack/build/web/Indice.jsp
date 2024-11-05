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
        <title>DIME Llamadas sin tipificar</title>
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
            function AsignacionDeCita() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("AsignacionDeCita.jsp", {id: idllamada});

            }
            function CancelacionDeCita() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("CancelacionDeCita.jsp", {id: idllamada});

            }
            function ConfirmacionDeCita() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("ConfirmacionDeCita.jsp", {id: idllamada});

            }
            function SinDisponibilidadConsultaExterna() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("SinDisponibilidadConsultaExterna.jsp", {id: idllamada});

            }
            function SinDisponibilidadCardiologia() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("SinDisponibilidadCardiologia.jsp", {id: idllamada});

            }
            function InformacionGeneral() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("InformacionGeneral.jsp", {id: idllamada});

            }
            function SinDisponibilidadProcedimientoCardiologia() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("SinDisponibilidadProcedimientoCardiologia.jsp", {id: idllamada});

            }
            function SinDisponibilidadUnidadDigestiva() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("SinDisponibilidadUnidadDigestiva.jsp", {id: idllamada});

            }
            function SinDisponibilidadAgenda() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("SinDisponibilidadAgenda.jsp", {id: idllamada});

            }
            function ReprogramacionDeCita() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("ReprogramacionDeCita.jsp", {id: idllamada});

            }
            function FSTC() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FSTC.jsp", {id: idllamada});

            }
            function Otros() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Otros.jsp", {id: idllamada});

            }
            function UsuarioNoAceptaCita() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("UsuarioNoAceptaCita.jsp", {id: idllamada});

            }
            function SinDisponibilidadCitaCirugia() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("SinDisponibilidadCitaCirugia.jsp", {id: idllamada});

            }


            function FSANITAS_CDC() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FSANITAS_CDC.jsp", {id: idllamada});

            }

            function FSANITAS_CONDC() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FSANITAS_CONDC.jsp", {id: idllamada});

            }


            function FSANITAS_RDC() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FSANITAS_RDC.jsp", {id: idllamada});

            }



            function FSANITAS_SD() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FSANITAS_SD.jsp", {id: idllamada});

            }




            function FSANITASGENERAL() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FSANITAS_IG.jsp", {id: idllamada});

            }
            function FSANITASGENERAL() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FSANITAS_IG.jsp", {id: idllamada});

            }
            function SanitasPGP() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("SanitasPGP.jsp", {id: idllamada});

            }
            function AsignacionDeCitaSanitasPGP() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("AsignacionDeCitaSanitasPGP.jsp", {id: idllamada});

            }
            function ConfirmacionDeCitaSanitasPGP() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("ConfirmacionDeCitaSanitasPGP.jsp", {id: idllamada});

            }
            function ReprogramacionDeCitaSanitasPGP() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("ReprogramacionDeCitaSanitasPGP.jsp", {id: idllamada});

            }
            function CancelacionDeCitaSanitasPGP() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("CancelacionDeCitaSanitasPGP.jsp", {id: idllamada});

            }
            function SinDisponibilidadSanitasPGP() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("SinDisponibilidadSanitasPGP.jsp", {id: idllamada});

            }
            function InformacionGeneralSanitasPGP() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("InformacionGeneralSanitasPGP.jsp", {id: idllamada});

            }
            function Cotizacion() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("Cotizacion.jsp", {id: idllamada});

            }
 
        </script>
        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: #504741;
                border : 1px solid #00854fe6;
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
                color: white;
                background-color: #00854fe6;
                font-size: 16px;
                border : 1px solid #00854fe6;
                width: 100% ;
                height: 50px;

            }
            .text{
                border : 1px solid #00854fe6;
                width: 100%;
            }
            .lista{
                border : 1px solid #00854fe6;
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
        <div style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" 
                                                            style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 271.49,-49.98 500.27,147.55 L500.00,0.00 L0.00,0.00 Z" 
                                                            style="stroke: none; fill: #00854fe6;"></path></svg></div>

        <div style="text-align: right; height: 45px; width: 1110px">
            <a href="Inicio.jsp"><button type="button" 
                                         style="background-color: #00854fe6;color: white;border-color: #fcfaf9;font-family: 'Roboto', sans-serif; font-weight: bold;" 
                                         class="btn btn-primary">SALIR</button></a>    
        </div> 
        <img src="img/logo.png" alt="Dime" width="200px">


    </center>


</head>

<body style="background-color: #fcfaf9">

    <div class="container" style="width: 100%">            



        <table id="dataTable" class="table table-striped table-bordered" style="color: #fcfaf9">

            <thead>

                <tr style="font-weight: bold; font-family: 'Roboto', sans-serif; color: white; background-color: #00854fe6; border : 1px solid #008c44;">
                    <th>Id.Transaccion</th>                        
                    <th>Fecha y Hora</th>
                    <th>IdFinal</th>
                    <th>Agente</th>
                    <th>Télefono</th>
                </tr>  
            </thead>        
            <tbody>
                <%                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");

                        String sql1 = "";
                        sql1 = "Select A.idTransaccion,A.tFinal,A.idFinal,CONCAT(B.sNombreUsuario,' ',B.sApellido1Usuario) as Agente,C.sOrigen from tbHistoFTransacciones A INNER JOIN tbHistoDAgentes B  ON A.idAgente = B.idAgente INNER JOIN tbHistoFContactos C ON A.idTransaccion = C.idTransaccion where A.idFinal = 177 and A.idCampanya = 100000218 and C.idAgente =" + idagente + " and C.nSentido = 1  and A.tCreacion >= DATEADD(MONTH, -3, GETDATE()) UNION(Select A.idTransaccion,A.tFinal,A.idFinal,CONCAT(B.sNombreUsuario,' ',B.sApellido1Usuario) as Agente,C.sOrigen from TRANSACCION A INNER JOIN tbHistoDAgentes B  ON A.idAgente = B.idAgente INNER JOIN tbContactos C ON A.idTransaccion = C.idTransaccion where A.idFinal = 177 and A.idCampanya = 100000218 and C.idAgente =" + idagente + " and C.nSentido = 1 and  A.tCreacion >= DATEADD(MONTH, -3, GETDATE()))";
                        PreparedStatement ps1 = con1.prepareStatement(sql1);
                        ResultSet rs1 = ps1.executeQuery();
                        while (rs1.next() == true) {
                %>
                <tr>
                    <td onclick="editar(<%=rs1.getString("idTransaccion")%>)">
                        <%=rs1.getString("idTransaccion")%></td>  
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

                        <tr style="font-weight: bold; font-family: 'Roboto', sans-serif; color: white; background-color: #00854fe6;font-size: 13px; border : 1px solid #00854fe6; width: 100% ;height: 50px">
                            <th colspan="3">FINALES</th>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalesac" type="button" value="ASIGNACION DE CITA" onclick="AsignacionDeCita()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalescc" type="button" value="CANCELACION CITA" onclick ="CancelacionDeCita()" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalescs" type="button" value="CONFIRMACION CITA" onclick="ConfirmacionDeCita()"  />
                            </td>                            
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalesec" type="button" value="SIN DISPONIBILIDAD CONSULTA EXTERNA" onclick ="SinDisponibilidadConsultaExterna()" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalesdep" type="button" value="SIN DISPONIBILIDAD CARDIOLOGIA" onclick="SinDisponibilidadCardiologia()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: 'Roboto', sans-serif; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalesfsd" type="button" value="INFORMACION GENERAL" onclick ="InformacionGeneral()" />
                            </td>                            
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalesmv" type="button" value="SIN DISPONIBILIDAD PROCEDIMIENTO CARDIOLOGIA" onclick="SinDisponibilidadProcedimientoCardiologia()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalesps" type="button" value="SIN DISPONIBILIDAD UNIDAD DIGESTIVA" onclick="SinDisponibilidadUnidadDigestiva()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalesrt" type="button" value="SIN DISPONIBILIDAD AGENDA" onclick="SinDisponibilidadAgenda()"  />
                            </td>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalesras" type="button" value="REPROGRAMACION CITA" onclick="ReprogramacionDeCita()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finalesviv" type="button" value="USUARIO NO ACEPTA CITA" onclick="UsuarioNoAceptaCita()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finaleslsg" type="button" value="OTROS" onclick="Otros()"  />
                            </td>         
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                <input class="boton" id="finaessdsd" type="button" value="SIN DISPONIBILIDAD CITA CIRUGÍA" onclick="SinDisponibilidadCitaCirugia()"  />
                            </td>

                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #00854fe6; height: 50px;">
                                 <input class="boton" id="sanitas" type="button" value="SANITAS PGP" onclick="SanitasPGP()"  />
           
                            </td> 
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #00854fe6; height: 50px;">
                            
                            </td> 
                        </tr>
                    </table>

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
                    <button type="button"  data-dismiss="modal" class="btn btn-secondary" style="background-color: #00854fe6;color: white;border-color: #fcfaf9;">Atras</button>
                </div>
            </div>
        </div>
    </div> 


</body>


</html>