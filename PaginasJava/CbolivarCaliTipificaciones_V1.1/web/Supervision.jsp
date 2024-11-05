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
        <title>Constructora Bolivar Cali Llamadas sin tipificar</title>
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
                    <a href="Inicio.jsp" class="navbar-brand">Salir</a
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
                <tr style="font-weight: bold; font-family: Roboto; color: white; background-color: #2b8b4b; border : 1px solid #2b8b4b;">
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
                        //Connection con1 = DriverManager.getConnection("jdbc:sqlserver://200.1.1.103:1433;DatabaseName=EVOLUTIONDB", "sa", "pcs3rv3r");
                        Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                        String sql1 = "";
                        sql1 = "Select A.idTransaccion,A.tFinal,A.idFinal,CONCAT(B.sNombreUsuario,' ',B.sApellido1Usuario) as Agente,C.sOrigen from tbHistoFTransacciones A INNER JOIN tbHistoDAgentes B  ON A.idAgente = B.idAgente INNER JOIN tbHistoFContactos C ON A.idTransaccion = C.idTransaccion where A.idFinal = 186 and A.idCampanya in (100000357,100000360,100000359,100000358) and C.idAgente !=0 and C.nSentido = 1 and A.tCreacion  between '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59' UNION(Select A.idTransaccion,A.tFinal,A.idFinal,CONCAT(B.sNombreUsuario,' ',B.sApellido1Usuario) as Agente,C.sOrigen from TRANSACCION A INNER JOIN tbHistoDAgentes B  ON A.idAgente = B.idAgente INNER JOIN tbContactos C ON A.idTransaccion = C.idTransaccion where A.idFinal = 186 and A.idCampanya in (100000357,100000360,100000359,100000358) and C.idAgente !=0 and C.nSentido = 1 and A.tCreacion  between '" + fechaIn + "T00:00:00' AND '" + fechaFin + "T23:59:59')";
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
                        <tr style="font-weight: bold; font-family: Roboto; color: white; background-color: #2b8b4b;font-size: 16px; border : 1px solid #2b8b4b; width: 100% ;height: 50px">
                            <th colspan="2">FINALES</th>
                        </tr>
                        <tr>
                            <td  style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%" id="tramiteycartera" type="button" value="Tramite y Cartera" onclick="finalestyc()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%" id="postventayconstruccion" type="button" value="Postventa y Construcción" onclick ="finalespyc()" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%" id="comercial" type="button" value="Comercial" onclick="finalescom()"  />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%" id="general" type="button" value="General" onclick ="finalesgen()" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="221" type="button" value="Transferencia Area Administrativa" onclick ="actualizar('221', 'TRANSFER AREA ADMINISTRATIVA')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="220" type="button" value="Transferencia menu Bogota" onclick ="actualizar('220', 'TRANSFER MENU BGTA')" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="222" type="button" value="Llamada muda" onclick ="actualizar('222', 'LLAMADA MUDA')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="175" type="button" value="Llamada de prueba" onclick ="actualizar('175', 'LLAMADA DE PRUEBA')" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="176" type="button" value="Llamada equivocada" onclick ="actualizar('176', 'LLAMADA EQUIVOCADA')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="177" type="button" value="No titular" onclick ="actualizar('177', 'NO TITULAR')" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="168" type="button" value="Interesados no dejan datos" onclick ="actualizar('168', 'INTERESADOS NO DEJAN DATOS')" />
                            </td>
                            <td style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 50%"  id="167" type="button" value="Interesados en proyectos no vigentes" onclick ="actualizar('167', 'INTERESADOS EN PROYECTOS NO VI')" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #2b8b4b; height: 50px;width: 50%">
                                <input style="width: 25%"  id="173" type="button" value="Informacion otras areas" onclick ="actualizar('173', 'INFORMACION OTRAS AREAS')" />
                            </td>
                        </tr>

                    </table>
                    <div class="modal-footer">
                        <button  type="button" onclick="" data-dismiss="modal">Cerrar</button>
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
                <div class="modal-footer">
                    <button type="button"  data-dismiss="modal" onclick="">Cerrar</button>
                </div>
            </div>
        </div>
    </div> 


</body>


</html>