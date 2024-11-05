var inputs, clock, alarm, minutes, seconds, repeater, repeaterNotificacion, notificacion, guardado;

guardado = false;
/* Espera a que cargue el documento */
window.addEventListener('load', () => {
    // Captura los inputs de clase 'number'
    inputs = Array.from(document.getElementsByClassName('number'));
    
    // Captura el div y el reloj
    DivTemp = document.querySelector('#divTemporizador');
    clock = document.querySelector('.clock');
    
    // Genera la alarma
    alarm = new Audio('Resources/sounds/notification.mp3');    

    // Verifica el estado guardado
    if (localStorage.getItem('guardado') === 'true') {
        // Asegúrate de que el div sea visible
        DivTemp.style.display = 'block';
        ContinuarTemporizador();
    }

});


/* Función principal para iniciar el temporizador */
function startTimer() {
    parseTime(); /* Obtengo los valores de los inputs y los convierto a números */
    setTimer();  /* Actualizo la visualización del temporizador */
    setNotificacion(); /* Configuro la notificación inicial */
    countdown(); /* Arranco el contador */
}

/* Configura el temporizador en pantalla y en la pestaña */
function setTimer() {
    clock.innerHTML = `<p class="number">${minutes > 9 ? minutes : ('0' + minutes)}</p><span>min</span><p class="number">${seconds > 9 ? seconds : ('0' + seconds)}</p><span>sec</span>`;
    document.title = `${minutes > 9 ? minutes : ('0' + minutes)}:${seconds > 9 ? seconds : ('0' + seconds)}`;
}

/* Configura la notificación */
function setNotificacion() {
    const formattedTime = `${minutes > 9 ? minutes : ('0' + minutes)}:${seconds > 9 ? seconds : ('0' + seconds)}`;

    // Cerrar la notificación existente si está definida
    if (notificacion) {
        notificacion.close();
    }

    // Crear una nueva notificación si se ha concedido permiso
    if (Notification.permission === 'granted') {
        notificacion = new Notification('Tiempo restante en Hold', {
            icon: 'Resources/images/play.png',
            body: `${formattedTime}`
        });
    }
}

/* Convierte el string del input a números */
function parseTime() {
    minutes = Number(inputs[0].value);
    seconds = Number(inputs[1].value);
}

/* Arranca el contador y la notificación periódica */
function countdown() {
    repeater = setInterval(runner, 1000);
    repeaterNotificacion = setInterval(setNotificacion, 10000);
}

/* Función que cuenta el tiempo */
function runner() {
    if (seconds > 0) {
        seconds--;
        saveTimerState(); /* Guarda el estado del temporizador */
    } else {
        if (minutes > 0) {
            seconds = 59;
            minutes--;
        } else {
            alarm.play();
        }
    }    
    setTimer(); /* Actualiza la visualización */    
}

/* Detiene el temporizador */
function stopTimer() {
    clearInterval(repeater);
    clearInterval(repeaterNotificacion);
    guardado = false;
    localStorage.setItem('guardado', 'false'); // Actualizar el estado en localStorage
    console.log('Temporizador detenido');
}

/* Guarda el estado del temporizador en localStorage */
function saveTimerState() {
    guardado = true;
    localStorage.setItem('minutes', minutes);
    localStorage.setItem('seconds', seconds);
    localStorage.setItem('guardado', 'true'); // Actualizar el estado en localStorage
}

/* Restaura el estado del temporizador y lo continúa */
function ContinuarTemporizador() {
    minutes = Number(localStorage.getItem('minutes'));
    seconds = Number(localStorage.getItem('seconds'));
    setTimer();
    countdown();
}
