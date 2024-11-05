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
                    SANITAS PGP</th>
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
                        onclick="Asignacion_Cita_PGP" 
                        Text="ASIGNACIÓN DE CITA"
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
                        onclick="Confirmacion_Cita_PGP"
                        Text="CONFIRMACIÓN CITA"
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
                        onclick="Reprogramacion_Cita_PGP" 
                        Text="REPROGRAMACIÓN CITA"
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
                        onclick="Cancelacion_Cita_PGP" 
                        Text="CANCELACIÓN CITA"
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
                        onclick="Sin_Disponibilidad_PGP"
                        Text="SIN DISPONIBILIDAD"
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
                        onclick="Informacion_General_PGP"
                        Text="INFORMACION GENERAL" 
                        Height="42px"
                        Width="200px"
                        Style="white-space:normal"
                        BackColor="#249E6B"
                        BorderColor="#249E6B"
                        Font-Bold="True"
                    />
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
    
    Protected Sub Asignacion_Cita_PGP(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Asignacion_Cita_PGP.aspx")
    End Sub

    Protected Sub Confirmacion_Cita_PGP(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Confirmacion_Cita_PGP.aspx")
    End Sub

    Protected Sub Reprogramacion_Cita_PGP(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Reprogramacion_Cita_PGP.aspx")
    End Sub

    Protected Sub Cancelacion_Cita_PGP(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Cancelacion_Cita_PGP.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_PGP(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Sin_Disponibilidad_PGP.aspx")
    End Sub

    Protected Sub Informacion_General_PGP(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Informacion_General_PGP.aspx")
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
        Response.Redirect("~/Finales.aspx")
    End Sub
</script>
