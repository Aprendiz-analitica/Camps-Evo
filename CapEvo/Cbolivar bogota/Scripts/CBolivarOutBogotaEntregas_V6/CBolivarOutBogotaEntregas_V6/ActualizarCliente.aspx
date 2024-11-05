<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript"></script>

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
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
     
    <table class="formulario" style="width:70%;">        
        <thead>           
            <tr>
                <th style="border: 2px hidden #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold; "colspan="3" align="center" class="style9">
                    Creacion de cliente</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Numero de Documento:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" LabelStyle-Font-Bold="True" 
                        ValueStyle-ForeColor="Black" ValueStyle-Width="94%" />
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="DatosCliente_TextBox1" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Primer nombre:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" LabelStyle-Font-Bold="True" 
                        ValueStyle-ForeColor="Black" ValueStyle-Width="94%" />
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="DatosCliente_TextBox2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Segundo nombre:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" />
                    <br />
                </td>
            </tr>
            <tr>
               <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" LabelStyle-Font-Bold="True" 
                        ValueStyle-ForeColor="Black" ValueStyle-Width="94%" />
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="DatosCliente_TextBox6" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" LabelStyle-Font-Bold="True" 
                        ValueStyle-ForeColor="Black" ValueStyle-Width="94%" />
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="DatosCliente_TextBox3" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Segundo apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" LabelStyle-Font-Bold="True" 
                        ValueStyle-ForeColor="Black" ValueStyle-Width="94%" />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Proceso:<br />
                    <asp:DropDownList ID="proceso1" runat="server" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Escriturados">Escriturados</asp:ListItem>
                        <asp:ListItem Value="Iniciales">Iniciales</asp:ListItem>
                        <asp:ListItem Value="Reprogramacion">Reprogramación</asp:ListItem>
                        <asp:ListItem Value="Cancelacion">Cancelación</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Proyecto:<br />
                    <asp:TextBox ID="Proyecto" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Proyecto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Agrupacion:<br />
                    <asp:TextBox ID="Agrupacion" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Agrupacion" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Fecha Proyectada:<br />
                    <evo:SelectorFecha ID="SelectorFecha1" runat="server" Height="25px" 
                        Width="100%" FormatoFecha="|%d/%m/%Y" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Entrega de Llaves:<br />
                    <evo:SelectorFecha ID="SelectorFecha2" runat="server" Height="25px" 
                        Width="100%" />
                </td>
               <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    &nbsp;</td>
            </tr>
            <tr>
               <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;" colspan = "3">
                    <asp:Button ID="Button1" runat="server" Text="CREAR CLIENTE" 
                        OnClick ="CrearCliente" ForeColor="#ffffff" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
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
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
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
        Dim proceso As String = ""
        Dim proyecto1 As String = ""
        Dim agrupacion1 As String = ""
        Dim fechaproyectada As String = ""
        Dim entregallaves As String = ""
        telori = DatosCliente_TextBox6.TextValue
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        fechaproyectada = SelectorFecha1.Text
        entregallaves = SelectorFecha2.Text
        agrupacion1 = Agrupacion.Text
        proyecto1 = Proyecto.Text
        proceso = proceso1.Text
        idcall = Gestion.Transaccion.IdTransaccion
        idsujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "", idoriginal, Nombre1, Apellido1, Apellido2, , entregallaves, , , , , telori, , , , , , , , , , , , , fechaproyectada, Nombre2, agrupacion1, , , idcall, proceso, proyecto1) ' num1:=Gestion.Transaccion.IdTransaccion.ToString
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesGE.aspx?newidsujeto=" + newidsujeto)
    End Sub
</script>
