
<%-- 
    Document   : lista
    Created on : 16/07/2019, 03:26:09 PM
    Author     : jvaldes
--%>
<%
// Evitar que la página se almacene en caché
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>

<%
// Verifica si el usuario ha iniciado sesión
    if (session.getAttribute("usuarioLogueado") == null) {
        // Si no ha iniciado sesión, redirige a la página de inicio de sesión
        response.sendRedirect("inicio.jsp"); // Reemplaza "inicio.jsp" por tu página de inicio de sesión
        return; // Importante: detén la ejecución del resto de la página
    }
%>
<!DOCTYPE html>
<html>    
    <thead>
    <title>WebChatConstructoraBolivar</title>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.bootstrap4.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="css/inicio.css" rel="stylesheet" type="text/css">
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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    
    <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    <script type="text/javascript">

        var sessionTimeout = null;
        var sessionTimeoutDuration = 3600000; // 2 horas en milisegundos // minutes in milliseconds

        function startSessionTimeout() {
            if (sessionTimeout) {
                clearTimeout(sessionTimeout);
            }
            sessionTimeout = setTimeout(function () {

                Swal.fire({
                    icon: 'info',
                    title: 'Su sesión ha sido cerrada automáticamente debido a la inactividad',
                    confirmButtonText: 'Ir al inicio de sesión',
                    showConfirmButton: true,
                    timer: 50000
                }).then((result) => {
                    if (result.isConfirmed == true || result.isConfirmed == false) {
                        // redirigir al usuario a la página de inicio de sesión
                        window.location.href = "inicio.jsp";
                    }
                });
                var xhr = new XMLHttpRequest();
                xhr.open('POST', 'logout.jsp', true);
                xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
                xhr.send('data=' + encodeURIComponent('logout'));
            }, sessionTimeoutDuration);
        }

        window.addEventListener('mousemove', startSessionTimeout);
        window.addEventListener('keypress', startSessionTimeout);



        var token;
        var url = "https://8aozurcink.execute-api.us-east-2.amazonaws.com";
        function Transf_Encuesta() {
            agentapi.FastTransferActiveCall(6040)
                    .done(function () {
                    })
                    .fail(function (code, cause) {
                        Swal.fire('¡Ooop!', 'Error de transferencia, intente de nuevo', 'error');
                    });
        }
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
                var momentos = {
                    "url": url + "/webservicefenalco/cbolivarbgta/listadomomentoora",
                    "method": "POST",
                    "timeout": 0,
                    "headers": {
                        "Authorization": "Bearer " + token
                    },
                };
                $.ajax(momentos).done(function (response) {
                    temp = response.listado;
                    $('#Momento').append('<option value= 0 > Seleccione Tipificacion </option>');
                    $.each(temp, function (key, value) {
                        $('#Momento').append('<option value=' + value.idMomento + '>' + value.descripcion + '</option>');
                    });
                });
            });
        });
        function llenarNecesidad(idMomento) {
            $('#Necesidad option').remove();
            var temp;
            var necesidades = {
                "url": url + "/webservicefenalco/cbolivarbgta/consultarnecesidadpormaestroora",
                "method": "POST",
                "timeout": 0,
                "headers": {
                    "Authorization": "Bearer " + token,
                    "Content-Type": "application/json"
                },
                "data": JSON.stringify({
                    "idmomento": idMomento
                }),
            };
            $.ajax(necesidades).done(function (response) {
                temp = response.listado;
                $('#Necesidad').append('<option value= 0 > Seleccione Subtipificacion </option>');
                $.each(temp, function (key, value) {
                    $('#Necesidad').append('<option value=' + value.idNecesidad + '>' + value.descripcion + '</option>');
                });
            });
        }
        function llenarmotivonoleinteresa(idNecesidad) {
            document.getElementsByClassName("motivonointeresa")[0].style.visibility = "hidden";
            $('#motnointeresa option').remove();
            var temp;
            var actividades = {
                "url": url + "/webservicefenalco/cbolivarbgta/consultaractividadpormaestro",
                "method": "POST",
                "timeout": 0,
                "headers": {
                    "Authorization": "Bearer " + token,
                    "Content-Type": "application/json"
                },
                "data": JSON.stringify({
                    "idnecesidad": idNecesidad
                }),
            };
            $.ajax(actividades).done(function (response) {
                temp = response.listado;
                if (temp != null) {
                    document.getElementsByClassName("motivonointeresa")[0].style.visibility = "visible";
                    $('#motnointeresa').append('<option value= 0 > Seleccione motivo </option>');
                    $.each(temp, function (key, value) {
                        $('#motnointeresa').append('<option value=' + value.idActividad + '>' + value.descripcion + '</option>');
                    });
                } else {
                    return false;
                }
            });
        }
        
        function insertarpqrs() {

            var idcall = $('input:text[name=idllamada]').val();
            var iidoriginal = $('input:text[name=inumdoc]').val();
            var inombre1 = $('input:text[name=inombre1]').val();
            var inombre2 = $('input:text[name=inombre2]').val();
            var iapellido1 = $('input:text[name=iapellido1]').val();
            var iapellido2 = $('input:text[name=iapellido2]').val();
            var momento = $("#Momento option:selected").text();
            var necesidad = $("#Necesidad option:selected").text();

            if (iidoriginal == '' || iidoriginal == 'null') {
                Swal.fire('¡Ooop!', 'El campo del Documento es obligatorio', 'warning');
                return false;
            } else if (inombre1 == '' || inombre1 == 'null') {
                Swal.fire('¡Ooop!', 'El campo Primer nombre es obligatorio', 'warning');
                return false;
            } else if (iapellido1 == '' || iapellido1 == 'null') {
                Swal.fire('¡Ooop!', 'El campo Primer Apellido es obligatorio', 'warning');
                return false;
            } else if (idcall == '' || idcall == 'null') {
                Swal.fire('¡Ooop!', 'El campo ID Infobit es obligatorio', 'warning');
                return false;
            }

            var settings = {
                "url": url + "/webservicefenalco/cbolivarbgta/ingresarpqrswebchatora",
                "method": "POST",
                "timeout": 0,

                "headers": {
                    "Authorization": "Bearer " + token,
                    "Content-Type": "application/json"
                },
                "data": JSON.stringify({
                    "idcall": idcall,
                    "idoriginal": iidoriginal,
                    "nombre1": inombre1,
                    "nombre2": inombre2,
                    "apellido1": iapellido1,
                    "momento": momento,
                    "necesidad": necesidad,
                    "apellido2": iapellido2
                }),
            };
            Swal.fire('¡Éxito!', 'Gestión Finalizada correctamente', 'success');
            $.ajax(settings).done(function (response) {
                window.location.replace('FinalesGEN.jsp');
                console.log(response);
            });
        }
        function Momento_onclick() {
        }
        function Necesidad_onclick() {
        }

        // Función para obtener el valor de un parámetro en la URL
        function getParameterByName(name, url) {
            if (!url)
                url = window.location.href;
            name = name.replace(/[\[\]]/g, '\\$&');
            var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                    results = regex.exec(url);
            if (!results)
                return null;
            if (!results[2])
                return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }

        var pausaFinalizadaupdate = getParameterByName('pausaFinalizadaupdate');

        // Mostrar el alert si 'pausaFinalizada' es 'true'  Finaizada
        if (pausaFinalizadaupdate === 'true') {
            let startTime = Date.now(); // Obtiene el tiempo de inicio en milisegundos

            Swal.fire({
                title: 'Pausa Finalizada',
                text: 'Registrando Tiempo...',
                timer: 3600000, // especifica el tiempo en milisegundos
                timerProgressBar: true, // muestra una barra de progreso
                allowOutsideClick: false, // no permite cerrar haciendo clic fuera de la alerta
                onBeforeOpen: () => {
                    Swal.showLoading()
                    timerInterval = setInterval(() => {
                        const content = Swal.getContent();
                        if (content) {
                            const b = content.querySelector('b');
                            if (b) {
                                b.textContent = (Swal.getTimerLeft() / 1000).toFixed(0);
                            }
                        }
                    }, 100);
                },
                onClose: () => {
                    clearInterval(timerInterval);
                }
            }).then((result) => {
                // aquí puedes hacer algo después de cerrarse la alerta
            });
        }

        // Obtener el valor del parámetro de la URL
        var pausaFinalizadainsert = getParameterByName('pausaFinalizadainsert');
        var motivoPausa = '';
        // Si el parámetro existe y es igual a "true", iniciar el contador de tiempo
        if (pausaFinalizadainsert === "true") {
            // Obtener la hora actual
            var inicioContador = new Date().getTime();
            var motivoPausa = "";
            // Actualizar el contenido del elemento con el ID "contador" cada segundo
            setInterval(function () {
                // Obtener la hora actual
                var ahora = new Date().getTime();

                // Calcular el tiempo transcurrido desde el inicio del contador
                var tiempoTranscurrido = ahora - inicioContador;

                // Convertir el tiempo transcurrido a formato de horas, minutos y segundos
                var horas = Math.floor(tiempoTranscurrido / (1000 * 60 * 60));
                var minutos = Math.floor((tiempoTranscurrido % (1000 * 60 * 60)) / (1000 * 60));
                var segundos = Math.floor((tiempoTranscurrido % (1000 * 60)) / 1000);

                // Actualizar la variable con el valor seleccionado en el dropdown-item                
                motivoPausa = document.getElementById("motivoPausaFin") ? document.getElementById("motivoPausaFin").value : "";

                // Actualizar el contenido del elemento con el ID "contador" con el tiempo transcurrido y el valor seleccionado en el dropdown-item
                document.getElementById("contador").innerHTML = "Tiempo transcurrido: " + horas + "h " + minutos + "m " + segundos + "s " + motivoPausa;
            }, 1000); // 1000 milisegundos = 1 segundo                        
            Swal.fire('¡Éxito!', 'Pausa inicializada', 'success');
        }

        // Obtener el valor del parámetro 'pausaFinalizada' en la URL
        var pausaFinalizadainsert = getParameterByName('pausaFinalizadainsert');


        // Mostrar el alert si 'pausaFinalizada' es 'true'  insertada
        if (pausaFinalizadainsert === 'false') {
            let startTime = Date.now(); // Obtiene el tiempo de inicio en milisegundos

            Swal.fire({
                title: 'Debe finalizar la pausa registrada',
                text: 'El tiempo sigue en proceso...',
                timer: 3600000, // especifica el tiempo en milisegundos
                timerProgressBar: true, // muestra una barra de progreso
                allowOutsideClick: false, // no permite cerrar haciendo clic fuera de la alerta
                onBeforeOpen: () => {
                    Swal.showLoading();
                    timerInterval = setInterval(() => {
                        const content = Swal.getContent();
                        if (content) {
                            const b = content.querySelector('b');
                            if (b) {
                                b.textContent = (Swal.getTimerLeft() / 1000).toFixed(0);
                            }
                        }
                    }, 100);
                },
                onClose: () => {
                    clearInterval(timerInterval);
                }
            }).then((result) => {
                // aquí puedes hacer algo después de cerrarse la alerta
            });
        }

        // Obtener el valor del parámetro 'pausaFinalizada' en la URL
        var pausanoencontrada = getParameterByName('pausanoencontrada');

        // Mostrar el alert si 'pausaFinalizada' es 'true'  insertada
        if (pausanoencontrada === 'true') {
            let startTime = Date.now(); // Obtiene el tiempo de inicio en milisegundos

            Swal.fire({
                title: 'Pausa no inicializada',
                text: 'Debe seleccionar una pausa',
                timer: 3600000, // especifica el tiempo en milisegundos
                timerProgressBar: true, // muestra una barra de progreso
                allowOutsideClick: false, // no permite cerrar haciendo clic fuera de la alerta
                onBeforeOpen: () => {
                    Swal.showLoading();
                    timerInterval = setInterval(() => {
                        const content = Swal.getContent();
                        if (content) {
                            const b = content.querySelector('b');
                            if (b) {
                                b.textContent = (Swal.getTimerLeft() / 1000).toFixed(0);
                            }
                        }
                    }, 2);
                },
                onClose: () => {
                    clearInterval(timerInterval);
                }
            }).then((result) => {
                // aquí puedes hacer algo después de cerrarse la alerta
            });
        }

        var Prob;



        function FinalizarLlamada() {
            Prob = getParameterByName('mtv');
            document.getElementById("motivoPausaFin").value = Prob;
            setTimeout(() => {
                document.getElementById('pausaFormFin').submit(); // Enviar el formulario con el ID correcto
            }, 0); // Ajusta el tiempo para pruebas   
        }

        function setMotivo(motivo, accion) {
            document.getElementById("motivoPausa").value = motivo;
            document.getElementById("accion").value = accion;
            document.getElementById('pausaForm').submit();
        }


        function validarPausa() {
            // Obtener el valor del campo motivoPausa
            var motivo = Prob;
            // Verificar si el valor es una cadena vacía
            if (motivo === "") {
                // Mostrar un mensaje de advertencia si el campo está vacío
                Swal.fire('¡Ey!', 'Selecciona una pausa', 'warning');
                return false; // Impide el envío del formulario
            }
            return true; // Permite el envío del formulario
        }

    </script>

    <style>
        bod, div.container button {
            font-family: "Lato";
        }
        button.btn, a.btn {
            height:  40px;
            display: flex;
            align-items: center;
        }
        .sidenav {
            height: 500px;
            width: 70px;
            position: fixed;
            z-index: 1;
            top: 76px;
            left: 0;
            background-color: #434242;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
            border-radius: 0px 25px 25px 0px;
        }
        .sidenav a {
            padding: 8px 8px 8px 15px;
            text-decoration: none;
            font-size: 25px;
            color: #818181;
            display: block;
            transition: 0.3s;
        }
        .sidenav a:hover {
            color: #f1f1f1;
        }
        .sidenav .closebtn {

            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }
        #main {
            transition: margin-left .5s;
            padding: 16px;
        }
        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }
            .sidenav a {
                font-size: 18px;
            }
        }
        .footer-style {
            padding-top: 50px;
            background-color: #434242;
        }
        footer {
            color: white;
        }
        footer h3 {
            margin-bottom: 30px;
            font-weight: 800;
        }
        footer .footer-above {
            padding-top: 50px;
            background-color: #2C3E50;
        }
        footer .footer-col {
            margin-bottom: 50px;
        }
        footer .footer-below {
            padding: 25px 0;
            background-color: #233140;
        }
        .main {
            font-size: 40px;
            cursor: pointer;
            filter: invert(1);
            transition: 5s;
        }

        .main.rotated {
            transform: rotate(270deg); /* Cambia la rotación a 270 grados */
        }
        .segmentos {
            width: 100%;
            position: relative; /* Position relative for positioning the tooltip */
            display: inline-block; /* Required for tooltip to be positioned correctly */
            text-decoration: none;
        }

        .tooltip {
            position: absolute;
            bottom: 125%; /* Position above the button */
            left: 50%;
            margin-left: -60px; /* Center the tooltip */
            visibility: hidden; /* Hidden by default */
            opacity: 0; /* Hidden by default */
            background-color: black;
            color: #fff;
            text-align: center;
            border-radius: 5px;
            padding: 5px;
            z-index: 1;
            transition: opacity 0.3s; /* Fade effect */
        }

        a.segmentos{
            transition: 3s;
            width: 500px;
            display: flex;
            flex-direction: row;
        }
        .imagenesS{
            width: 30px;
            filter: invert(1);
            height: 30px;
            margin-right: 10px;
        }
        a.segmentos > p{
            display: none;
            height: 30px;
            align-items: flex-start;
            margin: 0%;
        }
        a.segmentosButoms > p{
            display: flex;
        }
        button.btn-success {
            color: #fff;
            background-color: #2B8B4B;
            /* border-color: #2B8B4B; */
        }
    </style>

    <script>
        var isOpen = false;

        function toggleNav() {
            if (isOpen) {
                closeNav();
            } else {
                openNav();
            }
            isOpen = !isOpen; // Toggle state
        }

        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main").classList.add("rotated");
            document.querySelectorAll(".segmentos").forEach(elem => {
                elem.classList.add("segmentosButoms");
            });
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "70px";
            document.getElementById("main").classList.remove("rotated");
            document.querySelectorAll(".segmentos").forEach(elem => {
                elem.classList.remove("segmentosButoms");
            });
        }
    </script>

    <%
        // Verificar si se ha iniciado sesión
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("username") == null) {
            sesion.invalidate();
            // Si no se ha iniciado sesión, redirigir al usuario a la página de inicio de sesión
            response.sendRedirect("inicio.jsp");

        }

    %>

</thead>

<div style="height: 230px">
    <center>
        <div style="height: 100px; overflow: hidden;" >
            <svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;">
            <path d="M0.00,49.98 C149.99,150.00 271.49,-49.98 500.27,147.55 L500.00,0.00 L0.00,0.00 Z" style="stroke: none; fill: #2b8b4b;"></path>
            </svg>
        </div>
        <img src="logo-constructora-bolivar.svg" alt="ConstructoraBolivarBogota" width="200px" style="margin-top: -25px">
        <br>
        <br>
    </center>
</div>


<body>
    <!-- Elemento HTML para mostrar el tiempo transcurrido -->
    <div class="border rounded p-3 mb-3" style="height: 50px;">
        <p class="text-center text-success lead mb-0" id="contador"></p>
    </div>
    <br>
    <div style="width: 100%; margin: 10px auto; display: flex; justify-content: center;">
        <form action="Pausas.jsp" method="post" id="pausaForm">
            <div style="">
                <div class="dropdown show mr-3">
                    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="MotivoPausa" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Selecciona pausa
                    </a>
                    <div class="dropdown-menu" aria-labelledby="MotivoPausa">
                        <a class="dropdown-item" href="#" onclick="setMotivo('Almuerzo', 'inicio')">Almuerzo</a>
                        <a class="dropdown-item" href="#" onclick="setMotivo('Bano', 'inicio')">Ir al Baño</a>
                        <a class="dropdown-item" href="#" onclick="setMotivo('Capacitacion', 'inicio')">Capacitación</a>
                        <a class="dropdown-item" href="#" onclick="setMotivo('BreakAM', 'inicio')">Break Mañana</a>
                        <a class="dropdown-item" href="#" onclick="setMotivo('BreakPM', 'inicio')">Break Tarde</a>
                    </div>
                </div>   
                <input type="hidden" id="motivoPausa" name="motivoPausa">
                <input type="hidden" id="accion" name="accion">
            </div>
        </form>

        <form action="FinalPausas.jsp" method="post" id="pausaFormFin">
            <input type="hidden" id="motivoPausaFin" name="motivoPausaFin">
            <button type="button" class="btn btn-success" name="accion" value="fin" onclick="FinalizarLlamada()">Finalizar pausa</button>
        </form>

    </div>
    <div style="position: relative;  top: -200px">
        <div id="mySidenav" class="sidenav" >
            <div style="width: 100%; display: flex; align-items: flex-start; flex-direction: column;">
                <span id="main" class="main" style="transition: 1.3s" onclick="toggleNav()">&#9776;</span>
            </div> 
            <a class="segmentos" style="transition: 3s;" href="logout.jsp" title="Cerrar Sesión">                
                <img class="imagenesS" src="imagenes/cerrar-sesion-de-usuario.png" alt="alt"/>
                <p>Cerrar Sesión</p>
            </a>
        </div>              
    </div>
    <br />
    <div style="width: 50%; margin: 0 auto;">
        <form name="formulario">
            <h3 style="text-align: center;">REGISTRAR DATOS DEL CLIENTE</h3>
            <br>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="iidoriginal">Documento:</label>
                    <input type="text" placeholder="Numero de Documento" class="form-control" id="iidoriginal" name="inumdoc" required="">
                </div>
                <div class="form-group col-md-6">
                    <label for="inombre1">Primer nombre:</label>
                    <input type="text" placeholder="Ingrese el primer nombre" class="form-control" id="inombre1" name="inombre1" required="">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inombre2">Segundo nombre:</label>
                    <input type="text" placeholder="Ingrese segundo nombre" class="form-control" id="inombre2" name="inombre2" required="">
                </div>
                <div class="form-group col-md-6">
                    <label for="telefono">Numero de Telefono:</label>
                    <input type="text" placeholder="Ingrese numero telefonico" class="form-control" name="telefono" required="">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="iapellido1">Primer apellido:</label>
                    <input type="text" placeholder="Ingrese primer apellido" class="form-control" id="iapellido1" name="iapellido1">
                </div>
                <div class="form-group col-md-6">
                    <label for="iapellido2">Segundo apellido:</label>
                    <input type="text" placeholder="Ingrese segundo apellido" class="form-control" id="iapellido2" name="iapellido2">
                </div>
            </div>
            <br>
            <br>
            <h3 style="text-align: center;">Finalizar Gestión</h3>
            <br>
            <div class="form-group">
                <label for="Momento">Tipificación:</label>
                <select class="form-control" id="Momento" onchange="llenarNecesidad(this.value)">
                    <!-- options here -->
                </select>
            </div>
            <div class="form-group">
                <label for="Necesidad">Subtipificación:</label>
                <select class="form-control" id="Necesidad" onchange="llenarmotivonoleinteresa(this.value)">
                    <!-- options here -->
                </select>
            </div>
            <div class="form-group">
                <label for="idcall">ID Infobip:</label>
                <input type="text" class="form-control" id="idcall" name="idllamada" placeholder="Ingrese el Id de Infobip" required="">
                <div class="invalid-feedback">Este campo no puede estar vacío.</div>
            </div>
            <button  id="Button9" type="button" value="Finalizar" onclick="insertarpqrs()" class="btn btn-success btn-lg btn-block">Finalizar Gestión</button>
        </form>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
</body>
<footer class="text-center footer-style">
    <div class="container">
        <div class="row">
            <div class="col-md-4 footer-col">
                <h3>Fenalcontact</h3>
                <p>
                    <br />
                    &#169; 2006 Fenalco Valle
                </p>
            </div>
            <div class="col-md-4 footer-col">
                <h3>Constructora Bolivar</h3>
            </div>
            <div class="col-md-4 footer-col">
                <h3>Desarrollo TI</h3>
                <p>
                    Telefono: 3215163651    <br />
                    Correo: apdesarrollo@gmail.com
                </p>
            </div>

        </div>
    </div>
</footer>


</html>

