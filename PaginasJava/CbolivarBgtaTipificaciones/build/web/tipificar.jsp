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




    <table class="formulario"  style="width:603px; margin-left: auto; margin-right:auto;" >        
        <thead>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="css/Lista.css" rel="stylesheet" type="text/css">
        <script type="text/javascript">
            var token;
            var url = "https://api.fenalcovalle.com";
            function Transf_Encuesta() {
                agentapi.FastTransferActiveCall(6040)
                        .done(function () {

                        })
                        .fail(function (code, cause) {
                            alert('Error de transferencia, intente de nuevo');
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



            function insertarpqrs() {
                var idcall = $('input:hidden[name=idllamada]').val();
                var idoriginal = $('input:text[name=numdoc]').val();
                var nombre1 = $('input:text[name=name1]').val();
                var nombre2 = $('input:text[name=nombre2]').val();
                var apellido1 = $('input:text[name=apellido1]').val();
                var apellido2 = $('input:text[name=apellido2]').val();
                var momento = $("#Momento option:selected").text();
                var necesidad = $("#Necesidad option:selected").text();
                var casosk = $('input:text[name=casoserk]').val();


                if (momento == '' || $("#Momento option:selected").val() == 0) {
                    alert("El campo Tipifación esta vacio y es obligatorio");
                    return false;
                } else if (necesidad == '' || $("#Necesidad option:selected").val() == 0) {
                    alert("El campo Subtipificación esta vacio y es obligatorio");
                    return false;
                }else if (casosk == '') {
                    alert("El campo Caso SER-K esta vacio y es obligatorio");
                    return false;
                }    
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
                        "momento": momento,
                        "actividad": casosk  
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
                            "idtipificacion": "102",
                            "idcall": idcall,
                            "destipificacion": "LLAMADA SAC/PQRS"
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
    </thead>
    <tbody>
        <%
            String idcall = request.getParameter("id");

            try {
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                Connection con1 = DriverManager.getConnection("jdbc:sqlserver://172.10.1.101:1433;DatabaseName=EVOLUTIONDB", "analitica", "Fenalco2023*..");
                String sql1 = "";
                sql1 = "Select MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN IDORIGINAL is NULL THEN  '' ELSE IDORIGINAL END ) END ))  AS numdoc,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN NOMBRE is NULL THEN  '' ELSE NOMBRE END ) END )) AS name,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN sNombreCompleto is NULL THEN  '' ELSE sNombreCompleto END ) END )) AS name2,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN APELLIDO1 is NULL THEN  '' ELSE APELLIDO1 END ) END )) AS lastname,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN APELLIDO2 is NULL THEN  '' ELSE APELLIDO2 END ) END )) AS lastname2,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN APELLIDO1 is NULL THEN  '' ELSE APELLIDO1 END ) END )) AS lastname,MAX((CASE WHEN IDSUJETO = 0 THEN  '' ELSE (CASE WHEN TELEFONO is NULL THEN  '' ELSE TELEFONO END ) END )) AS numtel,MAX(TEXTO2) as check1 from clientes where TEXTO1 = '" + idcall + "'OR  IDSUJETO = (Select idsujeto  from TRANSACCION WHERE idTransaccion = " + idcall + " UNION (Select idsujeto  from tbHistoFTransacciones WHERE idTransaccion = " + idcall + "))";
                //sql1 = "Select IDORIGINAL as numdoc,NOMBRE as name,sNombreCompleto AS name2,APELLIDO1 as lastname,APELLIDO2 as lastname2,TELEFONO as numtel,TEXTO2 as check1  from clientes where TEXTO1 = '"+idcall+"'";
                PreparedStatement ps1 = con1.prepareStatement(sql1);
                ResultSet rs1 = ps1.executeQuery();
                while (rs1.next() == true) {
        %>

        <tr style="font-weight: bold; font-family: Roboto; color: white; background-color: #2b8b4b;font-size: 16px; border : 1px solid #2b8b4b; width: 100% ;height: 50px">
            <th colspan="2">Constructora Bolivar Inbound Datos</th>
        </tr>
        <tr>
            <td class="campo">
                <input id="idllamada" type="hidden" name="idllamada"  value="<%=idcall%>">
                Numero de Documento:<br />
                <input class="text" type="text" id="numdoc" name="numdoc" value ="<%=rs1.getString("numdoc")%>"  minlength="1" maxlength="500" size="10%"  >
            </td>    
        </tr>
        <tr>
            <td class="campo">
                Primer nombre:<br />
                <input class="text" type="text" id="name1" name="name1" value ="<%=rs1.getString("name")%>"  minlength="1" maxlength="500" size="10%" >

            </td>
            <td class="campo">
                Segundo nombre:<br />
                <input class="text" type="text" id="name2" name="nombre2" value ="<%=rs1.getString("name2")%>"  minlength="1" maxlength="500" size="10%" >
            </td>
        </tr>
        <tr>
            <td class="campo">
                Primer apellido:<br />
                <input class="text" type="text" id="lastname1" name="apellido1" value ="<%=rs1.getString("lastname")%>"  minlength="1" maxlength="500" size="10%" >
                <br />
            </td>
            <td class="campo">
                Segundo apellido:<br />
                <input class="text" type="text" id="lastname2" name="apellido2" value ="<%=rs1.getString("lastname2")%>"  minlength="1" maxlength="500" size="10%" >
            </td>
        </tr>
        <tr class="titulo">
            <th colspan="2" style="text-align: center">Finales</th>
        </tr>
        <tr>
            <td colspan="2" style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                Tipificacion:<br />
                <select name="idMomento" id="Momento" onchange="llenarNecesidad(this.value)" style="color: #000000; width: 94%;" >
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                Subtipificacion:<br />
                <select name="idNecesidad" id="Necesidad" style="color: #000000; width: 94%;" >
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                Caso SER-K::<br />
                <input class="text" type="text" id="idCasoSerk" name="casoserk" minlength="1" maxlength="500" size="10%" style="width: 25%" >
            </td>
        </tr>
        
        
        <tr>
            <td colspan="2" style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px; text-align: center">
                <input id="Button9" type="button" value="Finalizar" onclick="insertarpqrs()" style="width: 160px; height: 50px"/>
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
