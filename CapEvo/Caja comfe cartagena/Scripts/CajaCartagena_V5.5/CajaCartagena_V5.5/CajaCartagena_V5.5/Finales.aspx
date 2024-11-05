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
        .style2
        {
            height: 25px;
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
                           width:100%;
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
                        onclick="f_atencion_cliente_Click" 
                        Text="ATENCION AL CLIENTE "
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
                        onclick="f_cartera_corporativa_Click" 
                        Text="CARTERA CORPORATIVA"
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
                        onclick="f_credito_social_Click"
                        Text="CREDITO SOCIAL"
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
                        onclick="f_educacion_cultura_Click"
                        Text="EDUCACION Y CULTURA " 
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
                        onclick="f_deporte_Click" 
                        Text="DEPORTE"
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
                        onclick="f_subsidio_desempleo_Click"
                        Text="FOSFEC- SUBSIDIO AL DESEMPLEO"
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
                        onclick="f_mercadeo_venta_Click"
                        Text="MERCADEO Y VENTA"
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
                        onclick="f_proteccion_social_Click"
                        Text="PROTECCION SOCIAL"
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
                        onclick="f_recreacion_turismo_Click"
                        Text="RECREACION Y TURISMO"
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
                        onclick="f_registro_aportes_Click"
                        Text="REGISTRO, APORTE Y SUBSIDIO"
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
                        ID="Btn17"
                        runat="server"
                        Font-Size="12px"
                        onclick="f_vivienda_Click"
                        Text="VIVIENDA"
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
                        ID="Btn18"
                        runat="server"
                        Font-Size="12px"
                        onclick="f_tarea_interna_Click"
                        Text="TAREA INTERNA"
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
                        ID="Btn19"
                        runat="server"
                        Font-Size="12px"
                        onclick="f_llamadas_singestion_Click"
                        Text="LLAMADAS SIN GESTION"
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
                        ID="Btn20"
                        runat="server"
                        Font-Size="12px"
                        onclick="f_gestion_outbound_Click"
                        Text="GESTION OUTBOUND"
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
                        ID="Btn21"
                        runat="server"
                        Font-Size="12px"
                        onclick="f_transferencias_Click"
                        Text="TRANSFERENCIAS"
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

    Protected Sub f_atencion_cliente_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_atencion_cliente.aspx")
    End Sub
    
    Protected Sub f_cartera_corporativa_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_cartera_corporativa.aspx")
    End Sub
    
    Protected Sub f_credito_social_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_credito_social.aspx")
    End Sub

    Protected Sub f_educacion_cultura_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_educacion_cultura.aspx")
    End Sub
    
    Protected Sub f_deporte_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_deporte.aspx")
    End Sub

    Protected Sub f_subsidio_desempleo_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_subsidio_desempleo.aspx")
    End Sub
    
    Protected Sub f_mercadeo_venta_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_mercadeo_venta.aspx")
    End Sub
    
    Protected Sub f_proteccion_social_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_proteccion_social.aspx")
    End Sub
    
    Protected Sub f_recreacion_turismo_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_recreacion_turismo.aspx")
    End Sub
    
    Protected Sub f_registro_aportes_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_registro_aportes.aspx")
    End Sub
    
    Protected Sub f_vivienda_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_vivienda.aspx")
    End Sub
    
    Protected Sub f_tarea_interna_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_tarea_interna.aspx")
    End Sub
    
    Protected Sub f_llamadas_singestion_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_llamadas_singestion.aspx")
    End Sub
    
    Protected Sub f_gestion_outbound_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_gestion_outbound.aspx")
    End Sub
    
    Protected Sub f_transferencias_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/f_transferencias.aspx")
    End Sub

    Protected Sub Confirmacion_Cita(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Confirmacion_Cita.aspx")
    End Sub

    Protected Sub Informacion_General(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Informacion_General.aspx")
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

    Protected Sub Sin_Disponibilidad_Unidad_Digestiva(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Unidad_Digestiva.aspx")
    End Sub

    Protected Sub Sin_Disponibilidad_Consulta_Externa(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
        Response.Redirect("~/Sin_Disponibilidad_Consulta_Externa.aspx")
    End Sub

    Protected Sub Cancelacion_Cita(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>
