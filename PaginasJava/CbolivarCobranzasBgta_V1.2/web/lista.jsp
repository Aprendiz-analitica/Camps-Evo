<%-- 
    Document   : lista =  Original 
    Created on : 16/07/2019, 03:26:09 PM
    Author     : jvaldes
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Constructora Bolivar Bgta Cobranzas</title>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
        <link rel="stylesheet"  type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
        <link href="css/Lista.css" rel="stylesheet" type="text/css" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    </head>


    <center>
        <div style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" 
                                                            style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 271.49,-49.98 500.27,147.55 L500.00,0.00 L0.00,0.00 Z" 
                                                            style="stroke: none; fill: #2b8b4b;"></path></svg></div>




        <img src="logo-constructora-bolivar.svg" alt="ConstructoraBolivarBogota" width="200px">
        <br>
        <br>

        <h5 style="color: #2e2c27bf">Constructora Bolivar Bgta Cobranzas Reporte de Clientes</h5>

    </center>
    <body style="background-color: #fffaf1">

    <center>
        <form name="fmrCampana" action="Indice.jsp" method="post"> 



            <br>
            <div class="form-group">

                <div class="form-group col-md-5">
                    <label for="exampleInputPassword1">Fecha Inicial</label>
                    <input type="date" class="form-control" name="fechaIn" required="">
                </div>

                <div class="form-group col-md-5">
                    <label for="exampleInputPassword1"  >Fecha Final</label>
                    <input type="date" class="form-control" name="fechaFin" required="">
                </div>
                <div class="form-group col-md-5">
                    <input class="form-check-input" type="checkbox" value="true" name ="TraerAgentes" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        ¿Desea consultar todos los agentes?
                    </label>
                </div>
                <select class="input username col-md-3" name="desfinal" 
                        style="padding: .375rem .75rem; background-color: #fff; background-clip: padding-box; color: #212529; border: 1px solid #ced4da; font-size: 1rem;">
                    <option value="100000250">CBOLIVAR BGTA COBRANZAS OUT</option>
                    <option value="100000588">CBOLIVAR BGTA COBRANZAS OUT AGENTE 1</option>
                    <option value="100000589">CBOLIVAR BGTA COBRANZAS OUT AGENTE 2</option>
                    <option value="100000590">CBOLIVAR BGTA COBRANZAS OUT AGENTE 3</option>
                    <option value="100000591">CBOLIVAR BGTA COBRANZAS OUT AGENTE 4</option>
                    <option value="100000592">CBOLIVAR BGTA COBRANZAS OUT AGENTE 5</option>
                    <option value="100000593">CBOLIVAR BGTA COBRANZAS OUT AGENTE 6</option>
                    <option value="100000594">CBOLIVAR BGTA COBRANZAS OUT AGENTE 7</option>
                    <option value="100000595">CBOLIVAR BGTA COBRANZAS OUT AGENTE 8</option>
                    <option value="100000596">CBOLIVAR BGTA COBRANZAS OUT AGENTE 9</option>
                    <option value="100000597">CBOLIVAR BGTA COBRANZAS OUT AGENTE 10</option>
                    <option value="100000598">CBOLIVAR BGTA COBRANZAS OUT AGENTE 11</option>
                    <option value="100000599">CBOLIVAR BGTA COBRANZAS OUT AGENTE 12</option>
                    <option value="100000600">CBOLIVAR BGTA COBRANZAS OUT AGENTE 13</option>
                </select>
                <br> 
            </div>
            <button type="submit" class="btn btn-primary"
                    style="background-color: #2b8b4b;color: white;border-color: #415b75; width:120px; height:38px;"
                    name="btnEnvia">CONSULTAR</button>

        </form>

        <br>
        <br>
        <br>
        <br> 
        <br>
    </center>
</div>
</body>
</html>
