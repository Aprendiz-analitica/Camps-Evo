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
        <thead>
            <tr>
                <th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="3" align="center">
                    DIME - DATOS CLIENTE</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DatosCliente_TextBox1" 
                        ErrorMessage="Número de documento es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DatosCliente_TextBox2" 
                        ErrorMessage="Primer nombre es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DatosCliente_TextBox6" 
                        ErrorMessage="Telefono es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DatosCliente_TextBox3" 
                        ErrorMessage="Primer apellido es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Segundo apellido:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>


                        <tr>
                <th colspan="3" 
                    
                    style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; height: 29px; font-weight: bold;">
                    OBSERVACIONES</th>
                    </tr>
            <tr>
                <td style="border: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle; text-align: center;" 
                    class="style2" colspan="3">
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox10" runat="server" 
                        AtributoCliente="Observaciones" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" TipoTextBox="MultiLine" />
                </td>
            </tr>
        </tbody>
    </table>
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
                    <asp:Button
                        ID="Btn16"
                        runat="server"
                        Font-Size="12px"
                        onclick="Sin_Disponibilidad_Proc_Cardiologia"
                        Text="SIN DISPONIBILIDAD PROC CARDIOLOGIA"
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
                        onclick="Sin_Disponibilidad_Unidad_Digestiva"
                        Text="SIN DISPONIBILIDAD UNIDAD DIGESTIVA"
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
                        onclick="Sin_Disponibilidad_Consulta_Externa"
                        Text="SIN DISPONIBILIDAD CONSULTA EXTERNA"
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
                        onclick="Sin_Disponibilidad_Diagnosticos"
                        Text="SIN DISPONIBILIDAD DIAGNOSTICOS"
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
</script>
