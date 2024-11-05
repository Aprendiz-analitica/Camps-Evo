<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript">

        </script>





    <style type="text/css">
        
        .BotonSg
        {      font-size: 12px; background-color: #249E6B; width: 200px; height: 40px; background-image: none; font-weight: bold; margin-right: 0; color: #FFFFFF; border: 1px solid transparent; border-radius:4px;
        }
        .style1
        {
            height: 50px;
        }

        .style9
        {
            height: 50px;
            width: 235px;
        }

        .style10
        {
            width: 235px;
        }

    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="formulario" style="width:752px;">        
        <thead>
            <tr>
                <th style="padding: 5px; text-align:center; background-color: #249E6B; font-size: 16px; color: #FFFFFF; font-weight: bold; " 
                    colspan="3" align="center" class="style3">
                    Creacion de cliente</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style=" color: #2b8b4b; border-top:none; font-weight: bold; font-size: 16px; text-align: center;" 
                    class="style10">
    Numero de Documento:<br />
    <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
        ErrorMessage="Este campo no puede estar vacio" 
        ControlToValidate="TextBox1" Font-Size="12px"></asp:RequiredFieldValidator>
</td>

                <td 

                    style="border: 1px solid #ed7203; border-top:none; color: #2b8b4b; font-weight: bold; font-size: 16px;text-align: center;">
                    Primer nombre:<br />
                    <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black" Width="192px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td 
                    
                    
                    style="border: 1px solid #ed7203; border-top:none; color: #2b8b4b; font-weight: bold; font-size: 16px; text-align: center;">
                    Segundo nombre:<br />
                    <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; color: #2b8b4b; font-size: 16px; font-weight: bold; text-align: center;" 
                    class="style10">
 
                    Numero de Telefono:<br />
                    <asp:TextBox ID="TextBox6" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
                <td style="border: 1px solid #ed7203; color: #2b8b4b; font-size: 16px; font-weight: bold; text-align: center;">
                    Primer apellido:<br />
                    <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="TextBox4" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 1px solid #ed7203; color: #2b8b4b; font-size: 16px; font-weight: bold; text-align: center;">
                    Segundo apellido:<br />
                    <asp:TextBox ID="TextBox5" runat="server" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; text-align:center; height:80px; " 
                    colspan="3">
                    &nbsp;<asp:Button ID="Button1" runat="server" Text="Crear Cliente" 
                        OnClick ="CrearCliente" ForeColor="White" BackColor="#249E6B" 
                        BorderColor="#249E6B" BorderStyle="Solid" Font-Bold="True" 
                        Height="52px" Width="197px" BorderWidth="1px" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style9">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button32" runat="server" 
                        callDispositionCode="221" CssClass="btn btn_callDisposition_Button" 
                        Text="Transferencia Area Administrativa" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" CausesValidation="False"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button28" runat="server" 
                        callDispositionCode="220" CssClass="btn btn_callDisposition_Button" 
                        Text="Transferencia menu Bogota" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" CausesValidation="False"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button2" runat="server" 
                        callDispositionCode="222" CssClass="btn btn_callDisposition_Button" 
                        Text="Llamada muda" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" CausesValidation="False"  />
                </td>                                    
                
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style9">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button4" runat="server" 
                        callDispositionCode="175" CssClass="btn btn_callDisposition_Button" 
                        Text="Llamada de prueba" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" CausesValidation="False"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button25" runat="server" 
                        callDispositionCode="176" CssClass="btn btn_callDisposition_Button" 
                        Text="Llamada equivocada" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" CausesValidation="False"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button26" runat="server" 
                        callDispositionCode="177" CssClass="btn btn_callDisposition_Button" 
                        Text="No titular" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" CausesValidation="False"  />
                </td>                                    
                
            </tr>
            <tr>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style9">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button33" runat="server" 
                        callDispositionCode="168" CssClass="btn btn_callDisposition_Button" 
                        Text="Interesados no dejan datos" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" CausesValidation="False"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center" 
                    class="style1">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button3" runat="server" 
                        callDispositionCode="167" CssClass="btn btn_callDisposition_Button" 
                        Text="Interesados en proyectos no vigentes" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" CausesValidation="False"  />
                </td>
                <td style="padding: 5px; border: 1px solid #ed7203; text-align:center">                     
                    <evo:CallDisposition_Button ID="CallDisposition_Button34" runat="server" 
                        callDispositionCode="173" CssClass="btn btn_callDisposition_Button" 
                        Text="Informacion otras areas" Width="200px" 
                        style="white-space: normal" Height="70px" BackColor="#249E6B" 
                        BorderColor="#249E6B" Font-Bold="True" CausesValidation="False"  />
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
        Dim idsujeto As Long = -1
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim idcall As String = ""
        Dim telori As String = ""
        Dim check As String = ""
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

</script>
