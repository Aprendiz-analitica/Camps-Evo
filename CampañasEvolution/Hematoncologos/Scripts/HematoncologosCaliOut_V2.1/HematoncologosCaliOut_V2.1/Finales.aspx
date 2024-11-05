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
                    &nbsp;DATOS USUARIO</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Numero de 
                    documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                </td>
                <td 
                    
                    style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px hidden #ed7203; border-bottom: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle;" 
                    class="style1" colspan="2">
                    Nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Numero de telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Servicio requerido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox11" 
                        runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" Clave="SERVICIOREQUERIDO" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Descripcion DX:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox12" 
                        runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" Clave="DESCRIPCIONDX" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Fecha reporte:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox13" 
                        runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" Clave="FECHAREPORTE" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    &nbsp;</td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    &nbsp;</td>
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
                <th 
                    style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center;
                           background-color: #ed7203;
                           font-size: 16px;
                           color: #FFFFFF;
                           font-weight: bold; height: 29px;" class="style1">
                    TIPIFICACIONES
                    </th>
            </tr>
            <tr>
                <td class="campoti" 
                    
                    
                    style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px hidden #ed7203; border-bottom: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle;">
                    Tipificacion:<br />
                    <asp:DropDownList ID="Grupo" runat="server" 
                         Width="100%" 
                        AutoPostBack="True" >
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="Grupo" 
                        ErrorMessage="Obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="campoti" 
                    
                    
                    style="padding: 5px; border: 1px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle; text-align: center;">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DataSourceMode="DataReader" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                    </asp:SqlDataSource>
                    <asp:Button
                        ID="Btn1"
                        runat="server"
                        Font-Size="12px"
                        onclick="Asignacion_Cita" 
                        Text="FINALIZAR"
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
        If Not IsPostBack Then
            Grupo.Items.Clear()
            Dim sSql As String = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = " + Convert.ToString(Gestion.Campanya.IdCampanya)
            sSql += " AND IDFINAL BETWEEN 600 AND 699"

            ' Asignar el comando SQL al SqlDataSource usando parámetros
            SqlDataSource1.SelectCommand = sSql
            SqlDataSource1.DataBind()
            Grupo.DataSource = SqlDataSource1
            Grupo.DataTextField = "DESCRIPCION"
            Grupo.DataValueField = "IDFINAL"
            Grupo.DataBind()
            Grupo.Items.Insert(0, New ListItem(String.Empty, String.Empty))
        End If
        
        
    End Sub


    Protected Sub Asignacion_Cita(ByVal sender As Object, ByVal e As System.EventArgs)
        Try
            DatoClienteComponentHelper.GuardaDatosCliente()
            Dim selectedValue As String = ""

            ' Verifica si Subtipificacion3 tiene un valor seleccionado
            If Not String.IsNullOrEmpty(Grupo.SelectedValue) Then
                selectedValue = Grupo.SelectedValue
           
            End If
        
            ' Verifica que el valor seleccionado no sea nulo o esté vacío
            If Not String.IsNullOrEmpty(selectedValue) Then
                ' Verifica si el valor seleccionado es numérico
                If IsNumeric(selectedValue) Then
                    ' Realiza la gestión final con el valor seleccionado
                    Gestion.FinalGestion(selectedValue)
                Else
                    Throw New FormatException("El valor seleccionado no es un número.")
                End If
            Else
                Throw New FormatException("No se ha seleccionado ningún valor válido.")
            End If
        Catch ex As FormatException
            ' Manejo de la excepción de formato
            ' Puedes registrar el error o mostrar un mensaje más amigable para el usuario
            Response.Write("Error: " & ex.Message)
        Catch ex As Exception
            ' Manejo de otras excepciones
            Response.Write("Se produjo un error inesperado: " & ex.Message)
        End Try
        
        
    End Sub


</script>
