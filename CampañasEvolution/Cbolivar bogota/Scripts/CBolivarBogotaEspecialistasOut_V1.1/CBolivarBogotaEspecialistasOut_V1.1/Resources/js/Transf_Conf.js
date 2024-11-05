var idcallnew = 0;

/***************************************************************
*	Desvia al telefono informado
*	\param sTelefono
***************************************************************/
function Transferir(sTelefono, button) {

    var ErrMsgHead = "[Transferir] ";

    if (sTelefono == "") {
        alert(ErrMsgHead + "El campo Telefono no esta informado.");
        return false;
    }

    try {
        var nllamadas;
        var idcallold;

        agentapi.GetCallsCount()
        .done(function (nRet) {
            //alert('Nums. llamadas en curso=' + nRet);
            nllamadas = nRet;

            if (nllamadas > 0) {
                agentapi.GetActiveCall()
                .done(function (nRet) {
                    //alert('Llamada activa con idCall=' + nRet);
                    idcallold = nRet;

                    agentapi.MakeCall(sTelefono)
                    .done(function (nRet) {
                        //alert('Llamada realizada con idCall=' + nRet);
                        idcallnew = nRet;

                        agentapi.Wait4CallState(idcallnew, 2)
                        .done(function () {
                            //alert('Transferencia');
                            Transfer(idcallnew, idcallold, button);
                        })
                        .fail(function (code, cause) {
                            alert('Verificar estado llamada fallo. Code:' + code + '. Cause:' + cause + ', no se producira la transferencia');
                            desviado = true;
                            button.click();
                        });

                    })
                    .fail(function (code, cause) {
                        alert('RealizarLlamada fallo. Code:' + code + '. Cause:' + cause + ', no se producira la transferencia');
                        desviado = true;
                        button.click();
                    });
                })
                .fail(function (code, cause) {
                    alert('ObtenerLlamadaActiva fallo. Code:' + code + '. Cause:' + cause + ', no se producira la conferencia');
                    desviado = true;
                    button.click();
                });
            }
            else {
                //alert('No hay ninguna llamada en curso, no se producira la transferencia');
                desviado = true;
                button.click();
            }
        })
        .fail(function (code, cause) {
            alert('ObtenerLlamadas fallo. Code:' + code + '. Cause:' + cause + ', no se producira la transferencia');
            desviado = true;
            button.click();
        });

    } catch (e) {
        alert(ErrMsgHead + e.name + " " + e.message);
        desviado = true;
        button.click();
    }

    //return false;
}


function Transfer(idcall1, idcall2, button) {
    agentapi.Transfer(idcall1, idcall2)
    .done(function (nRet) {
        //alert('Llamada transferida con idCall=' + nRet);
        setTimeout(function () { agentapi.Hangup(idcall1); }, 1000);
        desviado = true;
        button.click();
    })
    .fail(function (code, cause) {
        //alert('TransferirLlamada fallo. Code:' + code + '. Cause:' + cause + ', no se producira la transferencia');
        setTimeout(function () { agentapi.Hangup(idcall1); }, 1000);
        desviado = true;
        button.click();
    });
}


/***************************************************************
*	Desvia al telefono informado
*	\param sTelefono
***************************************************************/
function Transferir_v2(sTelefono, button) {

    var ErrMsgHead = "[Transferir_v2] ";

    if (sTelefono == "") {
        alert(ErrMsgHead + "El campo Telefono no esta informado.");
        return false;
    }

    try {
        var nllamadas;

        agentapi.GetCallsCount()
        .done(function (nRet) {
            //alert('Nums. llamadas en curso=' + nRet);
            nllamadas = nRet;

            if (nllamadas > 0) {
                //alert('#' + sTelefono);
                agentapi.MakeCall('#' + sTelefono)
                .done(function (nRet) {
                    //alert('Llamada realizada con idCall=' + nRet);
                    desviado = true;
                    button.click();
                })
                .fail(function (code, cause) {
                    alert('RealizarLlamada fallo. Code:' + code + '. Cause:' + cause + ', no se producira la transferencia');
                    desviado = true;
                    button.click();
                });
            }
            else {
                //alert('No hay ninguna llamada en curso, no se producira la transferencia');
                desviado = true;
                button.click();
            }
        })
        .fail(function (code, cause) {
            alert('ObtenerLlamadas fallo. Code:' + code + '. Cause:' + cause + ', no se producira la transferencia');
            desviado = true;
            button.click();
        });

    } catch (e) {
        alert(ErrMsgHead + e.name + " " + e.message);
        desviado = true;
        button.click();
    }
}

/***************************************************************
*	Realiza conferencia con un determinado telefono
*	\param sTelefono
***************************************************************/
function Conferenciar(sTelefono) {
    var ErrMsgHead = "[Conferenciar] ";

    if (sTelefono == "") {
        alert(ErrMsgHead + "El campo Telefono no esta informado.");
        return false;
    }

    try {
        var idcallold;

        agentapi.GetCallsCount()
        .done(function (nRet) {
            //alert('Nums. llamadas en curso=' + nRet);
            nllamadas = nRet;

            if (nllamadas == 1) {
                agentapi.GetActiveCall()
                .done(function (nRet) {
                    //alert('Id llamada activa=' + nRet);
                    idcallold = nRet;

                    if (idcallold > 0) {
                        //Si hay llamada activa realizamos consulta

                        agentapi.MakeCall(sTelefono)
                        .done(function (nRet) {
                            //alert('Llamada realizada con idCall=' + nRet);
                            idcallnew = nRet;

                            agentapi.Wait4CallState(idcallnew, 2)
                            .done(function () {
                                //alert('Conferencia');
                                setTimeout(function () {
                                    agentapi.Conference(idcallnew, idcallold)
                                    .done(function (nRet) {
                                        //alert('Conferencia realizada con idCall=' + nRet);
                                        return true;
                                    })
                                    .fail(function (code, cause) {
                                        alert('RealizarConferencia fallo. Code:' + code + '. Cause:' + cause + ', no se producira la conferencia');
                                        return false;
                                    });
                                }, 500);
                            })
                            .fail(function (code, cause) {
                                alert('Verificar estado llamada fallo. Code:' + code + '. Cause:' + cause + ', no se producira la transferencia');
                                desviado = true;
                                button.click();
                            });
                        })
                        .fail(function (code, cause) {
                            alert('RealizarLlamada fallo. Code:' + code + '. Cause:' + cause + ', no se producira la conferencia');
                            return false;
                        });

                    }
                    else {
                        alert('No hay llamada activa, no se producira la conferencia');
                        return false;
                    }
                })
                .fail(function (code, cause) {
                    alert('ObtenerLlamadaActiva fallo. Code:' + code + '. Cause:' + cause + ', no se producira la conferencia');
                    return false;
                });
            }
            else {
                alert('No hay solo una llamada en curso, no se producira la conferencia');
                return false;
            }
        })
        .fail(function (code, cause) {
            alert('ObtenerLlamadas fallo. Code:' + code + '. Cause:' + cause + ', no se producira la transferencia');
            return false;
        });
    } catch (e) {
        alert(ErrMsgHead + e.name + " " + e.message);
    }

    return false;
}

/***************************************************************
*	Envia DTMF a la llamada de consulta
*	\param sDigitos
***************************************************************/
function EnviarDTMFs(sDigitos) {

    var ErrMsgHead = "[EnviarDigitos] ";

    if (sDigitos == "") {
        alert(ErrMsgHead + "El campo sDigitos no esta informado.");
        return false;
    }

    try {
        var nllamadas;
        agentapi.GetCallsCount()
        .done(function (nRet) {
            //alert('Nums. llamadas en curso=' + nRet);
            nllamadas = nRet;

            if (nllamadas == 3) {
                agentapi.SendDTMF(idcallnew, sDigitos)
                .done(function (nRet) {
                    //alert('Envio de DTMFs correcto');
                    return true;
                })
                .fail(function (code, cause) {
                    alert('EnvioDTMFs fallo. Code:' + code + '. Cause:' + cause + ', no se iniciara loc. Bureau');
                    return false;
                });
            }
            else {
                alert('No hay conferencia de grabacion, no se iniciara loc. Bureau');
                return false;
            }
        })
        .fail(function (code, cause) {
            alert('ObtenerLlamadas fallo. Code:' + code + '. Cause:' + cause + ', no se iniciara loc. Bureau');
            return false;
        });

    } catch (e) {
        alert(ErrMsgHead + e.name + " " + e.message);
    }

    return false;
}

