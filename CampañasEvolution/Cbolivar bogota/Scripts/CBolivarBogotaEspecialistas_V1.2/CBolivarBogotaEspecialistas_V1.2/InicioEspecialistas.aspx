<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

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




    function showdescripcion() {
                var temp;
                var idtransaccionoriginal = $("#<%= idtoriginal.ClientID %>").val();
                var descripcion = {
                  "url": url+"/webservicefenalco/cbolivarbgta/tipCbolivarbgtasacpqrs",
                  "method": "POST",
                  "timeout": 0,
                  "headers": {
                    "Authorization": "Bearer "+ token,
                    "Content-Type": "application/json"
                  },
                  "data": JSON.stringify({
                    "idtransaccion": idtransaccionoriginal
                  }),
                };

                $.ajax(descripcion).done(function (response) {
                    temp = response.listado;
                    console.log(temp[0].descripcion);
                    $("#<%= TextBox7.ClientID %>").val(temp[0].descripcion);
                });

	}
   

</script>
    <style type="text/css">
       
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
                  
    <table class="formulario" style="width:70%">        
        <tbody>  
            <tr>
                <th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 20px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                     align="center" colspan="4">
                    Constructora Bolivar Inbound<br />
                    Datos</th>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" class="style9">
    Numero de Documento:<br />
    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" Enabled="False"></asp:TextBox>
</td>

                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style11">
                    Primer nombre:<br />
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Enabled="False"></asp:TextBox>
                </td>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style9">
                    Segundo nombre:<br />
                    <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style10">
                    Numero de 
                    teléfono:<br />
                    <asp:TextBox ID="TextBox6" runat="server" ForeColor="Black" Enabled="False"></asp:TextBox>
                    
                </td>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style12" >
                    Primer apellido:<br />
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black" Enabled="False"></asp:TextBox>
                </td>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style9">
                    Segundo apellido:<br />
                    <asp:TextBox ID="TextBox5" runat="server" ForeColor="Black" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle;"  
                    colspan="4">
                    <asp:TextBox ID="TextBox7" runat="server" Height="150px" TextMode="MultiLine" 
                        Width="90%" Enabled="False" ForeColor="Black"></asp:TextBox>
                </td>

            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" colspan="4" class="style5">
    <asp:HiddenField ID="idtoriginal" runat="server" />
    <br />
    <input id="Button12" type="button" value="CONSULTAR" onclick="showdescripcion()" 
       style="font-size: 14px; background-color: #249E6B; width: 200px; height: 40px; background-image: none; font-weight: bold; margin-right: 0; color: #FFFFFF; border: 1px solid transparent; border-radius: 4px;"/>
</td>


            </tr>
            <tr>
                <th   style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 20px; color: #FFFFFF; font-weight: bold; height: 29px;" align="center" colspan="4">
                    Finalizar Gestion</th>
            </tr>
            <tr colspan="4" style = "margin-button: 10px">
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style9">
                    <evo:IrA_Button ID="IrA_Button1" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" BorderWidth="1px" 
                        Destino="~/FinalesEspecialistasaplica.aspx" Font-Bold="True" ForeColor="White"
                        Height="50px" Text="APLICA" Width="160px" />
                </td>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style9">
                    <evo:IrA_Button ID="IrA_Button2" runat="server" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" BorderWidth="1px" 
                        Destino="~/FinalesEspecialistasnoaplica.aspx" Font-Bold="True" ForeColor="White"
                        Height="50px" Text="NO APLICA" Width="150px" />
                </td>
                <td style="border: 1px solid #ed7203; padding: 5px; text-align:center; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;" 
                    class="style9">
                    
                </td>
            </tr>
          
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim numdoc As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("setnumdoc", numdoc)
        TextBox1.Text = numdoc
        Dim nombre1 As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("setnombre1", nombre1)
        TextBox2.Text = nombre1
        Dim nombre2 As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("setnombre2", nombre2)
        TextBox3.Text = nombre2
        Dim apellido1 As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("setapellido1", apellido1)
        TextBox4.Text = apellido1
        Dim apellido2 As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("setapellido1", apellido2)
        TextBox5.Text = apellido2
        Dim telefono As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("settelefono", telefono)
        TextBox6.Text = telefono
        Dim idoriginal As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("sedidtoriginal", idoriginal)
        idtoriginal.Value = idoriginal
        Dim idcall As String = Gestion.Transaccion.IdTransaccion            
    End Sub
</script>
