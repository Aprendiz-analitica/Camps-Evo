<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
<script type="text/javascript">
    function Transf_Encuesta() {
        agentapi.TransferActiveCall('5044');

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
            width: 30%;
        }
        .style10
        {
            height: 50px;
            width: 30%;
        }
        .style11
        {
            width: 30%;
        }
        .style12
        {
            height: 44px;
            width: 208px;
        }
        .style13
        {
            height: 50px;
            width: 208px;
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
                    colspan="3" align="center" class="style8">
                    &nbsp;</th>
            </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    colspan="3" align="center" class="style8">
                    Constructora Bolivar Inbound<br />
                    Datos</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style9">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style12" colspan="1">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;" 
                    class="style3">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    
                    
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;">
                    Primer apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                    <br />
                    </td>
                <td 
                    
                    
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; width: 200px;">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <th style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    colspan="3" align="center">
                    Finalizar Gestion</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style10" colspan="1">
                    <asp:DropDownList ID="t1" runat="server" ForeColor="Black" Width="250px" 
                        Enabled="False" Visible="False">
                        <asp:ListItem Value="ChatBot">ChatBot</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style13">
                    ¿Cierre en primer contacto?<br />
                    <asp:DropDownList ID="t2" runat="server" ForeColor="Black" Width="200px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="NO">NO</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style13">
                    Motivo:<br />
                    <asp:DropDownList ID="t3" runat="server" Height="25px" ForeColor="Black" 
                        Width="200px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Peticion ">Peticion </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t3" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    class="style10">
                    Momento:<br />
                    <asp:DropDownList ID="t4" runat="server" ForeColor="Black" Width="200px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Post venta</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t4" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; height: 50px; width: 50%;">
                    Razon:<br />
                    <asp:DropDownList ID="t6" runat="server" ForeColor="Black" Width="200px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Radicacion de Garantia">Radicacion de Garantia</asp:ListItem>
                        <asp:ListItem Value="Radicacion de Postventa">Radicacion de Postventa</asp:ListItem>
                        <asp:ListItem>Transferido Chat Comercial</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t6" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; height: 50px; width: 50%;">
                    Actividad (SAC):<br />
                    <asp:DropDownList ID="t7" runat="server" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Segundo nivel Garantias">Segundo nivel Garantias</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t7" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    class="style11">
                    Proyecto:<br />
                    <asp:TextBox ID="Proyecto" runat="server" ForeColor="Black" Width="200px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Proyecto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Agrupacion:<br />
                    <asp:TextBox ID="Agrupacion" runat="server" ForeColor="Black" Width="200px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Agrupacion" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Producto:<br />
                    <asp:TextBox ID="Producto" runat="server" ForeColor="Black" Width="200px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Producto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    colspan="2">
                    Las salas de ventas habilitadas para la comunicación son:<br />
                    <asp:DropDownList ID="Sedes" runat="server" ForeColor="Black" Width="250px">
                                            <asp:ListItem></asp:ListItem>
<asp:ListItem Value="Mirolindo">Mirolindo </asp:ListItem>
<asp:ListItem Value="Picalena">Picaleña </asp:ListItem>
<asp:ListItem Value="Lunaria">Lunaria </asp:ListItem>
<asp:ListItem Value="San Jose">San Jose </asp:ListItem>
<asp:ListItem Value="Ciudad del Puerto">Ciudad del Puerto </asp:ListItem>
<asp:ListItem Value="Alameda del Rio">Alameda del Rio </asp:ListItem>
<asp:ListItem Value="Parques de Bolivar Barranquilla">Parques de Bolivar Barranquilla </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; ">
                    Id Infobip:<br />
                    <asp:TextBox ID="idinfobip" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="idinfobip" ErrorMessage="Este campo no puede estar vacio" 
                        Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="3">
                    Descripcion:<br />
                    <asp:TextBox ID="Descripcion" runat="server" Width="100%" ForeColor="Black" 
                        Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; height:80px; background-color: #28a745;" 
                    colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="FINALIZAR" 
                        OnClick ="insertsacpqrs" BackColor="#28A745" BorderColor="#F8DB66" 
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#F8DB66" 
                        Height="30px" Width="150px" />
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="ATRAS" 
                        OnClick ="atras" BackColor="#28A745" BorderColor="#F8DB66" CausesValidation="false"
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#F8DB66" 
                        Height="30px" Width="150px" />
                    &nbsp;<asp:Button ID="Button3" runat="server" Text="ENCUESTA"  BackColor="#28A745" BorderColor="#F8DB66" 
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#F8DB66" 
                        Height="30px" Width="150px" OnClientClick="Transf_Encuesta()" />
                    <br />
                    <br />
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
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
        
    End Sub
    
    Protected Sub insertsacpqrs(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = Request.QueryString("tipificacion")
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim tip1 As String = ""
        Dim tip2 As String = ""
        Dim tip3 As String = ""
        Dim tip4 As String = ""
        Dim tip6 As String = ""
        Dim tip7 As String = ""
        Dim proyect As String = ""
        Dim agrupacio As String = ""
        Dim product As String = ""
        Dim descripcio As String = ""
        Dim sede As String = ""
        Dim id_infobip As String = ""
        id_infobip = idinfobip.Text
        sede = Sedes.Text
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        tip1 = t1.Text
        tip2 = t2.Text
        tip3 = t3.Text
        tip4 = t4.Text
        tip6 = t6.Text
        tip7 = t7.Text
        proyect = Proyecto.Text
        agrupacio = Agrupacion.Text
        product = Producto.Text
        descripcio = Descripcion.Text
        Response.Redirect("~/Inserttablepv.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tip1=" + tip1 + "&tip2=" + tip2 + "&tip3=" + tip3 + "&tip4=" + tip4 + "&tip6=" + tip6 + "&tip7=" + tip7 + "&proyect=" + proyect + "&agrupacio=" + agrupacio + "&product=" + product + "&descripcio=" + descripcio + "&tipificacion=" + tipificacion + "&sede=" + sede + "&idinfobip=" + id_infobip)
    End Sub
    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesChat.aspx?newidsujeto=" + newidsujeto)
    End Sub


</script>
