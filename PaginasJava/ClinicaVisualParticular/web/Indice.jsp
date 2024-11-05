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
        <title>Clinica Visual Auditiva Llamadas sin tipificar</title>
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
                //  console.log(afiliacion);
                $('#ModalFinales').modal('show');
            }
            function actualizarDirecto(fidfinal, fdesfinal) {
                var updatefinal = {
                    "url": url + "/webservicefenalco/cbolivarbgta/actualizarpqrs",
                    "method": "POST",
                    "timeout": 0,
                    "headers": {
                        "Authorization": "Bearer " + token,
                        "Content-Type": "application/json"
                    },
                    "data": JSON.stringify({
                        "idtipificacion": fidfinal,
                        "idcall": idllamada,
                        "destipificacion": fdesfinal
                    }),

                };

                $.ajax(updatefinal).done(function (response) {
                    console.log(response);
                    if (response.error == true) {
                        alert(response.respuesta);
                        return false;
                    } else {
                        Swal.fire({
                            icon: 'success',
                            title: 'Tipificacion actualizada',
                            showConfirmButton: false,
                            timer: 1500
                        });
                        location.reload();
                    }
                });
            }




            function FinalesOtros() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesOtros.jsp", {id: idllamada});
            }

            function FinalesCitaReasignada() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesCitaReasignada.jsp", {id: idllamada});

            }
            
            function consultadetarifa() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("ConsultaDeTarifa.jsp", {id: idllamada});

            }
            
            function FinalesOftalmologia() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesOftalmologia.jsp", {id: idllamada});
            }
            
            function FinalesFonoaudiologia() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesFonoaudiologia.jsp", {id: idllamada});
            }
            
            function FinalesBajaVision() {
                document.getElementById("contenido2").innerHTML = "";

                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesBajaVision.jsp", {id: idllamada});
            }
            
            function FinalesOptometria() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesOptometria.jsp", {id: idllamada});
            }
            
            function FinalesOtorrino() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesOtorrino.jsp", {id: idllamada});
            }
            
            function FinalesPsicologia() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesPsicologia.jsp", {id: idllamada});
            }

            function FinalesTransferenciaEPS() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesTransferenciaEPS.jsp", {id: idllamada});
            }

            function FinalesBiometria() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesBiometria.jsp", {id: idllamada});
            }

            function FinalesAngiografia() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesAngiografia.jsp", {id: idllamada});
            }


            function FinalesAgendaPotencial() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesAgendaPotencial.jsp", {id: idllamada});
            }
            
            function FinalesTomografia() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesTomografia.jsp", {id: idllamada});
            }

            function FinalesAudiologia() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesAudiologia.jsp", {id: idllamada});
            }
            
            function FinalesAudifonos() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesAudifonos.jsp", {id: idllamada});
            }
            
            function FinalesPotencialesPEAECOG() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesPotencialesPEAECOG.jsp", {id: idllamada});
            }
            
            function FinalesElectronistografiaVHITENG() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesElectronistografiaVHITENG.jsp", {id: idllamada});
            }

            function Tapones() {
                document.getElementById("contenido2").innerHTML = "";
                $('#ModalFinalesDetalle').modal('show');
                $("#contenido2").load("FinalesTapones.jsp", {id: idllamada});
            }
            
            function inicio() {
                window.location.href = "index.html";

            }





        </script>


        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: 'Lato';
                color: #504741;
                border : 1px solid #249E6B;
                
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: 'Lato';
                color: white;
                background-color: #249E6B;
                font-size: 16px;
                border : 1px solid #249E6B;
                width: 100% ;
                

            }
            .text{
                border : 1px solid #249E6B;
                width: 100%;
            }
            .lista{
                border : 1px solid #249E6B;
                color: #504741;
                width: 100%;
            }
            input.boton{
                background-color: #249E6B;
                border: none;
                height: 50px;
                width: 230px;
                color: #ffffff;
                border-radius: 5px;
                padding: 10px 5px ;
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
                <tr style="font-weight: bold; font-family: 'Lato'; color: white; background-color: #249E6B; border : 1px solid #249E6B !important;  ">
                    <th>IDTRANSACCION</th>                        
                    <th>FECHA Y HORA</th>
                    <th>IDFINAL</th>
                    <th>TELEFONO</th>
                    <th>DOCUMENTO</th>
                    <th>PRIMER NOMBRE</th>
                    <th>SEGUNDO NOMBRE</th>
                    <th>PRIMER APELLIDO</th>
                    <th>SEGUNDO APELLIDO</th>

                </tr>  
            </thead>          
            <tbody>
                <%                    try {
                        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                        // Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");

                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.83:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        String sql1
                                = "SELECT "
                                + "    A.idTransaccion, "
                                + "    A.tFinal, "
                                + "    A.idFinal, "
                                + "    C.sOrigen, "
                                + "    D.IDORIGINAL as 'NUMDOC', "
                                + "    UPPER(D.NOMBRE) as 'NOMBRE1', "
                                + "    UPPER(D.sNombreCompleto) as 'NOMBRE2', "
                                + "    UPPER(D.APELLIDO1) as 'APELLIDO1', "
                                + "    UPPER(D.APELLIDO2) as 'APELLIDO2' "
                                + "FROM "
                                + "    tbHistoFTransacciones A "
                                + "    INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "    INNER JOIN tbHistoFContactos C ON A.idTransaccion = C.idTransaccion "
                                + "    LEFT JOIN CLIENTES D ON A.idSujeto = D.IDSUJETO "
                                + "WHERE "
                                + "    A.idFinal = 1000 "
                                + "       AND A.idCampanya = 100000462\n"
                                + "       AND C.idAgente = " + idagente + "\n"
                                + "       AND C.nSentido = 1\n"
                                + "       AND A.tCreacion >= DATEADD(MONTH, -1, GETDATE())\n"
                                + "UNION "
                                + "    (SELECT "
                                + "        A.idTransaccion, "
                                + "        A.tFinal, "
                                + "        A.idFinal, "
                                + "        C.sOrigen, "
                                + "        D.IDORIGINAL as 'NUMDOC', "
                                + "        UPPER(D.NOMBRE) as 'NOMBRE1', "
                                + "        UPPER(D.sNombreCompleto) as 'NOMBRE2', "
                                + "        UPPER(D.APELLIDO1) as 'APELLIDO1', "
                                + "        UPPER(D.APELLIDO2) as 'APELLIDO2' "
                                + "    FROM "
                                + "        TRANSACCION A "
                                + "        INNER JOIN tbHistoDAgentes B ON A.idAgente = B.idAgente "
                                + "        INNER JOIN tbContactos C ON A.idTransaccion = C.idTransaccion "
                                + "        LEFT JOIN CLIENTES D ON A.idSujeto = D.IDSUJETO "
                                + "    WHERE "
                                + "        A.idFinal = 1000 "
                                + "       AND A.idCampanya = 100000462\n"
                                + "       AND C.idAgente = " + idagente + "\n"
                                + "       AND C.nSentido = 1\n"
                                + "       AND A.tCreacion >= DATEADD(MONTH, -1, GETDATE()))";
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
                    <td><%=rs1.getString("NOMBRE1")%></td>
                    <td><%=rs1.getString("NOMBRE2")%></td>
                    <td><%=rs1.getString("APELLIDO1")%></td>
                    <td><%=rs1.getString("APELLIDO2")%></td>                    
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

                        <tr style="font-weight: bold; font-family: 'Lato'; color: white; background-color: #ED7203;font-size: 18px;  width: 100%; height: 50px;">
                            <th colspan="3" style="text-align: center">FINALES</th>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; ">
                                <input class="boton" id="FinalesOtros" type="button" value="OTROS" onclick="FinalesOtros()"   />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesOftalmologia" type="button" value="CITA REASIGNADA" onclick ="FinalesCitaReasignada()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="consultadetarifa" type="button" value="CONSULTA DE TARIFA" onclick="consultadetarifa()"   />
                            </td>  
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesOftalmologia" type="button" value="OFTALMOLOGÍA" onclick="FinalesOftalmologia()"   />
                            </td>  
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesFonoaudiologia" type="button" value="FONOAUDIOLOGÍA" onclick ="FinalesFonoaudiologia()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesOptometria" type="button" value="OPTOMETRÍA" onclick="FinalesOptometria()"  />
                            </td>                                                       
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesBajaVision" type="button" value="BAJA VISIÓN" onclick ="FinalesBajaVision()" />
                            </td> 
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="125" type="button" value="ORTÓPTICA" onclick ="actualizarDirecto('125', 'ORTÓPTICA')"  />
                            </td>

                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesTransExtAdminist" type="button" value="OTORRINO" onclick="FinalesOtorrino()"  />
                            </td>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesPsicologia" type="button" value="PSICOLOGÍA" onclick="FinalesPsicologia()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="125" type="button" value="CAMPO VISUAL" onclick ="actualizarDirecto('128', 'CAMPO VISUAL')"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="125" type="button" value="TERAPIA OCUPACIONAL" onclick ="actualizarDirecto('217', 'TERAPIA OCUPACIONAL')"  />
                            </td>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesTransferenciaEPS" type="button" value="TRANSFERENCIA EPS" onclick="FinalesTransferenciaEPS()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesBiometria" type="button" value="BIOMETRÍA" onclick="FinalesBiometria()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesAngiografia" type="button" value="ANGIOGRAFÍA" onclick="FinalesAngiografia()"  />
                            </td>
                        </tr><!-- comment -->
                        <tr>

                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="125" type="button" value="ECOGRAFIA" onclick ="actualizarDirecto('129', 'ECOGRAFIA')"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="125" type="button" value="ESTRODOSCOPIA" onclick ="actualizarDirecto('239', 'ESTRODOSCOPIA')"  />
                            </td>
                                                        <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesAgendaPotencial" type="button" value="AGENDA POTENCIAL" onclick="FinalesAgendaPotencial()"  />
                            </td>
                        </tr>
                        <tr>

                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesTransConsulPrivado" type="button" value="TOMOGRAFÍA" onclick="FinalesTomografia()"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="125" type="button" value="PROTESIS OCULAR" onclick ="actualizarDirecto('225', 'PROTESIS OCULAR')"  />
                            </td>
                                                        <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesGeneral" type="button" value="AUDILOGÍA" onclick="FinalesAudiologia()"  />
                            </td>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesTransConsulPrivado" type="button" value="AUDÍFONOS" onclick="FinalesAudifonos()"  />
                            </td>

                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="240" type="button" value="NASOLARRINGOSCOPIA" onclick ="actualizarDirecto('240', 'NASOLARRINGOSCOPIA')"  />
                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesElectronistografiaVHITENG" type="button" value="ELECTRONISTOGRAFÍA" onclick="FinalesElectronistografiaVHITENG()"   />
                            </td>
                        </tr>

                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="FinalesTransConsulPrivado" type="button" value="TAPONES" onclick="Tapones()"  />
                            </td>

                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="264" type="button" value="PAQUETE REFRACTIVA" onclick ="actualizarDirecto('264', 'Paquete Refractiva')"  />

                            </td>
                            <td  style="text-align: center; font-weight: bold; font-family: 'Lato'; color: grey; border : 1px solid #ed7203; padding: 10px">
                                <input class="boton" id="265" type="button" value="PAQUETE FACOREFRACTIVA" onclick ="actualizarDirecto('265', 'Paquete Facorefractiva')"  />

                            </td>
                        </tr>


                    </table>
                    <div class="modal-footer">
                        <button  type="button" class="btn btn-success btn-block" style="background-color: #249E6B;color: white;border-color: #249E6B; font-weight: bold;font-size: 12px"  data-dismiss="modal">ATRAS</button>
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
                    <button  type="button" class="btn btn-success btn-block" style="background-color: #249E6B;color: white;border-color: #249E6B; font-weight: bold;font-size: 12px"  data-dismiss="modal">ATRAS</button>
                </div>
            </div>
        </div>
    </div> 


</body>


</html>


