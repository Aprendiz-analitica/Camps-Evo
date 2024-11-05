


/*
 //Validacion tiempo de inactividad
 var inactivityTime = function () {
 var t;
 window.onload = resetTimer;
 document.onmousemove = resetTimer;
 document.onkeypress = resetTimer;
 function logout() {
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
 }
 function resetTimer() {
 clearTimeout(t);
 t = setTimeout(logout, 20000000); //  8 horas
 }
 };
 
 
 
 inactivityTime();
 
 */


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
            "url": url + "/webservicefenalco/cbolivarbgta/listadomomentos",
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
        "url": url + "/webservicefenalco/cbolivarbgta/consultarnecesidadpormaestro",
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
                const content = Swal.getContent()
                if (content) {
                    const b = content.querySelector('b')
                    if (b) {
                        b.textContent = (Swal.getTimerLeft() / 1000).toFixed(0)
                    }
                }
            }, 100)
        },
        onClose: () => {
            clearInterval(timerInterval)
        }
    }).then((result) => {



        // aquí puedes hacer algo después de cerrarse la alerta
    })


}


// Obtener el valor del parámetro de la URL
var pausaFinalizadainsert = getParameterByName('pausaFinalizadainsert');
var motivoPausa = '';

// Si el parámetro existe y es igual a "true", iniciar el contador de tiempo
if (pausaFinalizadainsert === "true") {
    // Obtener la hora actual
    var inicioContador = new Date().getTime();

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
        motivoPausa = document.getElementById("motivoPausa").value;

        // Actualizar el contenido del elemento con el ID "contador" con el tiempo transcurrido y el valor seleccionado en el dropdown-item
        document.getElementById("contador").innerHTML = "Tiempo transcurrido: " + horas + "h " + minutos + "m " + segundos + "s" + motivoPausa;
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
            Swal.showLoading()
            timerInterval = setInterval(() => {
                const content = Swal.getContent()
                if (content) {
                    const b = content.querySelector('b')
                    if (b) {
                        b.textContent = (Swal.getTimerLeft() / 1000).toFixed(0)
                    }
                }
            }, 100)
        },
        onClose: () => {
            clearInterval(timerInterval)
        }
    }).then((result) => {



        // aquí puedes hacer algo después de cerrarse la alerta
    })


}












//

// Obtener el valor del parámetro 'pausaFinalizada' en la URL
var pausanoencontrada = getParameterByName('pausanoencontrada');


// Mostrar el alert si 'pausaFinalizada' es 'true'  insertada
if (pausanoencontrada === 'true') {
    let startTime = Date.now(); // Obtiene el tiempo de inicio en milisegundos

    Swal.fire({
        title: 'Pausa incorrecta',
        text: 'Debe seleccionar la pausa que ya has inicializado',
        timer: 3600000, // especifica el tiempo en milisegundos
        timerProgressBar: true, // muestra una barra de progreso
        allowOutsideClick: false, // no permite cerrar haciendo clic fuera de la alerta
        onBeforeOpen: () => {
            Swal.showLoading()
            timerInterval = setInterval(() => {
                const content = Swal.getContent()
                if (content) {
                    const b = content.querySelector('b')
                    if (b) {
                        b.textContent = (Swal.getTimerLeft() / 1000).toFixed(0)
                    }
                }
            }, 100)
        },
        onClose: () => {
            clearInterval(timerInterval)
        }
    }).then((result) => {



        // aquí puedes hacer algo después de cerrarse la alerta
    })


}
















function seleccionarMotivo(motivo) {
    document.getElementById("MotivoPausa").innerText = motivo;
    document.getElementById("motivoPausa").value = motivo;
}
function validarPausa() {
    if (document.getElementById('motivoPausa').value == "") {
        Swal.fire('¡ey!', 'Selecciona la pausa inicial o final', 'warning');
        return false;
    }
    return true;
}
