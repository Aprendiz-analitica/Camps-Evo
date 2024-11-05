<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <style type="text/css">
        .style1
        {
            width: 201px;
            padding:20px;
        }
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
        }
        
        </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <table class="formulario" style="width:100%">
        <tbody>
            <tr>
                <th colspan="3" 
                    style="border-left: 1px solid #ed7203;
                           border-right: 1px solid #ed7203;
                           border-top: 1px solid #ed7203;
                           border-bottom: 1px hidden #ed7203;
                           padding: 5px;
                           text-align:center;
                           background-color: #ed7203;
                           font-size: 16px;
                           color: #FFFFFF;
                           font-weight: bold;" class="style1">
                    TIPIFICACIONES
                    </th>
            </tr>
            <tr>
                <td class="campoti" 
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn1"
                        runat="server"
                        Font-Size="12px"
                        onclick="Asignacion_Cita" 
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
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn2"
                        runat="server"
                        Font-Size="12px"
                        onclick="Cancelacion_Cita" 
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
                    style="border: 1px solid #ed7203;">
                    <asp:Button
                        ID="Btn3"
                        runat="server"
                        Font-Size="12px"
                        onclick="Confirmacion_Cita"
                        Text="CONFIRMACIÓN CITA"
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
                        ID="Btn6"
                        runat="server"
                        Font-Size="12px"
                        onclick="Informacion_General"
                        Text="INFORMACIÓN GENERAL" 
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
                        ID="Btn10"
                        runat="server"
                        Font-Size="12px"
                        onclick="Reprogramacion_Cita" 
                        Text="REPROGRAMACIÓN DE CITA"
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
                        ID="Btn11"
                        runat="server"
                        Font-Size="12px"
                        onclick="Usuario_NoAcepta_Cita"
                        Text="USUARIO NO ACEPTA CITA"
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
                        ID="Btn12"
                        runat="server"
                        Font-Size="12px"
                        onclick="Otros"
                        Text="OTROS"
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
                        ID="Btn14"
                        runat="server"
                        Font-Size="12px"
                        onclick="Datos_Incompletos"
                        Text="DATOS INCOMPLETOS"
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
            </tr>
            <tr>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button ID="Btn16" runat="server" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" Font-Size="12px" Height="42px" 
                        onclick="Sin_Disponibilidad_Proc_Cardiologia" Style="white-space:normal" 
                        Text="SIN DISPONIBILIDAD PROC CARDIOLOGIA" Width="200px" />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button ID="Btn17" runat="server" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" Font-Size="12px" Height="42px" 
                        onclick="Sin_Disponibilidad_Unidad_Digestiva" Style="white-space:normal" 
                        Text="SIN DISPONIBILIDAD UNIDAD DIGESTIVA" Width="200px" />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button ID="Btn18" runat="server" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" Font-Size="12px" Height="42px" 
                        onclick="Sin_Disponibilidad_Consulta_Externa" Style="white-space:normal" 
                        Text="SIN DISPONIBILIDAD CONSULTA EXTERNA" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
                    <asp:Button ID="Btn19" runat="server" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" Font-Size="12px" Height="42px" 
                        onclick="Sin_Disponibilidad_Diagnosticos" Style="white-space:normal" 
                        Text="SIN DISPONIBILIDAD DIAGNOSTICOS" Width="200px" />
                </td>
                <td class="campoti"
                    style="border: 1px solid #ed7203;">
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


    Protected Sub Asignacion_Cita(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Asignacion_Cita.aspx")       
    End Sub

    Protected Sub Cancelacion_Cita(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Cancelacion_Cita.aspx")
    End Sub

    Protected Sub Confirmacion_Cita(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Confirmacion_Cita.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_Consulta_Externa(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Consulta_Externa.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_Cardiologia(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Cardiologia.aspx")
    End Sub

    Protected Sub Informacion_General(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Informacion_General.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_Procedimiento_Cardiologia(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Procedimiento_Cardiologia.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_Unidad_Digestiva(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Unidad_Digestiva.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_Agenda(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Agenda.aspx")
    End Sub

    Protected Sub Reprogramacion_Cita(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Reprogramacion_Cita.aspx")
    End Sub

    Protected Sub Usuario_NoAcepta_Cita(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Usuario_NoAcepta_Cita.aspx")
    End Sub

    Protected Sub Otros(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Otros.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_Cita_Cirugia(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Cita_Cirugia.aspx")
    End Sub

    Protected Sub Datos_Incompletos(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Datos_Incompletos.aspx")
    End Sub

    Protected Sub Cotizacion(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Cotizacion.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_Proc_Cardiologia(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Proc_Cardiologia.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_Diagnosticos(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Diagnosticos.aspx")
    End Sub
</script>
