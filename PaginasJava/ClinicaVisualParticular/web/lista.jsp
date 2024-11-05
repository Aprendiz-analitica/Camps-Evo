<%-- 
oRIGINAL
    Document   : lista = OFta
    Created on : 16/07/2019, 03:26:09 PM
    Author     : jvaldes
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Clinica Oftalmologica Llamadas sin tipificar</title>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
        <link href="css/Listas.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <center>

        <div style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" 
                                                            style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 271.49,-49.98 500.27,147.55 L500.00,0.00 L0.00,0.00 Z" 
                                                            style="stroke: none; fill: #65a1d1;"></path></svg></div>

        <img src="logo.png" alt="Dime" width="350px">


    </center>







</head>
<br><!-- comment -->

<body style="background-color: #fcfaf9" onload="function()">
    <div class="container">
        <center>

            <form name="fmrCampana" action="Indice.jsp" method="post">
                <div class="form-group">
                    <br>
                    <br><!-- comment -->
                     <br>
                    <label for="exampleFormControlSelect1" style="color: #415b75 ">LLAMADAS SIN TIPIFICAR</label>


                    <div class="form-group col-md-5">
                        <label for="exampleInputPassword1">Seleccione Fecha Inicial</label>
                        <input type="date" class="form-control" name="fechaIn" required="">
                    </div>

                    <div class="form-group col-md-5">
                        <label for="exampleInputPassword1"  >Seleccione Fecha Final</label>
                        <input type="date" class="form-control" name="fechaFin" required="">
                    </div>



                </div>
                <br><!-- comment -->




                <button  type="submit" class="btn btn-primary"  
                         style="background-color: #415b75;color: white;border-color: #415b75; width:120px; height:38px;" 
                         name="btnEnvia" onclick="mensaje()">CONSULTAR
                    <img>

                </button>


            </form>
            <br>
            <br>
            <br>
            <br> 
            <br>
            <script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>


        </center>


    </div>

</body>

</html>
