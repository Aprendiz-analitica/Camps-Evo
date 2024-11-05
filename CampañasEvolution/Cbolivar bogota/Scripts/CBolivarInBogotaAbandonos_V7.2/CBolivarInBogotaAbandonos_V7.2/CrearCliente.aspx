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
     
    <table class="formulario" style="width:35%;">        
        <thead>
            <tr>
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 20px; color: #FFFFFF; font-weight: bold; " 
                    colspan="3" align="center">
                    Creacion de cliente</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px; ">
                    Numero de Documento:<br />
                    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox1" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td 
                    
                    style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px; ">
                    Primer nombre:<br />
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td 
                    
                    style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 16px; ">
                    Segundo nombre:<br />
                    <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-size: 16px; font-weight: bold;" 
                    width="150PX">
                    Numero de Telefono:<br />
                    <asp:TextBox ID="TextBox6" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox6" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-size: 16px; font-weight: bold;">
                    Primer apellido:<br />
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox4" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-size: 16px; font-weight: bold;">
                    Segundo apellido:<br />
                    <asp:TextBox ID="TextBox5" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-size: 16px; font-weight: bold;" 
                    colspan="3">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px; " 
                    colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="CONTACTO EFECTIVO" 
                        OnClick ="CrearCliente" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="180px" BorderWidth="1px" />    
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px;">
                    <asp:Button ID="Button2" runat="server" Text="NO CONTESTA" 
                        OnClick ="FinalNoTitular" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="180px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" />
                    </td>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px;">
                    <asp:Button ID="Button4" runat="server" Text="MENSAJE CON TERCERO" 
                        OnClick ="Final106" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="180px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" />
                </td>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px;">
                    <asp:Button ID="Button5" runat="server" Text="LLAMAR LUEGO" 
                        OnClick ="Final107" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="180px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px; ">
                    <asp:Button ID="Button7" runat="server" Text="FUERA DE SERVICIO" 
                        OnClick ="Final108" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="180px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" />
                    </td>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px; ">
                    <asp:Button ID="Button8" runat="server" Text="BUZON" 
                        OnClick ="Final111" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="180px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" />
                </td>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px; ">
                    <asp:Button ID="Button9" runat="server" Text="NO SUMINISTRA DATOS" 
                        OnClick ="Final104" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="180px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px; ">
                    &nbsp;</td>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px; ">
                    <asp:Button ID="Button10" runat="server" Text="NO TITULAR" 
                        OnClick ="Final113" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="16px" 
                        Height="50px" Width="180px" BorderWidth="1px" style="white-space:normal;" 
                        CausesValidation="False" />
                    </td>
                <td style="border: 1px solid #2b8b4b; text-align:center; height:80px; ">
                    &nbsp;</td>
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
        Response.Redirect("~/Finales_old.aspx?newidsujeto=" + newidsujeto)
    End Sub
    
    
    Protected Sub FinalNoTitular(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "105"
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        idoriginal = TextBox1.Text
        Nombre1 = TextBox2.Text
        Apellido1 = TextBox4.Text
        Nombre2 = TextBox3.Text
        Apellido2 = TextBox5.Text
        Response.Redirect("~/Inserttablefinales.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)
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
        Response.Redirect("~/InserttablefinalesNoAplica.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub

    Protected Sub Final113(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "113"
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

    Protected Sub Final112(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "112"
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
        Response.Redirect("~/InserttablefinalesNoAplica.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tipificacion=" + tipificacion)

    End Sub

    Protected Sub Final104(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "112"
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

    Protected Sub Final108(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "108"
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

    Protected Sub Final107(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "107"
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

    Protected Sub Final111(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = "111"
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
