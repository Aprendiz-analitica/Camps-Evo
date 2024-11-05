<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
<script type="text/javascript">

    $(document).ready(function () {
        $("#divTemporizador").hide(); // Este código solo se ejecutará cuando el DOM esté listo
    });

</script>

   
    <style type="text/css">
        .tdSample {
            height: 30px;        
        }
        .style3 {
            height: 44px;
        }
        
        .style6 {
            height: 60px;
            width: 150px;
        }
        .style7 {
            height: 60px;
            width: 181px;
        }
        .style8 {
            height: 50px;
        }
        .style9 {
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
                <th style="border: 2px hidden #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold;" colspan="3" align="center" class="style9">
                    Creación de Cliente
                </th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Número de Documento:<br />
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacío" 
                        ControlToValidate="TextBox1" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Primer Nombre:<br />
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacío" 
                        ControlToValidate="TextBox2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Segundo Nombre:<br />
                    <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Número de Teléfono:<br />
                    <asp:TextBox ID="TextBox6" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Este campo no puede estar vacío" 
                        ControlToValidate="TextBox6" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Primer Apellido:<br />
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacío" 
                        ControlToValidate="TextBox4" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Segundo Apellido:<br />
                    <asp:TextBox ID="TextBox5" runat="server" ForeColor="Black"></asp:TextBox>
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
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="Este campo no puede estar vacío" 
                        ControlToValidate="proceso1" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Proyecto:<br />
                    <asp:TextBox ID="Proyecto" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="Este campo no puede estar vacío" 
                        ControlToValidate="Proyecto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Agrupación:<br />
                    <asp:TextBox ID="Agrupacion" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ErrorMessage="Este campo no puede estar vacío" 
                        ControlToValidate="Agrupacion" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Fecha Proyectada:<br />
                    <evo:SelectorFecha ID="SelectorFecha1" runat="server" Height="25px" Width="100%" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    Entrega de Llaves:<br />
                    <evo:SelectorFecha ID="SelectorFecha2" runat="server" Height="25px" Width="100%" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color:#249E6B; text-align:center; font-weight: bold; font-size: 16px;">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #ed7203; text-align:center; height:80px;" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="CREAR CLIENTE" 
                        OnClick="CrearCliente" ForeColor="#ffffff" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="30px" Width="200px" />
                </td>
            </tr>
        </tbody>
    </table>

    <br />
    <br />  
</asp:Content>
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
        Dim idoriginal As String = TextBox1.Text.Trim()
        Dim Nombre1 As String = TextBox2.Text.Trim()
        Dim Apellido1 As String = TextBox4.Text.Trim()
        Dim Nombre2 As String = TextBox3.Text.Trim()
        Dim Apellido2 As String = TextBox5.Text.Trim()
        Dim telori As String = TextBox6.Text.Trim()
        Dim proceso As String = proceso1.SelectedValue.Trim()
        Dim proyecto1 As String = Proyecto.Text.Trim()
        Dim agrupacion1 As String = Agrupacion.Text.Trim()
        Dim fechaproyectada As String = SelectorFecha1.Text.Trim()
        Dim entregallaves As String = SelectorFecha2.Text.Trim()
        Dim idcall As String = Gestion.Transaccion.IdTransaccion

        idsujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "", idoriginal, Nombre1, Apellido1, Apellido2, 
                                         , entregallaves, , , , , telori, , , , , , , , , , , , , fechaproyectada, Nombre2, 
                                         agrupacion1, , , idcall, proceso, proyecto1)

        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesGE.aspx?newidsujeto=" + newidsujeto)
    End Sub
</script>


<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>
