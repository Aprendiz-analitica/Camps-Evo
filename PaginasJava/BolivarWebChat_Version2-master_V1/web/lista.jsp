<%-- 
    Document   : lista =  Original 
    Created on : 16/07/2019, 03:26:09 PM
    Author     : jvaldes
--%>




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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Constructora Bolivar WebChat</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
        <link rel="stylesheet"  type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
        <link href="css/Lista.css" rel="stylesheet" type="text/css" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            .segmentos{
                width: 48%;
                margin: 0% 1%;
            }
            div.container{
                width: 100%;
                display: flex;
                flex-direction: row;
            }
            div.segmentos h5, div.segmentos button {
                display: flex;
                justify-content: center;
                margin: 0% auto;
            }
        </style>
    </head>


    <center>
        <div style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" 
                                                            style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 271.49,-49.98 500.27,147.55 L500.00,0.00 L0.00,0.00 Z" 
                                                            style="stroke: none; fill: #2b8b4b;"></path></svg></div>
        <img src="logo-constructora-bolivar.svg" alt="ConstructoraBolivarBogota" width="200px">
        <br>
        <br>      
    </center>
    <body style="background-color: #fffaf1">

        <div class="container">
            <div class="segmentos">
                <h5 style="color: black">Seguimiento de Pausas</h5>
                <form name="fmrCampana" action="Indice.jsp" method="post"> 
                    <br>
                    <div class="form-group">
                        <div class="form-group ">
                            <label for="exampleInputPassword1">Fecha Inicial</label>
                            <input type="date" class="form-control" name="fechaIn" required="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1"  >Fecha Final</label>
                            <input type="date" class="form-control" name="fechaFin" required="">
                        </div>              
                        <br>          
                    </div>
                    <button type="submit" class="btn btn-primary"
                            style="background-color: #2b8b4b;color: white;border-color: #415b75; height:38px;"
                            name="btnEnvia">REGISTRO DE PAUSAS</button>
                </form>        
            </div>
            <div class="segmentos">
                <h5 style="color: black">Seguimiento de Sesiones </h5>
                <form name="fmrCampana" action="RealTime.jsp" method="post"> 
                    <br>
                    <div class="form-group">

                        <div class="form-group">
                            <label for="exampleInputPassword1">Fecha Inicial</label>
                            <input type="date" class="form-control" name="fechaIn" required="">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1"  >Fecha Final</label>
                            <input type="date" class="form-control" name="fechaFin" required="">
                        </div>

                        <br> 

                    </div>
                    <button type="submit" class="btn btn-primary"
                            style="background-color: #2b8b4b;color: white;border-color: #415b75;  height:38px;"
                            name="btnEnvia">REGISTRO DE SESIONES</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
