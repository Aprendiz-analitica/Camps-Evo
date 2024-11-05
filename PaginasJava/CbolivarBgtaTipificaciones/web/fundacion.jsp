<%-- 
    Document   : newjsp
    Created on : 17/05/2022, 04:36:25 PM
    Author     : jvaldes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>




    <table class="formulario" style="width:100%;">        
        <thead>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="css/Lista.css" rel="stylesheet" type="text/css">
        <script>
            var token;
            var url = "https://api.fenalcovalle.com";

            $(document).ready(function () {
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




            function insertarpqrs() {
                var idcall = $('input:hidden[name=idllamada]').val();
                var idoriginal = $('input:text[name=numdoc]').val();
                var nombre1 = $('input:text[name=nombre1]').val();
                var nombre2 = $('input:text[name=nombre2]').val();
                var apellido1 = $('input:text[name=apellido1]').val();
                var apellido2 = $('input:text[name=apellido2]').val();
                var t1 = $("#t1 option:selected").text();
                var t2 = $("#t2 option:selected").text();
                var t3 = $("#t3 option:selected").text();
                var t4 = $("#t4 option:selected").text();
                var t5 = $("#t5 option:selected").text();
                var t6 = $("#t6 option:selected").text();
                var t7 = $("#t7 option:selected").text();
                var t8 = $("#t8 option:selected").text();
                var descripcion = $('input:text[name=descripcion]').val();
                var check = $('input:checkbox[id=CheckBox1]').val();
                var sede = $("#sedes option:selected").text();
                if (idoriginal == '' || idoriginal == 'null') {
                    alert("El campo Número de documento esta vacio y es obligatorio");
                    return false;
                } else if (nombre1 == '' || nombre1 == 'null') {
                    alert("El campo Primer nombre esta vacio y es obligatorio");
                    return false;
                } else if (apellido1 == '' || apellido1 == 'null') {
                    alert("El campo Primer Apellido esta vacio y es obligatorio");
                    return false;
                } else if (t1 == '') {
                    alert("El campo Origen caso esta vacio y es obligatorio");
                    return false;
                } else if (t2 == '') {
                    alert("El campo Area / Programa esta vacio y es obligatorio");
                    return false;
                } else if (t3 == '') {
                    alert("El campo Tipo de llamada esta vacio y es obligatorio");
                    return false;
                } else if (t4 == '' || $("#t4 option:selected").val() == 0) {
                    alert("El campo Descripcion de la solicitud esta vacio y es obligatorio");
                    return false;
                } else if (t5 == '' || $("#t5 option:selected").val() == 0) {
                    alert("El campo Detalle de la solicitud - Razon esta vacio y es obligatorio");
                    return false;
                } else if (t6 == '' || $("#t6 option:selected").val() == 0) {
                    alert("El campo Se escalaria a esta vacio y es obligatorio");
                    return false;
                } else if (t7 == '' || $("#t7 option:selected").val() == 0) {
                    alert("El campo Aplicativo esta vacio y es obligatorio");
                    return false;
                } else if (t8 == '' || $("#t8 option:selected").val() == 0) {
                    alert("El campo Nivel de servicio esperado esta vacio y es obligatorio");
                    return false;
                }
                $('input:button[id=Button9]').prop('disabled', true);
                var settings = {
                    "url": url + "/webservicefenalco/cbolivarbgta/ingresarpqrsora",
                    "method": "POST",
                    "timeout": 0,
                    "headers": {
                        "Authorization": "Bearer " + token,
                        "Content-Type": "application/json"
                    },
                    "data": JSON.stringify({
                        "idcall": idcall,
                        "idoriginal": idoriginal,
                        "nombre1": nombre1,
                        "nombre2": nombre2,
                        "apellido1": apellido1,
                        "apellido2": apellido2,
                        "origen": t1,
                        "cierre": t2,
                        "motivo": t3,
                        "momento": t4,
                        "necesidad": t5,
                        "razon": t6,
                        "actividad": t7,
                        "area": t8,
                        "descripcion": descripcion,
                        "check": check,
                        "sede": sede
                    }),
                };
                $.ajax(settings).done(function (response) {
                    var updatepqrs = {
                        "url": url + "/webservicefenalco/cbolivarbgta/actualizarpqrsOra",
                        "method": "POST",
                        "timeout": 0,
                        "headers": {
                            "Authorization": "Bearer " + token,
                            "Content-Type": "application/json"
                        },
                        "data": JSON.stringify({
                            "idtipificacion": "103",
                            "idcall": idcall,
                            "destipificacion": "LLAMADA FUNDACION"
                        }),
                    };

                    $.ajax(updatepqrs).done(function (response) {
                        alert("Tipificacion creada");
                        location.reload();
                    });
                });
            }
        </script>
        <style type="text/css">
            .campo{
                font-weight: bold;
                font-family: Roboto;
                color: #504741;
                border : 1px solid #2b8b4b;
                height: 50px;
                width: 25%;
                padding: 10px;
            }
            .titulo{
                font-weight: bold;
                font-family: Roboto;
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


        </style>
        <tr class="titulo">
            <th colspan="3" style="text-align: center">Constructora Bolivar Inbound Datos</th>
        </tr>
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");
            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");

                //Connection con1 = DriverManager.getConnection("jdbc:sqlserver://30.10.5.100:1433;DatabaseName=EVOLUTIONDB", "admin", "F3n4lc02021*");
                String sql1 = "";
                sql1 = "Select MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN IDORIGINAL is NULL THEN  '' ELSE IDORIGINAL END ) END ))  AS numdoc,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN NOMBRE is NULL THEN  '' ELSE NOMBRE END ) END )) AS name,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN sNombreCompleto is NULL THEN  '' ELSE sNombreCompleto END ) END )) AS name2,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN APELLIDO1 is NULL THEN  '' ELSE APELLIDO1 END ) END )) AS lastname,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN APELLIDO2 is NULL THEN  '' ELSE APELLIDO2 END ) END )) AS lastname2,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN APELLIDO1 is NULL THEN  '' ELSE APELLIDO1 END ) END )) AS lastname,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN TELEFONO is NULL THEN  '' ELSE TELEFONO END ) END )) AS numtel,MAX(TEXTO2) as check1 from clientes where TEXTO1 = '" + idcall + "'OR  IDSUJETO = (Select idsujeto  from TRANSACCION WHERE idTransaccion = " + idcall + " UNION (Select idsujeto  from tbHistoFTransacciones WHERE idTransaccion = " + idcall + "))";
                //sql1 = "Select IDORIGINAL as numdoc,NOMBRE as name,sNombreCompleto AS name2,APELLIDO1 as lastname,APELLIDO2 as lastname2,TELEFONO as numtel,TEXTO2 as check1  from clientes where TEXTO1 = '"+idcall+"'";
                PreparedStatement ps1 = con1.prepareStatement(sql1);
                ResultSet rs1 = ps1.executeQuery();
                while (rs1.next() == true) {
        %>
        <tr>
            <td class="campo">
                <input id="idllamada" name="idllamada" type="hidden" value="<%=idcall%>">
                Numero de Documento:<br />
                <input class="text" type="text" id="IdOriginal" name="numdoc" value ="<%=rs1.getString("numdoc")%>" required minlength="1" maxlength="500" size="10%" >
            </td>
            <td class="campo">
                Primer nombre:<br />
                <input class="text" type="text" id="name1" name="nombre1" value ="<%=rs1.getString("name")%>" required minlength="1" maxlength="500" size="10%" >

            </td>
            <td class="campo">
                Segundo nombre:<br />
                <input class="text" type="text" id="name2" name="nombre2" value ="<%=rs1.getString("name2")%>" required minlength="1" maxlength="500" size="10%" >
            </td>
        </tr>
        <tr>
            <td class="campo">
                Numero de Telefono:<br />
                <input class="text" type="text" id="telefono" name="numtel" value ="<%=rs1.getString("numtel")%>" required minlength="1" maxlength="500" size="10%" >
            </td>
            <td class="campo">
                Primer apellido<br />
                <input class="text" type="text" id="lastname1" name="apellido1" value ="<%=rs1.getString("lastname")%>" required minlength="1" maxlength="500" size="10%" >
                <br />
            </td>
            <td class="campo">
                Segundo apellido:<br />
                <input class="text" type="text" id="lastname2" name="apellido2" value ="<%=rs1.getString("lastname2")%>" required minlength="1" maxlength="500" size="10%" >
            </td>
        </tr>
        <tr class="titulo">
            <th colspan="3" style="text-align: center">Finales</th>
        </tr>
        <tr>
            <td class="campo">
                Origen caso:<br />
                <select name="origencaso" id="t1" class="lista" >
                    <option value="Llamada" >Llamada</option>
                    <option value="ChatBot" >ChatBot</option>
                </select>
            </td>
            <td class="campo">
                Area / Programa:<br />
                <select name="areaprograma" id="t2" class="lista" >
                    <option value="0" ></option>
                    <option Value="Acceso a Capital">Acceso a Capital </option>
                    <option Value="Aflora">Aflora </option>
                    <option Value="Cultivarte">Cultivarte </option>
                    <option Value="Emprende Pais">Emprende Pais </option>
                    <option Value="Filarmonica Joven de Colombia">Filarmonica Joven de Colombia </option>
                    <option Value="Fundacion Bolivar Davivienda">Fundacion Bolivar Davivienda </option>
                    <option Value="Inversion Social">Inversion Social </option>
                    <option Value="Mentorias">Mentorias </option>
                    <option Value="Voluntariado">Voluntariado </option>
                </select>

            </td>
            <td class="campo">
                Tipo de llamada:<br />
                <select name="tipollamada" id="t3" class="lista" >
                    <option value="0" ></option>
                    <option value="Incidente" >Incidente</option>
                    <option value="Llamada entrante" >Llamada entrante</option>
                    <option value="Llamada saliente" >Llamada saliente</option>
                    <option value="Chat" >Chat</option>
                </select>					
                <br />
            </td>
        </tr>
        <tr>
            <td class="campo">
                Descripcion de la solicitud:<br />
                <select name="descripcionsolicitud" id="t4" class="lista">
                    <option value="0" ></option>
                    <option Value="Comunidades">Comunidades </option>
                    <option Value="Convocatorias">Convocatorias </option>
                    <option Value="Eventos">Eventos </option>
                    <option Value="Formacion">Formacion </option>
                    <option Value="Gestion de accesos">Gestion de accesos </option>
                    <option Value="Gestion de Datos">Gestion de Datos </option>
                    <option Value="Informacion del programa">Informacion del programa </option>
                    <option Value="Informacion funcionarios">Informacion funcionarios </option>
                    <option Value="Inscripciones">Inscripciones </option>
                    <option Value="PQRS">PQRS </option>
                    <option Value="Proveedores">Proveedores </option>
                    <option Value="Talento humano">Talento humano </option>                         
                </select>
            </td>
            <td class="campo" colspan="2">
                Detalle de la solicitud - Razon:<br />
                <select name="razon" id="t5" class="lista"  >
                    <option Value="0"> </option>
                    <option Value="Acompañamiento en la postulacion">Acompañamiento en la postulacion </option>
                    <option Value="Acompañamiento realizacion autodiagnostico">Acompañamiento realizacion autodiagnostico </option>
                    <option Value="Activacion de Usuario / Contactos">Activacion de Usuario / Contactos </option>
                    <option Value="Actualizacion / Modificacion datos">Actualizacion / Modificacion datos </option>
                    <option Value="Agendamiento Mentorias">Agendamiento Mentorias </option>
                    <option Value="Asignacion de un curso o recurso formativo">Asignacion de un curso o recurso formativo </option>
                    <option Value="Audiciones: Inquietudes del proceso musical, fragmentos, partituras, proceso de evaluacion, dudas tecnico-musicales para preparar la audicion">Audiciones: Inquietudes del proceso musical, fragmentos, partituras, proceso de evaluacion, dudas tecnico-musicales para preparar la audicion </option>
                    <option Value="Audiciones: Uso de la plataforma">Audiciones: Uso de la plataforma </option>
                    <option Value="Calificacion o certificacion de un curso">Calificacion o certificacion de un curso </option>
                    <option Value="Cambio de representante legal / Usuario lider">Cambio de representante legal / Usuario lider </option>
                    <option Value="Cancelacion Eventos">Cancelacion Eventos </option>
                    <option Value="Cancelacion menorias">Cancelacion menorias </option>
                    <option Value="Confirmacion asistencia Eventos">Confirmacion asistencia Eventos </option>
                    <option Value="Confirmacion de asistencias">Confirmacion de asistencias </option>
                    <option Value="Confirmacion de asistencias a las jornadas de acuerdo a la descripcion de la jornada que se encuentra en el sistema">Confirmacion de asistencias a las jornadas de acuerdo a la descripcion de la jornada que se encuentra en el sistema </option>
                    <option Value="Convocatorias">Convocatorias </option>
                    <option Value="Entrega de soportes de pagos y soportes de certificados tributarios">Entrega de soportes de pagos y soportes de certificados tributarios </option>
                    <option Value="Estado de la inscripcion">Estado de la inscripcion </option>
                    <option Value="Estado de la postulacion">Estado de la postulacion </option>
                    <option Value="Funcionalidad de material o actividad formativa">Funcionalidad de material o actividad formativa </option>
                    <option Value="Funcionalidad de material o actividad formativa virtual">Funcionalidad de material o actividad formativa virtual </option>
                    <option Value="Generacion de nota de pruebas de conocimento">Generacion de nota de pruebas de conocimento </option>
                    <option Value="Generacion y configuracion de certificado">Generacion y configuracion de certificado </option>
                    <option Value="Inactivacion de usuario / contacto">Inactivacion de usuario / contacto </option>
                    <option Value="Inactivacion y activacion de organizacion social">Inactivacion y activacion de organizacion social </option>
                    <option Value="Informacion Conquista Social">Informacion Conquista Social </option>
                    <option Value="Informacion Curso presencial">Informacion Curso presencial </option>
                    <option Value="Informacion Cursos Virtuales">Informacion Cursos Virtuales </option>
                    <option Value="Informacion de beneficios">Informacion de beneficios </option>
                    <option Value="Informacion de condiciones de facturacion electronica ">Informacion de condiciones de facturacion electronica  </option>
                    <option Value="Informacion de convocatorias de investigacion">Informacion de convocatorias de investigacion </option>
                    <option Value="Informacion de datos de contacto de funcionarios de la FBD o de compañias del Grupo Bolivar">Informacion de datos de contacto de funcionarios de la FBD o de compañias del Grupo Bolivar </option>
                    <option Value="Informacion de estado de pagos y retenciones efectuadas.">Informacion de estado de pagos y retenciones efectuadas. </option>
                    <option Value="Informacion de horarios y direccion centro de radicacion">Informacion de horarios y direccion centro de radicacion </option>
                    <option Value="Informacion de la convocatoria">Informacion de la convocatoria </option>
                    <option Value="Informacion de nivel">Informacion de nivel </option>
                    <option Value="Informacion de publicaciones">Informacion de publicaciones </option>
                    <option Value="Informacion de un mensaje que recibio de entrega de unos mercados. ">Informacion de un mensaje que recibio de entrega de unos mercados.  </option>
                    <option Value="Informacion de vacantes o envio de hojas de vida">Informacion de vacantes o envio de hojas de vida </option>
                    <option Value="Informacion Diplomado FFAA">Informacion Diplomado FFAA </option>
                    <option Value="Informacion Escuela de Directores">Informacion Escuela de Directores </option>
                    <option Value="Informacion eventos aliados">Informacion eventos aliados </option>
                    <option Value="Informacion general de la Fundacion">Informacion general de la Fundacion </option>
                    <option Value="Informacion general del programa">Informacion general del programa </option>
                    <option Value="Informacion general del programa: programas sociales, programa de estimulos, info general.">Informacion general del programa: programas sociales, programa de estimulos, info general. </option>
                    <option Value="Informacion ruta de desarrollo">Informacion ruta de desarrollo </option>
                    <option Value="Informacion webinars">Informacion webinars </option>
                    <option Value="Informes, investigaciones, boletines y rendicion de cuentas de terceros">Informes, investigaciones, boletines y rendicion de cuentas de terceros </option>
                    <option Value="Instalacion del aplicativo">Instalacion del aplicativo </option>
                    <option Value="Invitacion a paticipar de eventos">Invitacion a paticipar de eventos </option>
                    <option Value="Invitacion Eventos">Invitacion Eventos </option>
                    <option Value="Notificacion de resultados">Notificacion de resultados </option>
                    <option Value="Ofrecimiento de productos y servicios">Ofrecimiento de productos y servicios </option>
                    <option Value="Pagos Escuela de Directores">Pagos Escuela de Directores </option>
                    <option Value="Persona llama de parte de un municipio, alcaldia, entidad territorial, entre otros apedir apoyo para el municipio">Persona llama de parte de un municipio, alcaldia, entidad territorial, entre otros apedir apoyo para el municipio </option>
                    <option Value="Peticion">Peticion </option>
                    <option Value="Problemas con acceso a algun servicio de la comunidad">Problemas con acceso a algun servicio de la comunidad </option>
                    <option Value="Problemas con acceso a comunidades">Problemas con acceso a comunidades </option>
                    <option Value="Problemas con acceso a la plataforma de asistencia">Problemas con acceso a la plataforma de asistencia </option>
                    <option Value="Problemas con acceso a la plataforma de formacion">Problemas con acceso a la plataforma de formacion </option>
                    <option Value="Problemas con acceso a la plataforma de informes">Problemas con acceso a la plataforma de informes </option>
                    <option Value="Problemas con acceso al proceso de inscripcion">Problemas con acceso al proceso de inscripcion </option>
                    <option Value="Proceso de inscripciones">Proceso de inscripciones </option>
                    <option Value="Proceso de inscripciones de organizaciones formalizadas y no formalizadas">Proceso de inscripciones de organizaciones formalizadas y no formalizadas </option>
                    <option Value="Proceso de validacion de nivel">Proceso de validacion de nivel </option>
                    <option Value="Queja">Queja </option>
                    <option Value="Reagendamiento mentorias">Reagendamiento mentorias </option>
                    <option Value="Reclamo">Reclamo </option>
                    <option Value="Recoleccion de eval de impacto">Recoleccion de eval de impacto </option>
                    <option Value="Recordatorio de campañas">Recordatorio de campañas </option>
                    <option Value="Recordatorio de correccion de documentos y cargue de los mismos">Recordatorio de correccion de documentos y cargue de los mismos </option>
                    <option Value="Recordatorio finalizacion proceso de inscripcion">Recordatorio finalizacion proceso de inscripcion </option>
                    <option Value="Recordatorio finalizacion proceso de inscripcion de los seleccionados">Recordatorio finalizacion proceso de inscripcion de los seleccionados </option>
                    <option Value="Restablecimiento de accesos plataforma">Restablecimiento de accesos plataforma </option>
                    <option Value="Resultados de la convocatoria">Resultados de la convocatoria </option>
                    <option Value="Ruta de formalizacion No Formalizadas">Ruta de formalizacion No Formalizadas </option>
                    <option Value="Solicitud de informacion sobre el uso de la plataforma">Solicitud de informacion sobre el uso de la plataforma </option>
                    <option Value="Solicitud de revision de indicadores del informe">Solicitud de revision de indicadores del informe </option>
                    <option Value="Suspender inscripcion a la convocatoria">Suspender inscripcion a la convocatoria </option>                    
                </select>
            </td>


        </tr>

        <tr>
            <td class="campo">
                Se escalaria a:<br />
                <select name="escalaria" id="t6" class="lista" >
                    <option value="0" ></option>
                    <option Value="Adriana Damato">Adriana Damato </option>
                    <option Value="Alejandra Cuellar">Alejandra Cuellar </option>
                    <option Value="Call center Davivienda">Call center Davivienda </option>
                    <option Value="Carlos Buitrago">Carlos Buitrago </option>
                    <option Value="Carlos Pinzon / Juanita Monsalve">Carlos Pinzon / Juanita Monsalve </option>
                    <option Value="Carmen Rosa Rodriguez">Carmen Rosa Rodriguez </option>
                    <option Value="Catalina Pallares">Catalina Pallares </option>
                    <option Value="Clara Jaeger">Clara Jaeger </option>
                    <option Value="Daniela Gaviria">Daniela Gaviria </option>
                    <option Value="Edison Zambrano">Edison Zambrano </option>
                    <option Value="Estefania Amaya">Estefania Amaya </option>
                    <option Value="Isabel Diaz">Isabel Diaz </option>
                    <option Value="Juan Manuel Platin">Juan Manuel Platin </option>
                    <option Value="Julia Clemencia Duque">Julia Clemencia Duque </option>
                    <option Value="Karen Peñuela">Karen Peñuela </option>
                    <option Value="Maria Fernanda Rodriguez">Maria Fernanda Rodriguez </option>
                    <option Value="Mariana Castaño">Mariana Castaño </option>
                    <option Value="Nathalia Pinilla">Nathalia Pinilla </option>
                    <option Value="Ofelia Coronado">Ofelia Coronado </option>
                    <option Value="Paula Cañon">Paula Cañon </option>
                    <option Value="Paula Ojeda">Paula Ojeda </option>
                    <option Value="Paula Perucho">Paula Perucho </option>
                    <option Value="Proveedor Amis - Mariana Castaño">Proveedor Amis - Mariana Castaño </option>
                    <option Value="Sandra Diaz">Sandra Diaz </option>
                    <option Value="Sofia Vasquez">Sofia Vasquez </option>
                    <option Value="YanebiTamayo">YanebiTamayo </option>
                </select>	
            </td>
            <td  class="campo" >
                Aplicativo:<br />
                <select name="app" id="t7" Width="250px" class="lista" >
                    <option value="0" ></option>
                    <option Value="AMIS">AMIS </option>
                    <option Value="CAI">CAI </option>
                    <option Value="Elearning">Elearning </option>
                    <option Value="Google">Google </option>
                    <option Value="Informe del responsable">Informe del responsable </option>
                    <option Value="Pagina web">Pagina web </option>
                    <option Value="Salesforce">Salesforce </option>
                </select>
            </td>
            <td  class="campo" >
                Nivel de servicio esperado:<br />
                <select name="nivel" id="t8" Width="250px"   class="lista">
                    <option value="0" ></option>
                    <option Value="1 - 3 dias">1 - 3 dias </option>
                    <option Value="15 dias">15 dias </option>
                    <option Value="El mismo dia">El mismo dia </option>
                    <option Value="semana">semana </option>
                </select>
            </td>
        </tr>
        <tr>

        </tr>
        <tr>
            <td class="campo" colspan="3">
                Descripcion:<br />
                <input type="text" id="iddescripcion" name="descripcion" required minlength="1" maxlength="500" size="75%" class="text">

            </td>
        </tr>
        <tr>
            <td class="campo" colspan="3" style="text-align: center">
                <input id="Button9" type="button" value="Finalizar" onclick="insertarpqrs()" />
            </td>

        </tr>
        <% } %>         
    </tbody>
</table>
<%
    } catch (Exception e) {
        out.println("Error : " + e.getMessage());
    }
%>    
</html>
