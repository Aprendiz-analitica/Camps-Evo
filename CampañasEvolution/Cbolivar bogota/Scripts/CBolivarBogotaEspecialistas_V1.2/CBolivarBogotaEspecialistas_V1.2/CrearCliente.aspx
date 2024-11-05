<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript">

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
     
    <table class="formulario" style="width:74%;">        
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
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-size: 16px; font-weight: bold;" 
                    width="150PX">
                    Numero deTelefono:<br />
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
                    colspan="3">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; text-align:center; height:80px; background-color: #28a745;" 
                    colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="CREAR CLIENTE" 
                        OnClick ="CrearCliente" ForeColor="#F8DB66" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; text-align:center; height:80px; background-color: #28a745;" 
                    colspan="3">
                    <asp:Button ID="Button2" runat="server" Text="NO BRINDA DATOS / NO ES TITULAR" 
                        OnClick ="FinalNobrindadatos" ForeColor="#F8DB66" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" style="white-space:normal;" 
                        CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="EQUIVOCADO" 
                        OnClick ="Final106" ForeColor="#F8DB66" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" style="white-space:normal;" 
                        CausesValidation="False" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="LLAMADA ADMINISTRATIVA" 
                        OnClick ="Final110" ForeColor="#F8DB66" BackColor="#28A745" 
                        BorderColor="#F8DB66" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="60px" Width="160px" style="white-space:normal;" 
                        CausesValidation="False" />
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
        Dim check As String = ""
        check = CheckBox1.Checked
        telori = TextBox6.Text
        idoriginal = TextBox1.Text
        Nombre1 = TextBox2.Text
        Apellido1 = TextBox4.Text
        Nombre2 = TextBox3.Text
        Apellido2 = TextBox5.Text
        idcall = Gestion.Transaccion.IdTransaccion
        idsujeto = Clientes.AltaCliente(Gestion.Campanya.IdCampanya, "", idoriginal, Nombre1, Apellido1, Apellido2, , , , , , , telori, , , , , , , , , , , , , , Nombre2, , , , idcall, check) ' num1:=Gestion.Transaccion.IdTransaccion.ToString
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub
    
    
    Protected Sub FinalNobrindadatos(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "108"
        Dim idoriginal As String = "NO BRINDA DATOS/NO ES TITULAR"
        Dim Nombre1 As String = "NO BRINDA DATOS/NO ES TITULAR"
        Dim Apellido1 As String = "NO BRINDA DATOS/NO ES TITULAR"
        Dim Nombre2 As String = "NO BRINDA DATOS/NO ES TITULAR"
        Dim Apellido2 As String = "NO BRINDA DATOS/NO ES TITULAR"
        Response.Redirect("~/Inserttablenotitular.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
    End Sub



    Protected Sub Final106(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "106"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        idoriginal = TextBox1.Text
        Nombre1 = TextBox2.Text
        Nombre2 = TextBox3.Text
        Apellido1 = TextBox4.Text
        Apellido2 = TextBox5.Text
        Response.Redirect("~/Inserttablefinales.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub

    Protected Sub Final110(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "110"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        idoriginal = TextBox1.Text
        Nombre1 = TextBox2.Text
        Nombre2 = TextBox3.Text
        Apellido1 = TextBox4.Text
        Apellido2 = TextBox5.Text
        Response.Redirect("~/Inserttablefinales.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub
</script>
