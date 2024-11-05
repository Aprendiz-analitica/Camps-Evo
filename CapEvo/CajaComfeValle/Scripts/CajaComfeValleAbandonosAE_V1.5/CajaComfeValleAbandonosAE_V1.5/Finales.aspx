<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
        <script type="text/javascript">

            function Llamar() {
                var valorTelefono = document.getElementById("ctl00_MainContent_TextBox1").value;

                if (valorTelefono) {
                    if (valorTelefono == null) {
                        alert("El teléfono informado es null");
                        return;
                    }
                    if (valorTelefono.length == 0) {
                        alert("El teléfono informado es vacío");
                        return;
                    }
                }
                else {
                    alert("El teléfono informado es undefined");
                    return;
                }
                agentapi.MakeCall(valorTelefono);
            }

    </script>

    <style type="text/css">
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
        .style1
        {
            width: 603px;
            height: 58px;
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
                    align="center">
                    GESTION LLAMADAS ABANDONADAS
                    </th>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle; text-align: center;" 
                    class="style1">
                    Numero de Telefono:<br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="50%"></asp:TextBox>
                    <br />
                </td>
            </tr>

            <tr>
                <td style="border: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle; text-align: center;" 
                    class="style2">
                    <input id="Button5" onclick="Llamar()" 
                        style="font-size: 12px; background-color: #249E6B; width: 200px; height: 40px; background-image: none; font-weight: bold; margin-right: 0;" 
                        type="button" value="LLAMAR" /></td>
            </tr>

        </thead>
    </table>
    <table class="formulario" style="width:603px;">  
        <tbody>
            <tr>
                <th colspan="3" 
                    
                    style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; height: 29px; font-weight: bold;">
                    TIPIFICACIONES</th>
            </tr>
            <tr>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="GESTIÓN COMERCIAL" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button1Click" />
                </td>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button2" runat="server" Text="TRANSFERENCIA" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button2Click" />
                </td>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button3" runat="server" Text="VIVIENDA" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button3Click" />
                </td>
            </tr>
                        <tr>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button4" runat="server" Text="SERVICIOS FINANCIEROS" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button4Click" />
                </td>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button5" runat="server" Text="REGISTRO Y APORTES" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button5Click" />
                </td>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button6" runat="server" Text="RECREACIÓN" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button6Click" />
                </td>
            </tr>
                        <tr>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button7" runat="server" Text="LLAMADA SALIENTE" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button7Click" />
                </td>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button8" runat="server" Text="GENERALES" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button8Click" />
                </td>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button9" runat="server" Text="EMPLEABILIDAD" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button9Click" />
                </td>
            </tr>
            <tr>
                <td class="campoti" style="text-align: center">
                    <asp:Button ID="Button10" runat="server" Text="EDUCACIÓN Y CULTURA" 
                        ForeColor="White" Height="42px" Width="90%" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True"
                        onclick="Button10Click" />
                </td>
                <td class="campoti" style="text-align: center">

                </td>
                <td class="campoti" style="text-align: center">

                </td>
            </tr>    
        </tbody>
        
    </table>           

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim telefono As String = Request.QueryString("telefono").ToString()
        TextBox1.Text = telefono
    End Sub


    Protected Sub Button1Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        
        Dim url As String = "GestionComercial.aspx"
        
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub Button2Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        
        Dim url As String = "Transferencia.aspx"
        
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub Button3Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        
        Dim url As String = "Vivienda.aspx"
        
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub Button4Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        
        Dim url As String = "ServiciosFinancieros.aspx"
       
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub Button5Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        Dim url As String = "RegistroAportes.aspx"
                        
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub Button6Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        
        Dim url As String = "Recreacion.aspx"
        
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub Button7Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        
        Dim url As String = "Llamadasaliente.aspx"
                
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub Button8Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        
        Dim url As String = "Generales.aspx"
        
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub Button9Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        
        Dim url As String = "Empleabilidad.aspx"
        
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub Button10Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim telefono As String = Request.QueryString("telefono").ToString()
        Dim idTransaccionOriginal As String = Request.QueryString("idtransaccionOriginal").ToString()
        
        Dim url As String = "EducacionCultura.aspx"
                
        Response.Redirect("~/ActualizarEstadoCerrado.aspx?idTransaccionOriginal=" + idTransaccionOriginal + "&telefono=" + telefono + "&url=" + url)
    End Sub

    Protected Sub BotonAtras(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("~/ActualizarCliente.aspx")
    End Sub
</script>
