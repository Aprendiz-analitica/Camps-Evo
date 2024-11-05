<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript" src="Resources/js/JQuery.js"></script>
<script type="text/javascript">
    var token ;
    var url = "https://8aozurcink.execute-api.us-east-2.amazonaws.com"; 
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
            });        
	}); 



	function insertarpqrs() {
            var idfinal =  $("#<%= idfinal.ClientID %>").val();
            var idcall =  $("#<%= idtrans.ClientID %>").val();     
            var idoriginal = $("#<%= numdoc.ClientID %>").val();
            var nombre1 = $("#<%= name1.ClientID %>").val();
            var nombre2 = $("#<%= name2.ClientID %>").val();
            var apellido1 = $("#<%= lastname1.ClientID %>").val();
            var apellido2 = $("#<%= lastname2.ClientID %>").val();
            var caso = $("#<%= TextBox1.ClientID %>").val();
            var momento = $("#Momento option:selected").text();
            if (momento == '' || $("#Momento option:selected").val() == 0) {
                    alert("El campo Tipifación esta vacio y es obligatorio");
                    return false;
                } else if (caso == '') {
                    alert("El campo SER-K esta vacio y es obligatorio");
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
                                                    "actividad": caso                                                   
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
            var caso = $("#<%= TextBox1.ClientID %>").val();
            var momento = $("#Momento option:selected").text();
            if (momento == '' || $("#Momento option:selected").val() == 0) {
                    alert("El campo Momento esta vacio y es obligatorio");
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
                                                    "actividad": caso    
                                                      }),
                    };
                    $.ajax(settings).done(function (response) {
                    window.location.replace('ActualizarCliente.aspx');
                    console.log(response);
                    });                 
                                
    
    }




</script>


    <style type="text/css">
        .style1
        {
            width: 201px;
        }
        .campoti
        {
           padding: 5px;
           border-style: solid solid solid solid;
           border-width: 1px;
           border-color: #ed7203;
           color: #249e6b; font-weight: bold;
           font-size: 14px;
           width: 201px;
           vertical-align: middle;
           text-align:center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:603px;">        
        <thead>
            <tr>
<th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="3" align="center">
                    CONSTRUCTORA BOLIVAR 
                    -
                    DATOS CLIENTE</th>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Fecha actualizacion de datos:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Texto3" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="161.5px" TipoTextBox="Date" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    IdOrigen:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox8" runat="server" 
                        AtributoCliente="Texto1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" TipoTextBox="SingleLine" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    &nbsp;</td>
            </tr>

        </thead>
    </table>
    <table class="formulario" style="width:603px;">       
        <thead>
        </thead>
        <tbody>            
            <tr>
<th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    align="center">
                    FINALIZAR GESTIÓN</th>
            </tr>
            <tr>
                <td 
                    
                    
                    style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;">
                    Tipificacion:<br />
                    <select name="idMomento" id="Momento" style="color: #000000; width: 94%;" >
                        <option value= 0 ></option>
                        <option value= 1 >Contacto Efectivo</option>
                        <option value= 2 >Mensaje con Tercero</option>
                        <option value= 3 >Fuera de la Ciudad</option>
                        <option value= 4 >Equivocado</option>
                        <option value= 5 >Llamar Luego</option>
                        <option value= 6 >No Contesta</option>
                    </select>
                    
                    <asp:HiddenField ID="idtrans" runat="server" />
                    <asp:HiddenField ID="name1" runat="server" />
                    <asp:HiddenField ID="name2" runat="server" />
                    <asp:HiddenField ID="lastname1" runat="server" />
                    <asp:HiddenField ID="lastname2" runat="server" />
                    <asp:HiddenField ID="numdoc" runat="server" />
                    <asp:HiddenField ID="idfinal" runat="server" />
                </td>
            </tr>
            <tr>
                <td 
                    
                    
                    style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;">
                    Caso SER-K:<br />
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>

        </tbody>

    </table>
    <table class="formulario" style="width:603px;">
                <tr>
                <td class="campoti" 
                        
                        style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px hidden #ed7203; border-bottom: 1px solid #ed7203; padding: 5px; text-align: center; width: 100%; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;">
                    <input id="Button9" type="button" value="FINALIZAR" onclick="insertarpqrs()" 
                        
                        
                        style="font-size: 12px; background-color: #249E6B; width: 200px; height: 40px; background-image: none; font-weight: bold; margin-right: 0;" 
                         /></td>
            </tr>

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
        Dim idcall As String = Gestion.Transaccion.IdTransaccion
        Dim check As String = Gestion.Cliente.Texto2
        Dim nombre1 As String = Gestion.Cliente.Nombre
        Dim nombre2 As String = Gestion.Cliente.NombreCompleto
        Dim apellido1 As String = Gestion.Cliente.Apellido1
        Dim apellido2 As String = Gestion.Cliente.Apellido2
        Dim numdocumento As String = Gestion.Cliente.IdOriginal
        idtrans.Value = idcall
        name1.Value = nombre1
        name2.Value = nombre2
        lastname1.Value = apellido1
        lastname2.Value = apellido2
        numdoc.Value = numdocumento
        idfinal.Value = tipificacion
    End Sub
    
    




</script>
