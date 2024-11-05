<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript" src="Resources/js/JQuery.js"></script>
<script type="text/javascript">
    var token ;
    var url = "https://8aozurcink.execute-api.us-east-2.amazonaws.com"; 
    function Transf_Encuesta() {
        agentapi.TransferActiveCall('5044');

    }
  $(document).ready(function() {
    var temp;
    var settings = {
                    "url": url+"/auth/login",
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
                        "url": url+"/webservicefenalco/cbolivarbgta/listadomomentos",
                        "method": "POST",
                        "timeout": 0,
                        "headers": {
                            "Authorization": "Bearer "+ token
                            },
                };

					$.ajax(momentos).done(function (response) {
                    temp = response.listado;
                    $('#Momento').append('<option value= 0 > Seleccione Momento </option>'); 
                    $.each(temp, function(key, value) {
                          $('#Momento').append('<option value=' + value.idMomento + '>' + value.descripcion + '</option>');
                        });
					});
            });        
	}); 
    function llenarNecesidad(idMomento) {
                $('#Necesidad option').remove();
                $('#Actividad option').remove();
                $('#Razon option').remove();

                var temp;
                var necesidades = {
                  "url": url+"/webservicefenalco/cbolivarbgta/consultarnecesidadpormaestro",
                  "method": "POST",
                  "timeout": 0,
                  "headers": {
                    "Authorization": "Bearer "+ token,
                    "Content-Type": "application/json"
                  },
                  "data": JSON.stringify({
                    "idmomento": idMomento
                  }),
                };

                $.ajax(necesidades).done(function (response) {
                    temp = response.listado;
                         $('#Necesidad').append('<option value= 0 > Seleccione Necesidad </option>');   
                    $.each(temp, function(key, value) {
                          $('#Necesidad').append('<option value=' + value.idNecesidad + '>' + value.descripcion + '</option>');
                        });
                });

	}

    function llenarActividad(idNecesidad) {
                $('#Actividad option').remove();
                $('#Razon option').remove();
                var temp;
                var actividades = {
                  "url": url+"/webservicefenalco/cbolivarbgta/consultaractividadpormaestro",
                  "method": "POST",
                  "timeout": 0,
                  "headers": {
                    "Authorization": "Bearer "+ token,
                    "Content-Type": "application/json"
                  },
                  "data": JSON.stringify({
                    "idnecesidad": idNecesidad
                  }),
                };

                $.ajax(actividades).done(function (response) {
                    temp = response.listado;
                    $('#Actividad').append('<option value= 0 > Seleccione Actividad </option>'); 
                    $.each(temp, function(key, value) {
                          $('#Actividad').append('<option value=' + value.idActividad + '>' + value.descripcion + '</option>');
                        });
                });

	}
    function llenarRazon(idActividad) {
                $('#Razon option').remove();
                var temp;
                var razones = {
                  "url": url+"/webservicefenalco/cbolivarbgta/consultarrazonpormaestro",
                  "method": "POST",
                  "timeout": 0,
                  "headers": {
                    "Authorization": "Bearer "+ token,
                    "Content-Type": "application/json"
                  },
                  "data": JSON.stringify({
                    "idactividad": idActividad
                  }),
                };

                $.ajax(razones).done(function (response) {
                    temp = response.listado;
                    $('#Razon').append('<option value= 0 > Seleccione Razon </option>'); 
                    $.each(temp, function(key, value) {
                          $('#Razon').append('<option value=' + value.idRazon + '>' + value.descripcion + '</option>');
                        });
                });

	}



	function insertarpqrs() {
            var idfinal =  $("#<%= idfinal.ClientID %>").val();
            var idcall =  $("#<%= idtrans.ClientID %>").val();     
            var idoriginal = $("#<%= numdoc.ClientID %>").val();
            var nombre1 = $("#<%= name1.ClientID %>").val();
            var nombre2 = $("#<%= name2.ClientID %>").val();
            var apellido1 = $("#<%= lastname1.ClientID %>").val();
            var apellido2 = $("#<%= lastname2.ClientID %>").val();
            var origen = $("#<%= t1.ClientID %>").val();
            var cierre = $("#<%= t2.ClientID %>").val();
            var motivo = $("#<%= t3.ClientID %>").val();
            var momento = $("#Momento option:selected").text();
            var necesidad = $("#Necesidad option:selected").text();
            var razon = $("#Razon option:selected").text();
            var actividad = $("#Actividad option:selected").text();
            var area = $("#<%= t8.ClientID %>").val();
            var proyecto = $("#<%= Proyecto.ClientID %>").val();
            var agrupacion = $("#<%= Agrupacion.ClientID %>").val();
            var producto = $("#<%= Producto.ClientID %>").val();
            var descripcion = $("#<%= Descripcion.ClientID %>").val();
            var check = $("#<%= CheckBox1.ClientID %>").val();
            var sede = $("#<%= Sedes.ClientID %>").val();
            var settings = {
                            "url": url+"/webservicefenalco/cbolivarbgta/ingresarpqrs",
                            "method": "POST",
                            "timeout": 0,
                            "headers": {
                                "Authorization": "Bearer "+ token,
                                "Content-Type": "application/json"
                            },
                            "data": JSON.stringify({
                                                    "idcall": idcall,
                                                    "idoriginal": idoriginal,
                                                    "nombre1": nombre1,
                                                    "nombre2": nombre2,
                                                    "apellido1": apellido1,
                                                    "apellido2": apellido2,
                                                    "origen": origen,
                                                    "cierre": cierre,
                                                    "motivo": motivo,
                                                    "momento": momento,
                                                    "necesidad": necesidad,
                                                    "razon": razon,
                                                    "actividad": actividad,
                                                    "area": area,
                                                    "proyecto": proyecto,
                                                    "agrupacion": agrupacion,
                                                    "producto": producto,
                                                    "descripcion": descripcion,
                                                    "check": check,
                                                    "sede": sede
                                                      }),
                    };
                    $.ajax(settings).done(function (response) {
                    agentapi.CloseTransaction(idfinal);
                    console.log(response);
                    });
                    
                                
    
    }
    function insertarpqrsgyc() {
            var idcall =  $("#<%= idtrans.ClientID %>").val();     
            var idoriginal = $("#<%= numdoc.ClientID %>").val();
            var nombre1 = $("#<%= name1.ClientID %>").val();
            var nombre2 = $("#<%= name2.ClientID %>").val();
            var apellido1 = $("#<%= lastname1.ClientID %>").val();
            var apellido2 = $("#<%= lastname2.ClientID %>").val();
            var origen = $("#<%= t1.ClientID %>").val();
            var cierre = $("#<%= t2.ClientID %>").val();
            var motivo = $("#<%= t3.ClientID %>").val();
            var momento = $("#Momento option:selected").text();
            var necesidad = $("#Necesidad option:selected").text();
            var razon = $("#Razon option:selected").text();
            var actividad = $("#Actividad option:selected").text();
            var area = $("#<%= t8.ClientID %>").val();
            var proyecto = $("#<%= Proyecto.ClientID %>").val();
            var agrupacion = $("#<%= Agrupacion.ClientID %>").val();
            var producto = $("#<%= Producto.ClientID %>").val();
            var descripcion = $("#<%= Descripcion.ClientID %>").val();
            var check = $("#<%= CheckBox1.ClientID %>").val();
            var sede = $("#<%= Sedes.ClientID %>").val();
            var settings = {
                            "url": url+"/webservicefenalco/cbolivarbgta/ingresarpqrs",
                            "method": "POST",
                            "timeout": 0,
                            "headers": {
                                "Authorization": "Bearer "+ token,
                                "Content-Type": "application/json"
                            },
                            "data": JSON.stringify({
                                                    "idcall": idcall,
                                                    "idoriginal": idoriginal,
                                                    "nombre1": nombre1,
                                                    "nombre2": nombre2,
                                                    "apellido1": apellido1,
                                                    "apellido2": apellido2,
                                                    "origen": origen,
                                                    "cierre": cierre,
                                                    "motivo": motivo,
                                                    "momento": momento,
                                                    "necesidad": necesidad,
                                                    "razon": razon,
                                                    "actividad": actividad,
                                                    "area": area,
                                                    "proyecto": proyecto,
                                                    "agrupacion": agrupacion,
                                                    "producto": producto,
                                                    "descripcion": descripcion,
                                                    "check": check,
                                                    "sede": sede
                                                      }),
                    };
                    $.ajax(settings).done(function (response) {
                    window.location.replace('CrearCliente.aspx');
                    console.log(response);
                    });                 
                                
    
    }





</script>




    <style type="text/css">
        .tdSample
        {
            height: 30px;        
        }
        .style3
        {
            height: 44px;
        }
        .style8
        {
            height: 50px;
        }
        .style9
        {
            height: 44px;
            width: 290px;
        }
        .style10
        {
            width: 290px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
     
    <table class="formulario" style="width:70%;">        
        <thead>
            <tr>
                <th style="border-color: #f8db66; border-style: hidden hidden solid hidden; border-width: 2px; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    colspan="4" align="center" class="style8">
                    &nbsp;</th>
            </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    colspan="4" align="center" class="style8">
                    Constructora Bolivar Inbound<br />
                    Datos</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Numero de Documento:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style9" colspan="2">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style9" colspan="2">
                    Primer apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                    <br />
                    </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3" colspan="4">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" 
                        Enabled="False"/>
                </td>
                </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; " 
                    colspan="4" align="center">
                    Finalizar Gestion</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; ">
                    Origen caso:<br />
                    <asp:DropDownList ID="t1" runat="server" Width="250px" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Llamada" Selected="True">Llamada</asp:ListItem>
                        <asp:ListItem Value="ChatBot">ChatBot</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t1" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style10" colspan="2">
                    ¿Cierre en primer contacto?<br />
                    <asp:DropDownList ID="t2" runat="server" Width="250px" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>SI</asp:ListItem>
                        <asp:ListItem Value="NO">NO</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; ">
                    Motivo:<br />
                    <asp:DropDownList ID="t3" runat="server" Height="25px" Width="250px" 
                        ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Felicitacion ">Felicitacion </asp:ListItem>
                        <asp:ListItem Value="Peticion ">Peticion </asp:ListItem>
                        <asp:ListItem Value="Queja">Queja</asp:ListItem>
                        <asp:ListItem Value="Reclamo ">Reclamo </asp:ListItem>

                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t3" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-size: 16px; font-weight: bold;" 
                    colspan="4">
                    Momento:<br />
                    <select name="idMomento" id="Momento" onchange="llenarNecesidad(this.value)" 
                        style="color: #000000" >
                    </select><br />


                    <br />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="4">
                    Necesidad:<br />
                    <select name="idNecesidad" id="Necesidad" 
                        onchange="llenarActividad(this.value)" style="color: #000000" >
                    
                    </select><br />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="4">
                    Actividad (SAC):<br />
                    <select name="idActividad" id="Actividad" onchange="llenarRazon(this.value)" 
                        style="color: #000000" >
                    
                    </select></td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="4">
                    Razon:<br />
                    <select name="idRazon" id="Razon" style="color: #000000" >
                    
                    </select><asp:HiddenField ID="idtrans" runat="server" />
                    <asp:HiddenField ID="name1" runat="server" />
                    <asp:HiddenField ID="name2" runat="server" />
                    <asp:HiddenField ID="lastname1" runat="server" />
                    <asp:HiddenField ID="lastname2" runat="server" />
                    <asp:HiddenField ID="numdoc" runat="server" />
                    <asp:HiddenField ID="idfinal" runat="server" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="4">
                    Area:<br />
                    <asp:DropDownList ID="t8" runat="server" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Gestion de Negocios Inmobiliarios Barranquilla">Gestion de Negocios Inmobiliarios Barranquilla </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Bogota D.C.">Gestion de Negocios Inmobiliarios Bogota D.C. </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Cajica">Gestion de Negocios Inmobiliarios Cajica </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Cartagena de Indias">Gestion de Negocios Inmobiliarios Cartagena de Indias </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Chia">Gestion de Negocios Inmobiliarios Chia </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Funza">Gestion de Negocios Inmobiliarios Funza </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Ibague">Gestion de Negocios Inmobiliarios Ibague </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Madrid">Gestion de Negocios Inmobiliarios Madrid </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Mosquera (CUND)">Gestion de Negocios Inmobiliarios Mosquera (CUND) </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Ricaurte (CUND)">Gestion de Negocios Inmobiliarios Ricaurte (CUND) </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Rio Negro">Gestion de Negocios Inmobiliarios Rio Negro</asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Santa Marta">Gestion de Negocios Inmobiliarios Santa Marta </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Soacha">Gestion de Negocios Inmobiliarios Soacha </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Soledad">Gestion de Negocios Inmobiliarios Soledad </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Zipaquira">Gestion de Negocios Inmobiliarios Zipaquira </asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t8" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    colspan="4">
                    Las salas de ventas habilitadas para la comunicación son:<br />
                    <asp:DropDownList ID="Sedes" runat="server" ForeColor="Black" Width="250px">
                                            <asp:ListItem></asp:ListItem>
<asp:ListItem Value="Alameda del Rio">Alameda del Rio </asp:ListItem>
<asp:ListItem Value="Mirolindo">Mirolindo </asp:ListItem>
<asp:ListItem Value="Picalena">Picaleña </asp:ListItem>
<asp:ListItem Value="Lunaria">Lunaria </asp:ListItem>
<asp:ListItem Value="San Jose">San Jose </asp:ListItem>
<asp:ListItem Value="Ciudad del Puerto">Ciudad del Puerto </asp:ListItem>
<asp:ListItem Value="Parques de Bolivar Barranquilla">Parques de Bolivar Barranquilla </asp:ListItem>
                                            <asp:ListItem>Caribe Verde</asp:ListItem>
                                            <asp:ListItem>Ricaurte</asp:ListItem>
                                            <asp:ListItem>Reserva de Curinca</asp:ListItem>
                                            <asp:ListItem>Santa Marta Centro</asp:ListItem>
                                            <asp:ListItem>Sabana Grande Fontibón</asp:ListItem>
                                            <asp:ListItem>Salitre Living</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Proyecto:<br />
                    <asp:DropDownList ID="Proyecto" runat="server" ForeColor="Black" Width="250px">
<asp:ListItem></asp:ListItem>
<asp:ListItem Value="127 LIVING">127 LIVING</asp:ListItem>
<asp:ListItem Value="176 PARK">176 PARK</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO -  TORCAZA VIP">ALAMEDA DEL RIO -  TORCAZA VIP</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - BUHO">ALAMEDA DEL RIO - BUHO</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - CANARIO">ALAMEDA DEL RIO - CANARIO</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - GARZAS">ALAMEDA DEL RIO - GARZAS</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - GORRION">ALAMEDA DEL RIO - GORRION</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - GUACAMAYA">ALAMEDA DEL RIO - GUACAMAYA</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - MIRLA">ALAMEDA DEL RIO - MIRLA</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - MONARCA">ALAMEDA DEL RIO - MONARCA</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - TORTOLA">ALAMEDA DEL RIO - TORTOLA</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - TUCAN VIS">ALAMEDA DEL RIO - TUCAN VIS</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO CISNE">ALAMEDA DEL RIO CISNE</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO MARIA MULATA">ALAMEDA DEL RIO MARIA MULATA</asp:ListItem>
<asp:ListItem Value="ALBAHACA">ALBAHACA</asp:ListItem>
<asp:ListItem Value="ALCALA">ALCALA</asp:ListItem>
<asp:ListItem Value="ALSACIA OCCIDENTAL">ALSACIA OCCIDENTAL</asp:ListItem>
<asp:ListItem Value="ALTAIR">ALTAIR</asp:ListItem>
<asp:ListItem Value="ALTOS DE FONTIBON">ALTOS DE FONTIBON</asp:ListItem>
<asp:ListItem Value="ALTOS DE MADRID">ALTOS DE MADRID</asp:ListItem>
<asp:ListItem Value="ALTOS DEL VINCULO">ALTOS DEL VINCULO</asp:ListItem>
<asp:ListItem Value="AMAPOLA">AMAPOLA</asp:ListItem>
<asp:ListItem Value="AMERICAS DEL TINTAL">AMERICAS DEL TINTAL</asp:ListItem>
<asp:ListItem Value="ARANJUEZ">ARANJUEZ</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DE SAN CARLOS">ARBOLEDA DE SAN CARLOS</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE - CHICALÁ">ARBOLEDA DEL CAMPESTRE - CHICALÁ</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE ACACIA">ARBOLEDA DEL CAMPESTRE ACACIA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE ALGARROBO">ARBOLEDA DEL CAMPESTRE ALGARROBO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE ALMENDRO">ARBOLEDA DEL CAMPESTRE ALMENDRO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE ARENILLO">ARBOLEDA DEL CAMPESTRE ARENILLO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE CAMBULO">ARBOLEDA DEL CAMPESTRE CAMBULO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE CARACOLI">ARBOLEDA DEL CAMPESTRE CARACOLI</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE CEIBA">ARBOLEDA DEL CAMPESTRE CEIBA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE GUALANDAY">ARBOLEDA DEL CAMPESTRE GUALANDAY</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE IGUA">ARBOLEDA DEL CAMPESTRE IGUA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE JACARANDA">ARBOLEDA DEL CAMPESTRE JACARANDA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE JAGUA">ARBOLEDA DEL CAMPESTRE JAGUA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE LAUREL">ARBOLEDA DEL CAMPESTRE LAUREL</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE PAYANDE">ARBOLEDA DEL CAMPESTRE PAYANDE</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE SAMAN">ARBOLEDA DEL CAMPESTRE SAMAN</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE TAMARINDO">ARBOLEDA DEL CAMPESTRE TAMARINDO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE TOTUMO">ARBOLEDA DEL CAMPESTRE TOTUMO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE VAINILLO">ARBOLEDA DEL CAMPESTRE VAINILLO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE YARUMO">ARBOLEDA DEL CAMPESTRE YARUMO</asp:ListItem>
<asp:ListItem Value="ARENA">ARENA</asp:ListItem>
<asp:ListItem Value="ATRIA">ATRIA</asp:ListItem>
<asp:ListItem Value="AUSTRO">AUSTRO</asp:ListItem>
<asp:ListItem Value="B10408 ALAMO">B10408 ALAMO</asp:ListItem>
<asp:ListItem Value="B15702 ROSA CELESTE">B15702 ROSA CELESTE</asp:ListItem>
<asp:ListItem Value="B15703 ROSA TURQUESA">B15703 ROSA TURQUESA</asp:ListItem>
<asp:ListItem Value="B15704 ROSA IMPERIAL">B15704 ROSA IMPERIAL</asp:ListItem>
<asp:ListItem Value="B15705-CIUDAD ROSALEDA ROSA AMATISTA">B15705-CIUDAD ROSALEDA ROSA AMATISTA</asp:ListItem>
<asp:ListItem Value="B16807 LOS CERRITOS">B16807 LOS CERRITOS</asp:ListItem>
<asp:ListItem Value="B17301 URBANA 30">B17301 URBANA 30</asp:ListItem>
<asp:ListItem Value="B17302 URBANA 30 NO VIS">B17302 URBANA 30 NO VIS</asp:ListItem>
<asp:ListItem Value="B17803-BOSQUE ROBLEDAL">B17803-BOSQUE ROBLEDAL</asp:ListItem>
<asp:ListItem Value="B18202 PUERTO CAMPANA">B18202 PUERTO CAMPANA</asp:ListItem>
<asp:ListItem Value="B18508 TRAMONTE LIVING NO VIS">B18508 TRAMONTE LIVING NO VIS</asp:ListItem>
<asp:ListItem Value="B18510 ZIBAL">B18510 ZIBAL</asp:ListItem>
<asp:ListItem Value="B18512 TRAMONTE LIVING VIS">B18512 TRAMONTE LIVING VIS</asp:ListItem>
<asp:ListItem Value="B18701 - LOS PINOS">B18701 - LOS PINOS</asp:ListItem>
<asp:ListItem Value="B18801 NOVUM RICAURTE VIS">B18801 NOVUM RICAURTE VIS</asp:ListItem>
<asp:ListItem Value="B19701-BAVIERA PARK BAVIERA PARK">B19701-BAVIERA PARK BAVIERA PARK</asp:ListItem>
<asp:ListItem Value="BARLOA">BARLOA</asp:ListItem>
<asp:ListItem Value="BELLAVISTA IMPERIAL">BELLAVISTA IMPERIAL</asp:ListItem>
<asp:ListItem Value="BONAVENTO">BONAVENTO</asp:ListItem>
<asp:ListItem Value="BOSQUE CEIBAL">BOSQUE CEIBAL</asp:ListItem>
<asp:ListItem Value="BOSQUES DE BOGOTA 1">BOSQUES DE BOGOTA 1</asp:ListItem>
<asp:ListItem Value="BOSQUES DE BOGOTA 2">BOSQUES DE BOGOTA 2</asp:ListItem>
<asp:ListItem Value="BOSQUES DE BOGOTA 3">BOSQUES DE BOGOTA 3</asp:ListItem>
<asp:ListItem Value="BOSQUES DE BOGOTA 4">BOSQUES DE BOGOTA 4</asp:ListItem>
<asp:ListItem Value="BOSQUES DE PROVENZA">BOSQUES DE PROVENZA</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL ZAPAN ETAPA 1">BOSQUES DEL ZAPAN ETAPA 1</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL ZAPAN ETAPA 2">BOSQUES DEL ZAPAN ETAPA 2</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL ZAPAN ETAPA 3 MZ 9">BOSQUES DEL ZAPAN ETAPA 3 MZ 9</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL ZAPAN ETAPA 4">BOSQUES DEL ZAPAN ETAPA 4</asp:ListItem>
<asp:ListItem Value="BRISAS - RESERVA DE CURINCA">BRISAS - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="BRISAS DEL PARQUE">BRISAS DEL PARQUE</asp:ListItem>
<asp:ListItem Value="BUENAVISTA LIVING">BUENAVISTA LIVING</asp:ListItem>
<asp:ListItem Value="CALENDULA">CALENDULA</asp:ListItem>
<asp:ListItem Value="CAMINO DE LOS GIRASOLES">CAMINO DE LOS GIRASOLES</asp:ListItem>
<asp:ListItem Value="CAMINOS DEL VINCULO">CAMINOS DEL VINCULO</asp:ListItem>
<asp:ListItem Value="CAPELLA">CAPELLA</asp:ListItem>
<asp:ListItem Value="CASAS DE PORTOBELO">CASAS DE PORTOBELO</asp:ListItem>
<asp:ListItem Value="CASTELLANA 51">CASTELLANA 51</asp:ListItem>
<asp:ListItem Value="CATLEYA NO VIS">CATLEYA NO VIS</asp:ListItem>
<asp:ListItem Value="CATLEYA VIS">CATLEYA VIS</asp:ListItem>
<asp:ListItem Value="CENTRAL 68 NO VIS">CENTRAL 68 NO VIS</asp:ListItem>
<asp:ListItem Value="CENTRAL 68 VIS">CENTRAL 68 VIS</asp:ListItem>
<asp:ListItem Value="CENTRO COMERCIAL PARQUE CAMPESTRE">CENTRO COMERCIAL PARQUE CAMPESTRE</asp:ListItem>
<asp:ListItem Value="CIBELES">CIBELES</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO ACORDEON">CIUDAD DEL PUERTO - PUERTO ACORDEON</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO ARMONICA">CIUDAD DEL PUERTO - PUERTO ARMONICA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO BONGOE">CIUDAD DEL PUERTO - PUERTO BONGOE</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO CIMBALO">CIUDAD DEL PUERTO - PUERTO CIMBALO</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO CONGA">CIUDAD DEL PUERTO - PUERTO CONGA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO CUMBIA">CIUDAD DEL PUERTO - PUERTO CUMBIA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO FLAUTA">CIUDAD DEL PUERTO - PUERTO FLAUTA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO GAITA ET 1">CIUDAD DEL PUERTO - PUERTO GAITA ET 1</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO GUITARRA">CIUDAD DEL PUERTO - PUERTO GUITARRA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO MILLO">CIUDAD DEL PUERTO - PUERTO MILLO</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO TAMBORA">CIUDAD DEL PUERTO - PUERTO TAMBORA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO TIMBAL">CIUDAD DEL PUERTO - PUERTO TIMBAL</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - VILLAS DEL PUERTO">CIUDAD DEL PUERTO - VILLAS DEL PUERTO</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO MALL">CIUDAD DEL PUERTO MALL</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 10 MZ 2B">CIUDAD TINTAL II ETAPA 10 MZ 2B</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 11 MZ 1">CIUDAD TINTAL II ETAPA 11 MZ 1</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 4 MZ 7B">CIUDAD TINTAL II ETAPA 4 MZ 7B</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 5 MZ 3B">CIUDAD TINTAL II ETAPA 5 MZ 3B</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 6 MZ 3A">CIUDAD TINTAL II ETAPA 6 MZ 3A</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 7 MZ 4A">CIUDAD TINTAL II ETAPA 7 MZ 4A</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 8 MZ 4B">CIUDAD TINTAL II ETAPA 8 MZ 4B</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 9 MZ 2A">CIUDAD TINTAL II ETAPA 9 MZ 2A</asp:ListItem>
<asp:ListItem Value="COLINAS DEL PINAR">COLINAS DEL PINAR</asp:ListItem>
<asp:ListItem Value="COMERCIO GIRASOLES">COMERCIO GIRASOLES</asp:ListItem>
<asp:ListItem Value="DALIA">DALIA</asp:ListItem>
<asp:ListItem Value="EL ENCANTO">EL ENCANTO</asp:ListItem>
<asp:ListItem Value="EL MOLINO - PARQUE CENTRAL CAJICÁ">EL MOLINO -  PARQUE CENTRAL CAJICÁ</asp:ListItem>
<asp:ListItem Value="EL PRADO">EL PRADO</asp:ListItem>
<asp:ListItem Value="EL RETIRO">EL RETIRO</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS ETAPA 1">ENTRELOMAS ETAPA 1</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS ETAPA 2">ENTRELOMAS ETAPA 2</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS ETAPA 3">ENTRELOMAS ETAPA 3</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS ETAPA 4">ENTRELOMAS ETAPA 4</asp:ListItem>
<asp:ListItem Value="FEIJOA">FEIJOA</asp:ListItem>
<asp:ListItem Value="FLORA - RESERVA DE CURINCA">FLORA - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="FONTIBON 128">FONTIBON 128</asp:ListItem>
<asp:ListItem Value="GIRASOLES">GIRASOLES</asp:ListItem>
<asp:ListItem Value="HACIENDA EL ROSAL">HACIENDA EL ROSAL</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET 9 - GUADUA">HACIENDA PEÑALISA ET 9 - GUADUA</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET1 - BAMBU">HACIENDA PEÑALISA ET1 - BAMBU</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET2 - OCOBO">HACIENDA PEÑALISA ET2 - OCOBO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET3 - CEIBA">HACIENDA PEÑALISA ET3 - CEIBA</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET4 - ALMENDRO">HACIENDA PEÑALISA ET4 - ALMENDRO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET5 - TAGUA">HACIENDA PEÑALISA ET5 - TAGUA</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET5 - TAGUA">HACIENDA PEÑALISA ET5 - TAGUA</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET6 - BALSO">HACIENDA PEÑALISA ET6 - BALSO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET-7 POMARROSO">HACIENDA PEÑALISA ET-7 POMARROSO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET-8  MANGO">HACIENDA PEÑALISA ET-8  MANGO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA LIMONAR">HACIENDA PEÑALISA LIMONAR</asp:ListItem>
<asp:ListItem Value="HACIENDA SAN JOSE">HACIENDA SAN JOSE</asp:ListItem>
<asp:ListItem Value="HAYUELOS RESERVADO">HAYUELOS RESERVADO</asp:ListItem>
<asp:ListItem Value="HELICONIA">HELICONIA</asp:ListItem>
<asp:ListItem Value="HORTENSIA">HORTENSIA</asp:ListItem>
<asp:ListItem Value="ILARCO 114">ILARCO 114</asp:ListItem>
<asp:ListItem Value="INDIGO">INDIGO</asp:ListItem>
<asp:ListItem Value="LA CASTELLANA">LA CASTELLANA</asp:ListItem>
<asp:ListItem Value="LA CRISTALINA">LA CRISTALINA</asp:ListItem>
<asp:ListItem Value="LA ESTANCIA">LA ESTANCIA</asp:ListItem>
<asp:ListItem Value="LA ESTANCIA II">LA ESTANCIA II</asp:ListItem>
<asp:ListItem Value="LA ESTANCIA III">LA ESTANCIA III</asp:ListItem>
<asp:ListItem Value="LA ESTANCIA IV">LA ESTANCIA IV</asp:ListItem>
<asp:ListItem Value="LA GRAN RESERVA">LA GRAN RESERVA</asp:ListItem>
<asp:ListItem Value="LA GRAN RESERVA ETAPA 2">LA GRAN RESERVA ETAPA 2</asp:ListItem>
<asp:ListItem Value="LA GRAN RESERVA ETAPA 3">LA GRAN RESERVA ETAPA 3</asp:ListItem>
<asp:ListItem Value="LA LAJITA">LA LAJITA</asp:ListItem>
<asp:ListItem Value="LA REQUILINA">LA REQUILINA</asp:ListItem>
<asp:ListItem Value="LA RIBERA ALTA - LA CONCEPCION">LA RIBERA ALTA - LA CONCEPCION</asp:ListItem>
<asp:ListItem Value="LAGUNA - RESERVA DE CURINCA">LAGUNA - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="LAS HUERTAS">LAS HUERTAS</asp:ListItem>
<asp:ListItem Value="LAS HUERTAS II">LAS HUERTAS II</asp:ListItem>
<asp:ListItem Value="LAS VIOLETAS">LAS VIOLETAS</asp:ListItem>
<asp:ListItem Value="LINARIA">LINARIA</asp:ListItem>
<asp:ListItem Value="LOCALES COMERCIALES AVELLANA">LOCALES COMERCIALES AVELLANA</asp:ListItem>
<asp:ListItem Value="LOCALES COMERCIALES BUGANVILLA">LOCALES COMERCIALES BUGANVILLA</asp:ListItem>
<asp:ListItem Value="LOS ALISOS">LOS ALISOS</asp:ListItem>
<asp:ListItem Value="LUNARIA">LUNARIA</asp:ListItem>
<asp:ListItem Value="MAGENTA">MAGENTA</asp:ListItem>
<asp:ListItem Value="MAGNOLIA">MAGNOLIA</asp:ListItem>
<asp:ListItem Value="MANGLAR">MANGLAR</asp:ListItem>
<asp:ListItem Value="MANGLAR 2">MANGLAR 2</asp:ListItem>
<asp:ListItem Value="MANZANARES">MANZANARES</asp:ListItem>
<asp:ListItem Value="MEDITERRANEO ALEJANDRIA">MEDITERRANEO ALEJANDRIA</asp:ListItem>
<asp:ListItem Value="MENTA">MENTA</asp:ListItem>
<asp:ListItem Value="MIRADOR DE MINCA">MIRADOR DE MINCA</asp:ListItem>
<asp:ListItem Value="MIRADOR DEL ESTE">MIRADOR DEL ESTE</asp:ListItem>
<asp:ListItem Value="MIRADOR DEL ESTE ET 2">MIRADOR DEL ESTE ET 2</asp:ListItem>
<asp:ListItem Value="MIRADOR DEL ESTE ET 3">MIRADOR DEL ESTE ET 3</asp:ListItem>
<asp:ListItem Value="MISTRAL">MISTRAL</asp:ListItem>
<asp:ListItem Value="MISTRAL NO VIS">MISTRAL NO VIS</asp:ListItem>
<asp:ListItem Value="NATURA LIVING">NATURA LIVING</asp:ListItem>
<asp:ListItem Value="NATURA LIVING NO VIS">NATURA LIVING NO VIS</asp:ListItem>
<asp:ListItem Value="NEVADO - RESERVA DE CURINCA">NEVADO - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="NORMANDIA DEL PARQUE ET1">NORMANDIA DEL PARQUE ET1</asp:ListItem>
<asp:ListItem Value="NORMANDIA DEL PARQUE ETAPA II">NORMANDIA DEL PARQUE ETAPA II</asp:ListItem>
<asp:ListItem Value="NOVUM RICAURTE">NOVUM RICAURTE</asp:ListItem>
<asp:ListItem Value="OCEANA 52">OCEANA 52</asp:ListItem>
<asp:ListItem Value="PALOEMANGO">PALOEMANGO</asp:ListItem>
<asp:ListItem Value="PANORAMA 140">PANORAMA 140</asp:ListItem>
<asp:ListItem Value="PARAISO CARIBE">PARAISO CARIBE</asp:ListItem>
<asp:ListItem Value="PARAISO CARIBE 2">PARAISO CARIBE 2</asp:ListItem>
<asp:ListItem Value="PARK LIVING">PARK LIVING</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA I MZ 5 LOTE 1">PARQUE CAMPESTRE ETAPA I MZ 5 LOTE 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA II MZ 5 LOTE 2">PARQUE CAMPESTRE ETAPA II MZ 5 LOTE 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA III MZ 6 LOTE 2">PARQUE CAMPESTRE ETAPA III MZ 6 LOTE 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA IV MZ 6 LOTE 1">PARQUE CAMPESTRE ETAPA IV MZ 6 LOTE 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA IX MZ 1 LT 2">PARQUE CAMPESTRE ETAPA IX MZ 1 LT 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA V MZ 7 LOTE 2">PARQUE CAMPESTRE ETAPA V MZ 7 LOTE 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA VI  - MZ 7 - LOTE 1">PARQUE CAMPESTRE ETAPA VI  - MZ 7 - LOTE 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA VII - MZ 8 - LOTE 2">PARQUE CAMPESTRE ETAPA VII - MZ 8 - LOTE 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA VIII MZ 8 LT 1">PARQUE CAMPESTRE ETAPA VIII MZ 8 LT 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA X MZ 1 LOTE 1">PARQUE CAMPESTRE ETAPA X MZ 1 LOTE 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XI - MZ 2 LT 1">PARQUE CAMPESTRE ETAPA XI - MZ 2 LT 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XII MZ 2 LT 2">PARQUE CAMPESTRE ETAPA XII MZ 2 LT 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XIII MZ 3 LT 2">PARQUE CAMPESTRE ETAPA XIII MZ 3 LT 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XIV MZ 3 LT 1">PARQUE CAMPESTRE ETAPA XIV MZ 3 LT 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XV MZ 4 LT 2">PARQUE CAMPESTRE ETAPA XV MZ 4 LT 2</asp:ListItem>
<asp:ListItem Value="PARQUE CENTRAL CAJICA ET 2 - YERBABUENA">PARQUE CENTRAL CAJICA ET 2 - YERBABUENA</asp:ListItem>
<asp:ListItem Value="PARQUE CENTRAL CAJICÁ ET 3 - CANELÓN">PARQUE CENTRAL CAJICÁ ET 3 - CANELÓN</asp:ListItem>
<asp:ListItem Value="PARQUE CENTRAL CAJICA ET 4 - EL MOLINO">PARQUE CENTRAL CAJICA ET 4 - EL MOLINO</asp:ListItem>
<asp:ListItem Value="PARQUE DE LAS FLORES ETAPA 1 MANZANA F">PARQUE DE LAS FLORES ETAPA 1 MANZANA F</asp:ListItem>
<asp:ListItem Value="PARQUE DE LAS FLORES ETAPA 3 MANZANA D">PARQUE DE LAS FLORES ETAPA 3 MANZANA D</asp:ListItem>
<asp:ListItem Value="PARQUE DE LAS FLORES II MZ E">PARQUE DE LAS FLORES II MZ E</asp:ListItem>
<asp:ListItem Value="PARQUE DE LAS FLORES MZ J">PARQUE DE LAS FLORES MZ J</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - ALCAPARRO">PARQUES DE BOGOTA - ALCAPARRO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - ALISO">PARQUES DE BOGOTA - ALISO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - ARRAYAN">PARQUES DE BOGOTA - ARRAYAN</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - AVELLANA">PARQUES DE BOGOTA - AVELLANA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTÁ - BUGANVILLA">PARQUES DE BOGOTÁ - BUGANVILLA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - CAMPANO">PARQUES DE BOGOTA - CAMPANO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - CAOBA">PARQUES DE BOGOTA - CAOBA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - CEDRO">PARQUES DE BOGOTA - CEDRO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - CEREZO">PARQUES DE BOGOTA - CEREZO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - EUCALIPTO">PARQUES DE BOGOTA - EUCALIPTO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - GUAYACAN">PARQUES DE BOGOTA - GUAYACAN</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - MANZANO">PARQUES DE BOGOTA - MANZANO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - NOGAL">PARQUES DE BOGOTA - NOGAL</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - PINO">PARQUES DE BOGOTA - PINO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - ROBLE">PARQUES DE BOGOTA - ROBLE</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - SAUCE">PARQUES DE BOGOTA - SAUCE</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - SAUCO">PARQUES DE BOGOTA - SAUCO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - URAPAN">PARQUES DE BOGOTA - URAPAN</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLÍVAR BARRANQUILLA">PARQUES DE BOLÍVAR BARRANQUILLA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLÍVAR BARRANQUILLA 2">PARQUES DE BOLÍVAR BARRANQUILLA 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR CARTAGENA">PARQUES DE BOLIVAR CARTAGENA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR CARTAGENA 2">PARQUES DE BOLIVAR CARTAGENA 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR CARTAGENA 3">PARQUES DE BOLIVAR CARTAGENA 3</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR CARTAGENA 4">PARQUES DE BOLIVAR CARTAGENA 4</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR ETAPA II CUCUTA">PARQUES DE BOLIVAR ETAPA II CUCUTA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR ETAPA III CUCUTA">PARQUES DE BOLIVAR ETAPA III CUCUTA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR LA SIERRA">PARQUES DE BOLIVAR LA SIERRA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR LEANDRO DIAZ ET 1">PARQUES DE BOLIVAR LEANDRO DIAZ ET 1</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR LEANDRO DIAZ ET 2">PARQUES DE BOLIVAR LEANDRO DIAZ ET 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR LEANDRO DIAZ ET 3">PARQUES DE BOLIVAR LEANDRO DIAZ ET 3</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SANTA MARTA ET 1">PARQUES DE BOLIVAR SANTA MARTA ET 1</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SANTA MARTA ET 2">PARQUES DE BOLIVAR SANTA MARTA ET 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SANTA MARTA ET 3">PARQUES DE BOLIVAR SANTA MARTA ET 3</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SANTA MARTA ET 4">PARQUES DE BOLIVAR SANTA MARTA ET 4</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SOLEDAD">PARQUES DE BOLIVAR SOLEDAD</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SOLEDAD 2">PARQUES DE BOLIVAR SOLEDAD 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE CASTILLA 3">PARQUES DE CASTILLA 3</asp:ListItem>
<asp:ListItem Value="PARQUES DE CASTILLA 4">PARQUES DE CASTILLA 4</asp:ListItem>
<asp:ListItem Value="PARQUES DE CASTILLA 5">PARQUES DE CASTILLA 5</asp:ListItem>
<asp:ListItem Value="PARQUES DE CASTILLA 6">PARQUES DE CASTILLA 6</asp:ListItem>
<asp:ListItem Value="PARQUES DE HATOGRANDE">PARQUES DE HATOGRANDE</asp:ListItem>
<asp:ListItem Value="PARQUES DE LA ESTACION">PARQUES DE LA ESTACION</asp:ListItem>
<asp:ListItem Value="POBLADO - RESERVA DE CURINCA">POBLADO - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="PORTAL DE LA AUTOPISTA">PORTAL DE LA AUTOPISTA</asp:ListItem>
<asp:ListItem Value="PORTUS ALEJANDRIA">PORTUS ALEJANDRIA</asp:ListItem>
<asp:ListItem Value="PORVENIR RESERVADO CASAS 1">PORVENIR RESERVADO CASAS 1</asp:ListItem>
<asp:ListItem Value="PORVENIR RESERVADO CASAS 2">PORVENIR RESERVADO CASAS 2</asp:ListItem>
<asp:ListItem Value="PRADERA DE FONTIBON 3">PRADERA DE FONTIBON 3</asp:ListItem>
<asp:ListItem Value="PRADERA DE FONTIBON 4">PRADERA DE FONTIBON 4</asp:ListItem>
<asp:ListItem Value="PRADO PARK">PRADO PARK</asp:ListItem>
<asp:ListItem Value="RESERVA DE LUNARIA">RESERVA DE LUNARIA</asp:ListItem>
<asp:ListItem Value="RESERVA DE SAN AGUSTIN">RESERVA DE SAN AGUSTIN</asp:ListItem>
<asp:ListItem Value="RESERVA DE SAN AGUSTIN II">RESERVA DE SAN AGUSTIN II</asp:ListItem>
<asp:ListItem Value="RESERVA DE SAN AGUSTIN III">RESERVA DE SAN AGUSTIN III</asp:ListItem>
<asp:ListItem Value="RESERVA DEL EDEN - ALMENDROS">RESERVA DEL EDEN - ALMENDROS</asp:ListItem>
<asp:ListItem Value="RESERVA DEL EDEN ET 1 - CIRUELOS">RESERVA DEL EDEN ET 1 - CIRUELOS</asp:ListItem>
<asp:ListItem Value="SALITRE LIVING">SALITRE LIVING</asp:ListItem>
<asp:ListItem Value="SANDALO">SANDALO</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 2 - ET 1">SANTA HELENA SMZ 2 - ET 1</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 3 - ET 2">SANTA HELENA SMZ 3 - ET 2</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 4 - ET 3">SANTA HELENA SMZ 4 - ET 3</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 5 - ET 4">SANTA HELENA SMZ 5 - ET 4</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 6 - ET 5">SANTA HELENA SMZ 6 - ET 5</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 7 - ET 6">SANTA HELENA SMZ 7 - ET 6</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 8 - ET 7">SANTA HELENA SMZ 8 - ET 7</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 9 - ET 8">SANTA HELENA SMZ 9 - ET 8</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ10 - ET 9">SANTA HELENA SMZ10 - ET 9</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ11 - ET 10">SANTA HELENA SMZ11 - ET 10</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ12 - ET 11">SANTA HELENA SMZ12 - ET 11</asp:ListItem>
<asp:ListItem Value="SENDEROS - RESERVA DE CURINCA">SENDEROS - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="SENDEROS DE FONTIBON">SENDEROS DE FONTIBON</asp:ListItem>
<asp:ListItem Value="SENDEROS DE FONTIBON NO VIS">SENDEROS DE FONTIBON NO VIS</asp:ListItem>
<asp:ListItem Value="SENDEROS DE FONTIBON VIS">SENDEROS DE FONTIBON VIS</asp:ListItem>
<asp:ListItem Value="TENERIFE ALEJANDRIA">TENERIFE ALEJANDRIA</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE II ETAPA 3">TERRAGRANDE II ETAPA 3</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE III ETAPA 1">TERRAGRANDE III ETAPA 1</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE III ETAPA 2">TERRAGRANDE III ETAPA 2</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE III ETAPA 3">TERRAGRANDE III ETAPA 3</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE IV ETAPA 1">TERRAGRANDE IV ETAPA 1</asp:ListItem>
<asp:ListItem Value="URBANIZACION LA GLORIA MANZANA I">URBANIZACION LA GLORIA MANZANA I</asp:ListItem>
<asp:ListItem Value="URBANIZACION LA GLORIA MANZANA II">URBANIZACION LA GLORIA MANZANA II</asp:ListItem>
<asp:ListItem Value="URBANIZACION LA GLORIA MANZANA III">URBANIZACION LA GLORIA MANZANA III</asp:ListItem>
<asp:ListItem Value="VENTO">VENTO</asp:ListItem>
<asp:ListItem Value="VERAMONTE - EBANO">VERAMONTE - EBANO</asp:ListItem>
<asp:ListItem Value="VERAMONTE - MACANA">VERAMONTE - MACANA</asp:ListItem>
<asp:ListItem Value="VERAMONTE - OLMO">VERAMONTE - OLMO</asp:ListItem>
<asp:ListItem Value="VERAMONTE - TECA">VERAMONTE - TECA</asp:ListItem>
<asp:ListItem Value="VERAMONTE LIVING">VERAMONTE LIVING</asp:ListItem>
<asp:ListItem Value="VICTORIA I">VICTORIA I</asp:ListItem>
<asp:ListItem Value="VICTORIA II">VICTORIA II</asp:ListItem>
<asp:ListItem Value="TRAMONTE LIVING">TRAMONTE LIVINGg</asp:ListItem>
<asp:ListItem Value="TRAMONTE LIVING VIS">TRAMONTE LIVING VIS</asp:ListItem>
<asp:ListItem Value="TRAMONTE LIVING NO VIS">TRAMONTE LIVING NO VIS</asp:ListItem>
<asp:ListItem Value="ZIBAL 72">ZIBAL 72</asp:ListItem>
<asp:ListItem Value="ZIBAL 83">ZIBAL 83</asp:ListItem>
<asp:ListItem Value="ZIBAL 92">ZIBAL 92</asp:ListItem>
<asp:ListItem Value="AURIGA LIVING VIS">AURIGA LIVING VIS</asp:ListItem>
<asp:ListItem Value="CIRUELOS DEL EDÉN">CIRUELOS DEL EDÉN</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS BOSQUE RESIDENCIAL">ENTRELOMAS BOSQUE RESIDENCIAL</asp:ListItem>
<asp:ListItem Value="PARQUE CENTRAL CAJICÁ - MOLINO">PARQUE CENTRAL CAJICÁ - MOLINO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA CAMPESTRE ARENILLO">ARBOLEDA CAMPESTRE ARENILLO</asp:ListItem>
<asp:ListItem Value="CIUDAD ROSALEDA - ROSA CELESTE">CIUDAD ROSALEDA - ROSA CELESTE</asp:ListItem>
<asp:ListItem Value="CIUDAD ROSALEDA - ROSA TURQUESA">CIUDAD ROSALEDA - ROSA TURQUESA</asp:ListItem>
<asp:ListItem Value="CIUDAD ROSALEDA - ROSA IMPERIAL">CIUDAD ROSALEDA - ROSA IMPERIAL</asp:ListItem>
<asp:ListItem Value="CIUDAD ROSALEDA - ROSA AMATISTA">CIUDAD ROSALEDA - ROSA AMATISTA</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL RIO NEGRO - BOSQUES ROBLEDAL">BOSQUES DEL RIO NEGRO - BOSQUES ROBLEDAL</asp:ListItem>
</asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Proyecto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    class="style10" colspan="2">
                    Agrupacion:<br />
                    <asp:TextBox ID="Agrupacion" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Agrupacion" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Producto:<br />
                    <asp:TextBox ID="Producto" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Producto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="4">
                    Descripcion:<br />
                    <asp:TextBox ID="Descripcion" runat="server" Width="100%" Height="50px" 
                        ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="2">
                    <input id="Button9" type="button" value="FINALIZAR" onclick="insertarpqrs()" 
                        style="border: 1px ridge #F8DB66; color: #F8DB66; font-size: 16px; background-color: #28A745; width: 150px; height: 50px; background-image: none;" /></td>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="2">
                    <input id="Button10" type="button" value="GUARDAR Y CONTINUAR" 
                        onclick="insertarpqrsgyc()" 
                        style="border: 1px ridge #F8DB66; color: #F8DB66; font-size: 16px; background-color: #28A745; width: 150px; height: 50px; background-image: none; white-space: normal;" /></td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="2">
                    <asp:Button ID="Button2" runat="server" Text="ATRAS" 
                        OnClick ="atras" BackColor="#28A745" BorderColor="#F8DB66" CausesValidation="false"
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#F8DB66" 
                        Height="50px" Width="150px" />
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="2">
                    <input id="Button11" type="button" value="ENCUESTA" onclick="Transf_Encuesta()" 
                        
                        style="border: 1px ridge #F8DB66; color: #F8DB66; font-size: 16px; background-color: #28A745; width: 150px; height: 50px; background-image: none;" /></td>
            </tr>
        </tbody>
    </table>

    <br />


    
    <br />  

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
        Dim tipificacion As String = Request.QueryString("tipificacion").ToString()
        Dim idcall As String = Gestion.Cliente.Texto1
        Dim check As String = Gestion.Cliente.Texto2
        Dim nombre1 As String = Gestion.Cliente.Nombre
        Dim nombre2 As String = Gestion.Cliente.NombreCompleto
        Dim apellido1 As String = Gestion.Cliente.Apellido1
        Dim apellido2 As String = Gestion.Cliente.Apellido2
        Dim numdocumento As String = Gestion.Cliente.IdOriginal
        CheckBox1.Checked = check
        idtrans.Value = idcall
        name1.Value = nombre1
        name2.Value = nombre2
        lastname1.Value = apellido1
        lastname2.Value = apellido2
        numdoc.Value = numdocumento
        idfinal.Value = tipificacion
    End Sub
    
    
    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub



</script>
