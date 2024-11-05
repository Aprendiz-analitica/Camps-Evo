<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript">

        </script>





    <style type="text/css">

        .style1
        {
            height: 80px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <tr>
    <td colspan = "4">

    <br />
     
    <table class="formulario" style="width:75%;">        
        <thead>
            <tr>
                <th style="border: 1px solid #249e6b; text-align:center; background-color: #2b8b4b; font-size: 20px; color: #FFFFFF; font-weight: bold; " 
                    colspan="3" align="center">
                    Creacion de cliente</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 1px solid #ED7203 color: #2b8b4b; font-weight: bold; font-size: 16px; padding: 5px 10px;">
                    Numero de Documento:<br />
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox1" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 1px solid #ED7203 color: #2b8b4b; font-weight: bold; font-size: 16px; padding: 5px 10px;">
                    Primer nombre:<br />
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 1px solid #ED7203 color: #2b8b4b; font-weight: bold; font-size: 16px; padding: 5px 10px;">
                    Segundo nombre:<br />
                    <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ED7203 color: #2b8b4b; font-weight: bold; font-size: 16px; padding: 5px 10px;">
                    Numero de Telefono:<br />
                    <asp:TextBox ID="TextBox6" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox6" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 1px solid #ED7203 color: #2b8b4b; font-weight: bold; font-size: 16px; padding: 5px 10px;">
                    Primer apellido:<br />
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox4" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 1px solid #ED7203 color: #2b8b4b; font-weight: bold; font-size: 16px; padding: 5px 10px;">
                    Segundo apellido:<br />
                    <asp:TextBox ID="TextBox5" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ED7203 color: #2b8b4b; font-size: 16px; font-weight: bold; padding: 5px 10px;" width="150PX" colspan="3">
                    Observaciones<asp:TextBox ID="TextBox7" runat="server" ForeColor="Black" 
                        Height="58px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ED7203; text-align: center; height:80px; " colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="Crear Cliente" 
                        OnClick ="CrearCliente" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#249e6b" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" BorderWidth="1px" />
                </td>
            </tr>
        </tbody>
    </table>

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
        Dim tipificacion As String = "100"
        Dim idsujeto As Long = -1
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim idcall As String = ""
        Dim telori As String = ""
        Dim observaciones As String = ""
        telori = TextBox6.Text
        idoriginal = TextBox1.Text
        Nombre1 = TextBox2.Text
        Apellido1 = TextBox4.Text
        Nombre2 = TextBox3.Text
        Apellido2 = TextBox5.Text
        observaciones = TextBox7.Text
        idcall = Gestion.Transaccion.IdTransaccion
        idsujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "", idoriginal, Nombre1, Apellido1, Apellido2, , , , , , , telori, , , , , , , , , , observaciones, , , , Nombre2, , , , idcall) ' num1:=Gestion.Transaccion.IdTransaccion.ToString
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Inserttablenotitular.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion + "&descripcion=" + observaciones)
    End Sub


</script>
