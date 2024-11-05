<%-- 
    Document   : lista
    Created on : 16/07/2019, 03:26:09 PM
    Author     : jvaldes
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Constructora Bolivar Bogota Llamadas sin tipificar</title>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
        <link href="css/Lista.css" rel="stylesheet" type="text/css">
    <center>
        <divt>
            <h3>Constructora Bolivar Bogota Llamadas sin tipificar</h3>
        </divt>
        <img src="logo-constructora-bolivar.svg" alt="ConstructoraBolivarBogota" width="300px">


    </center>

</head>
<body style="background-color: #fcfaf9">
    <div class="container">
        <center>

            <form name="fmrCampana" action="Indice.jsp" method="post">
                <div class="form-group">
                    <br>
                    <label for="exampleFormControlSelect1" style="color: #008c44 ">SELECCIONE INTERVALO DE FECHAS</label>
                    <div class="form-group">
                        <label for="exampleFormControlInput1" style="color: #008c44">INICIO:</label>
                        <input type="date" class="form-control" name="fechaIn">
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlInput1" style="color: #008c44">FIN: </label>
                        <input type="date" class="form-control" name="fechaFin">
                    </div>

                </div>
                <button type="submit" class="btn btn-primary"
                        style="background-color: #008c44;color: white;border-color: #fcfaf9;" 
                        name="btnEnvia">CONSULTAR</button>

            </form>
        </center>
    </div>
</body>
</html>
