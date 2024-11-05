<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript" src="Resources/js/JQuery.js"></script>
<script type="text/javascript">
    var token ;
    var url = "https://8aozurcink.execute-api.us-east-2.amazonaws.com"; 
    function Transf_Encuesta() {
        agentapi.FastTransferActiveCall(6040)
            .done(function () {

            })
            .fail(function (code, cause) {
                alert('Error de transferencia, intente de nuevo');
            });
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
                        "url": url+"/webservicefenalco/cbolivarbgta/listadomomentoora",
                        "method": "POST",
                        "timeout": 0,
                        "headers": {
                            "Authorization": "Bearer "+ token
                            },
                };

					$.ajax(momentos).done(function (response) {
                    temp = response.listado;
                    $('#Momento').append('<option value= 0 > Seleccione Tipificacion </option>'); 
                    $.each(temp, function(key, value) {
                          $('#Momento').append('<option value=' + value.idMomento + '>' + value.descripcion + '</option>');
                        });
					});
            });        
	}); 
    function llenarNecesidad(idMomento) {
                $('#Necesidad option').remove();
                var temp;
                var necesidades = {
                  "url": url+"/webservicefenalco/cbolivarbgta/consultarnecesidadpormaestroora",
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
                         $('#Necesidad').append('<option value= 0 > Seleccione Subtipificacion </option>');   
                    $.each(temp, function(key, value) {
                          $('#Necesidad').append('<option value=' + value.idNecesidad + '>' + value.descripcion + '</option>');
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
            var momento = $("#Momento option:selected").text();
            var necesidad = $("#Necesidad option:selected").text();
            if (momento == '' || $("#Momento option:selected").val() == 0) {
                    alert("El campo Tipifación esta vacio y es obligatorio");
                    return false;
                } else if (necesidad == '' || $("#Necesidad option:selected").val() == 0) {
                    alert("El campo Subtipificación esta vacio y es obligatorio");
                    return false;
                }
            var settings = {
                            "url": url+"/webservicefenalco/cbolivarbgta/ingresarpqrsora",
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
                                                    "momento": momento,
                                                    "necesidad": necesidad                                                   
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
            var momento = $("#Momento option:selected").text();
            var necesidad = $("#Necesidad option:selected").text();
            if (momento == '' || $("#Momento option:selected").val() == 0) {
                    alert("El campo Momento esta vacio y es obligatorio");
                    return false;
                } else if (necesidad == '' || $("#Necesidad option:selected").val() == 0) {
                    alert("El campo Necesidad esta vacio y es obligatorio");
                    return false;
                }
            var settings = {
                            "url": url+"/webservicefenalco/cbolivarbgta/ingresarpqrsoraora",
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
                                                    "necesidad": necesidad
                                                      }),
                    };
                    $.ajax(settings).done(function (response) {
                    window.location.replace('CrearCliente.aspx');
                    console.log(response);
                    });                 
                                
    
    }




function Button9_onclick() {

}

</script>


    <style type="text/css">
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <tr>
    <td colspan = "4">
    <br />
    <table class="formulario" style="width:75%;">       
        <thead>
            <tr>
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 20px; color: #FFFFFF; font-weight: bold;" colspan="3" align="center">
                    Constructora Bolivar Inbound Datos
                </th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Numero de Documento:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Primer apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                    <br />
                    </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px; " 
                    colspan="3">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" Enabled="False"/>
                </td>
            </tr>
            <tr>
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 20px; color: #FFFFFF; font-weight: bold;" colspan="3" align="center">
                    Finalizar Gestion</th>
            </tr>
            <tr>
                <td colspan="3" style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Tipificacion:<br />
                    <select name="idMomento" id="Momento" onchange="llenarNecesidad(this.value)" 
                        style="color: #000000; width: 94%;" >
                    </select></td>
            </tr>
            <tr>
                <td colspan="3" style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    Subtipificacion:<br />
                    <select name="idRazon" id="Necesidad" style="color: #000000; width: 94%;" >
                    
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
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    <input id="Button9" type="button" value="Finalizar" onclick="insertarpqrs()" 
                        
                        style="border: 1px solid #2B8B4B; color: #FFFFFF; font-size: 16px; background-color: #2B8B4B; width: 160px; height: 60px; background-image: none; white-space: normal;" onclick="return Button9_onclick()" /></td>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    <input id="Button10" type="button" value="Guardar y continuar" 
                        onclick="insertarpqrsgyc()" 
                        
                        style="border: 1px solid #2B8B4B; color: #FFFFFF; font-size: 16px; background-color: #2B8B4B; width: 160px; height: 60px; background-image: none; white-space: normal;" /></td>
                <td style="padding: 10px 20px 10px 20px; border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px;">
                    &nbsp;</td>
            </tr>
        </tbody>
    </table>

    </td>
</tr>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
        Dim tipificacion As String = Request.QueryString("tipificacion")
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
    
    




</script>
