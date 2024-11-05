<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <script type="text/javascript">
    </script>

    <style type="text/css">
        .campoti {
            padding: 5px;
        }
        </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="formulario" style="width:100%">
        <tbody>
            <tr>
                <th colspan="2" 
                    style="border-left: 1px solid #ed7203;
                           border-right: 1px solid #ed7203;
                           border-top: 1px solid #ed7203;
                           border-bottom: 1px hidden #ed7203;
                           padding: 5px;
                           text-align:right;
                           background-color: #ed7203;
                           font-size: 16px;
                           color: #FFFFFF;
                           font-weight: bold;">
                    TIPIFICACIONES
                    OTROS</th>
                <th 
                    style="border-left: 1px solid #ed7203;
                           border-right: 1px solid #ed7203;
                           border-top: 1px solid #ed7203;
                           border-bottom: 1px hidden #ed7203;
                           padding: 5px;
                           text-align:right;
                           background-color: #ed7203;
                           font-size: 16px;
                           color: #FFFFFF;
                           font-weight: bold;">
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/Resources/images/Btn_Atras.png" 
                        onclick="ImageButton1_Click" CausesValidation="False" Width="24px" />
                    &nbsp;&nbsp;
                    </th>
            </tr>
            <tr>
                <td class="campoti" 
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn1"
                        runat="server"
                        Font-Size="12px"
                        onclick="Cotizacion" 
                        Text="COTIZACION"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                     />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;" colspan="1">
                    <asp:Button
                        ID="Btn3"
                        runat="server"
                        Font-Size="12px"
                        onclick="Fallas_Equipo_Mantenimiento"
                        Text="FALLAS EQUIPO EN MANTENIMIENTO"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                        />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button 
                        ID="Btn4"
                        runat="server"
                        Font-Size="12px"
                        onclick="Falla_Sistema" 
                        Text="FALLA EN EL SISTEMA"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                        />
                </td>
            </tr>
            <tr>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn2"
                        runat="server"
                        Font-Size="12px"
                        onclick="Informacion_Citas_Rx" 
                        Text="INFORMACION CITAS RX"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;" colspan="1">
                    <asp:Button 
                        ID="Btn5"
                        runat="server"
                        Font-Size="12px"
                        onclick="Llamada_Caida"
                        Text="LLAMADA CAIDA"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True" />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn6"
                        runat="server"
                        Font-Size="12px"
                        onclick="Llamada_Muda"
                        Text="LLAMADA MUDA" 
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                </td>
            </tr>
                        <tr>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn7"
                        runat="server"
                        Font-Size="12px"
                        onclick="No_Servicio_Dime" 
                        Text="NO SE PRESTA SERVICIO EN DIME"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;" colspan="1">
                    <asp:Button 
                        ID="Btn8"
                        runat="server"
                        Font-Size="12px"
                        onclick="Soporte_Descarga_Resultados"
                        Text="SOPORTE DESCARGA DE RESULTADOS"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True" />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn9"
                        runat="server"
                        Font-Size="12px"
                        onclick="Llamada_Prueba"
                        Text="LLAMADA DE PRUEBA" 
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                </td>
            </tr>
                        <tr>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn10"
                        runat="server"
                        Font-Size="12px"
                        onclick="Chat_Prueba" 
                        Text="CHAT DE PRUEBA"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;" colspan="1">
                    <asp:Button
                        ID="Btn11"
                        runat="server"
                        Font-Size="12px"
                        onclick="No_Hay_Convenios" 
                        Text="NO HAY CONVENIOS"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                            </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn12"
                        runat="server"
                        Font-Size="12px"
                        onclick="Sin_Datos" 
                        Text="SIN DATOS"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                            </td>
            </tr>
                        <tr>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn13"
                        runat="server"
                        Font-Size="12px"
                        onclick="Telefono_Errado" 
                        Text="TELÉFONO ERRADO"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;" colspan="1">
                    <asp:Button
                        ID="Btn14"
                        runat="server"
                        Font-Size="12px"
                        onclick="Buzon" 
                        Text="BUZÓN"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                            </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn15"
                        runat="server"
                        Font-Size="12px"
                        onclick="No_Contesta" 
                        Text="NO CONTESTA"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                            </td>
            </tr>
                        <tr>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn16"
                        runat="server"
                        Font-Size="12px"
                        onclick="Consulta_Resuelta" 
                        Text="CONSULTA RESUELTA"
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;" colspan="1">
                    &nbsp;</td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    &nbsp;</td>
            </tr>
        </tbody>
    </table>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("~/Finales.aspx")
    End Sub

    Protected Sub Cotizacion(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Cotizacion.aspx")
    End Sub

    Protected Sub Fallas_Equipo_Mantenimiento(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1601)
    End Sub

    Protected Sub Falla_Sistema(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1602)
    End Sub

    Protected Sub Informacion_Citas_Rx(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1603)
    End Sub

    Protected Sub Llamada_Caida(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1605)
    End Sub

    Protected Sub Llamada_Muda(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1606)
    End Sub

    Protected Sub No_Servicio_Dime(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1607)
    End Sub

    Protected Sub Soporte_Descarga_Resultados(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1608)
    End Sub

    Protected Sub Llamada_Prueba(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1609)
    End Sub

    Protected Sub Chat_Prueba(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1610)
    End Sub

    Protected Sub No_Hay_Convenios(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1622)
    End Sub

    Protected Sub Sin_Datos(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1623)
    End Sub

    Protected Sub Telefono_Errado(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1624)
    End Sub

    Protected Sub Buzon(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1625)
    End Sub

    Protected Sub No_Contesta(ByVal sender As Object, ByVal e As System.EventArgs)
    Gestion.FinalGestion(1626)
    End Sub

    Protected Sub Consulta_Resuelta(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(1627)
    End Sub
</script>
