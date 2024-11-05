<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript">
        function Transf_BO() {
            agentapi.TransferActiveCall('5021');
        }
        function Conferencia_v2() {
            
            makeHttpRequest("ConferenciaAMI.aspx")
            .done(function (response) {
                                        Swal.fire({
                                        title: 'Inicio de grabacion exitoso',
                                        text: 'Comience protocolo de HabeasData',
                                        imageUrl: 'Resources/images/INIGRABHD.png',
                                        confirmButtonColor: '#0C7834', 
                                        imageWidth: 200,
                                        imageHeight: 200,})})
            .fail(function (code, cause) {
                alert("Envio ConferenciaAMI KO. Code: " + code + " , cause: " + cause);
            });
        }

        function Conferencia() {
            //            agentapi.GetActiveCall()
            //            .done(function (nRet) {
            //                alert('idCall Original:' + nRet);
            //            })
            //            .fail(function (code, cause) {
            //                alert('GetActiveCall fallo. Code:' + code + '. Cause:' + cause);
            //            });

            //            agentapi.ConferenceActiveCall('2009');

            Conferenciar('1009');
        }   

        function EstadoConferencia() {
            makeHttpRequest("DBRKeepAlive.aspx")
            .done(function (response) {
                alert("Envio DBRKeepAlive OK");
                setTimeout(function () { EstadoConferencia() }, 500);
            })
            .fail(function (code, cause) {
                alert("Envio DBRKeepAlive KO. Code: " + code + " , cause: " + cause);
            });
        }

        function EnviarMsgDBR() {
            makeHttpRequest("EnvioMsgDBR.aspx")
            .done(function (response) {})
            .fail(function (code, cause) {
                alert("Envio MsgDBR KO. Code: " + code + " , cause: " + cause);
            });
        }
        function makeHttpRequest(sURL) {
            /// <summary>Realiza una peticion http asincrona</summary>
            /// <param name="sURL" type="String">idTransaccion</param>
            /// <param name="resultFunc" type="Func">Funcion de resultado, nos van a pasar un objeto response y un objeto deferred.</param>
            /// <returns type="Deferred"></returns>
            var xmlhttp;
            if (window.XMLHttpRequest) {
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            } else {
                // code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            var deferred = new Deferred();
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4) {
                    try {
                        if (xmlhttp.status != 200)
                            throw new Error("Http status." + xmlhttp.status);

                        var response = JSON.parse(xmlhttp.responseText);
                        if (response.result)
                            deferred.resolve(response);
                        else
                            deferred.reject(response.code, response.cause);
                    }
                    catch (ex) {
                        deferred.reject(0, "[makeHttpRequest] {sURL=" + sURL + "}: " + ex.Message);
                    }
                }
            };

            xmlhttp.open("GET", sURL, true);
            xmlhttp.send();

            return deferred;
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
        .style6
        {
            height: 60px;
            width: 150px;
        }
        .style7
        {
            height: 60px;
            width: 181px;
        }
        .style8
        {
            height: 50px;
        }
        .style9
        {
            height: 40px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
     
    <table class="formulario" style="width:70%;">        
        <thead>
            <tr>
                <th style="border-color: #28a745 #28a745 #f8db66 #28a745; border-style: solid; border-width: 2px; text-align:center; background-color: #28a745; font-size: 20px; font-weight: bold; height: 40px;" 
                    colspan="3" align="center" class="style8">
                    &nbsp;</th>
            </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    colspan="3" align="center" class="style9">
                    Creacion de cliente</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Numero de Documento:<br />
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox1" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Primer nombre:<br />
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Segundo nombre:<br />
                    <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-size: 16px; font-weight: bold;" 
                    width="150PX">
                    Numero de Telefono:<br />
                    <asp:TextBox ID="TextBox6" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox6" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-size: 16px; font-weight: bold;" 
                    class="style6">
                    Primer apellido:<br />
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox4" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-size: 16px; font-weight: bold;" 
                    class="style7">
                    Segundo apellido:<br />
                    <asp:TextBox ID="TextBox5" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-size: 16px; font-weight: bold;" 
                    width="150PX">
                    N° Garantía:<br />
                    <asp:TextBox ID="TextBox7" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox7" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-size: 16px; font-weight: bold;" 
                    class="style6">
                    Proceso:<br />
                    <asp:DropDownList ID="proceso1" runat="server" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Correo">Correo</asp:ListItem>
                        <asp:ListItem Value="Vecinos">Vecinos</asp:ListItem>
                        <asp:ListItem Value="Ejecuciones">Ejecuciones</asp:ListItem>
                        <asp:ListItem Value="Reprogramacion">Reprogramación</asp:ListItem>
                        <asp:ListItem Value="Pendiente">Pendiente</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="proceso1" ErrorMessage="Este campo no puede estar vacio" 
                        Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-size: 16px; font-weight: bold;" 
                    class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; text-align:center; height:80px; background-color: #28a745;" 
                    colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="CREAR CLIENTE" 
                        OnClick ="CrearCliente" ForeColor="#F8DB66" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="30px" Width="200px" />
                </td>
            </tr>
        </tbody>
    </table>

    <br />


    
    <br />  

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim doc As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("Numdoc1", doc)
        If Not String.IsNullOrWhiteSpace(doc) Then
            TextBox1.Text = doc
        End If
    End Sub
    
    Protected Sub CrearCliente(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim idcall As String = ""
        Dim telori As String = ""
        Dim garantia As String = ""
        Dim proceso As String = ""
        telori = TextBox6.Text
        idoriginal = TextBox1.Text
        Nombre1 = TextBox2.Text
        Apellido1 = TextBox4.Text
        Nombre2 = TextBox3.Text
        Apellido2 = TextBox5.Text
        garantia = TextBox7.Text
        proceso = proceso1.Text
        idcall = Gestion.Transaccion.IdTransaccion
        idsujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "", idoriginal, Nombre1, Apellido1, Apellido2, , , , , , , telori, , , , , , , , , , , , , , Nombre2, , , , idcall, garantia, proceso) ' num1:=Gestion.Transaccion.IdTransaccion.ToString
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesGG.aspx?newidsujeto=" + newidsujeto)
    End Sub

</script>
