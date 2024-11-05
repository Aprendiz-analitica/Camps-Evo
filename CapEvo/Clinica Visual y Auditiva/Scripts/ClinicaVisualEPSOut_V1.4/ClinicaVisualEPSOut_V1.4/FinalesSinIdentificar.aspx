<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
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
        
        .style3
        {
            border: 1px solid #ed7203;
            padding: 5px;
            color: #249e6b;
            font-weight: bold;
            font-size: 14px;
            width: 201px;
            vertical-align: middle;
            height: 25px;
        }
        
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:100%;">        
        <thead>
            <tr>
                <th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="3" align="center">
                    CLINICA VISUAL EPS 
                    -
                    DATOS CLIENTE</th>
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
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
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
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Telefono Adicional:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox9" runat="server" 
                        AtributoCliente="Telefono2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
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
        <thead>
        </thead>
        <tbody>

                      <tr>
                <th colspan="3" 
                                        style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; height: 29px; font-weight: bold;">
                    TIPIFICACIONES</th>
            </tr>
           
           <tr>
           <td class="campoti" 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;">
                    Tipificacion:<br />
                    <asp:DropDownList ID="Grupo" runat="server" 
                        onselectedindexchanged="Grupo_SelectedIndexChanged" Width="100%" 
                        AutoPostBack="True">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="1">CITA REASIGNADA</asp:ListItem>
                        <asp:ListItem Value="2">OFTALMOLOGIA</asp:ListItem>
                        <asp:ListItem Value="3">TRANSFERENCIA PARTICULAR</asp:ListItem>
                        <asp:ListItem Value="4">OPTOMETRÍA</asp:ListItem>
                        <asp:ListItem Value="5">OTORRINO</asp:ListItem>
                        <asp:ListItem Value="6">OTROS</asp:ListItem>
                        <asp:ListItem Value="7">AYUDA DIAGNOSTICAS AUDIOLOGIA</asp:ListItem>
                        <asp:ListItem Value="8">BAJA VISIÓN</asp:ListItem>
                        <asp:ListItem Value="9">AUDIFONOS</asp:ListItem>
                        <asp:ListItem Value="10">AYUDAS DIAGNOSTICAS OFTALMOLOGIA</asp:ListItem>
                        <asp:ListItem Value="11">AYUDAS DIAGNOSTICAS OTORRINO</asp:ListItem>
                        <asp:ListItem Value="12">FONOAUDIOLOGIA</asp:ListItem>
                        <asp:ListItem Value="13">INFORMACION GENERAL</asp:ListItem>
                        <asp:ListItem Value="14">DATOS INCOMPLETOS</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="Grupo" 
                        ErrorMessage="Obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                 <td class="campoti" 
                    
                    style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;">
                    Suptipificacion:<asp:DropDownList ID="Subtipificacion" runat="server" 
                        onselectedindexchanged="Subtipificacion_SelectedIndexChanged" 
                        AutoPostBack="True" Width="100%">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="Subtipificacion" 
                        ErrorMessage="Obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                 <td class="campoti" 
                    
                    style="width:100%; padding: 5px; border: 1px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle; text-align: center;" 
                    colspan="3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DataSourceMode="DataReader" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                         onselecting="SqlDataSource1_Selecting">
                    </asp:SqlDataSource>
                   
                     <asp:Button ID="Btn1" runat="server" BackColor="#249E6B" BorderColor="#249E6B" 
                         Font-Bold="True" Font-Size="12px" Height="42px" onclick="Finales_btn" 
                         Style="white-space:normal" Text="FINALIZAR" Width="200px" />
                   
                </td>
                </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Grupo_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Subtipificacion.Items.Clear()
        Dim sSql As String = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = " + Convert.ToString(Gestion.Campanya.IdCampanya)
        Dim agregarDesdeDB As Boolean = True
        If Grupo.SelectedValue = "1" Then
            sSql += " AND IDFINAL BETWEEN 100 AND 106"
        ElseIf Grupo.SelectedValue = "2" Then
            sSql += " AND IDFINAL BETWEEN 200 AND 217"
        ElseIf Grupo.SelectedValue = "3" Then
            sSql += " AND IDFINAL BETWEEN 300 AND 300"
        ElseIf Grupo.SelectedValue = "4" Then
            sSql += " AND IDFINAL BETWEEN 400 AND 402"
        ElseIf Grupo.SelectedValue = "5" Then
            sSql += " AND IDFINAL BETWEEN 500 AND 504"
        ElseIf Grupo.SelectedValue = "6" Then
            sSql += "AND IDFINAL in ( 600, 601, 602, 603, 604, 606, 607, 608, 609, 612)"
        ElseIf Grupo.SelectedValue = "7" Then
            sSql += " AND IDFINAL BETWEEN 700 AND 707"
        ElseIf Grupo.SelectedValue = "8" Then
            sSql += " AND IDFINAL BETWEEN 800 AND 803"
        ElseIf Grupo.SelectedValue = "9" Then
            sSql += " AND IDFINAL BETWEEN 900 AND 904"
        ElseIf Grupo.SelectedValue = "10" Then
            sSql += " AND IDFINAL BETWEEN 1000 AND 1014"
        ElseIf Grupo.SelectedValue = "11" Then
            sSql += " AND IDFINAL BETWEEN 1100 AND 1105"
        ElseIf Grupo.SelectedValue = "12" Then
            sSql += " AND IDFINAL BETWEEN 1200 AND 1209"
        ElseIf Grupo.SelectedValue = "13" Then
            sSql += " AND IDFINAL BETWEEN 1301 AND 1306"
        ElseIf Grupo.SelectedValue = "14" Then
            sSql += " AND IDFINAL BETWEEN 1400 AND 1404"
        End If
        
        If agregarDesdeDB Then
            ' Asignar el comando SQL al SqlDataSource usando parámetros

            SqlDataSource1.SelectCommand = sSql
            SqlDataSource1.DataBind()
            Subtipificacion.DataSource = SqlDataSource1
            Subtipificacion.DataTextField = "DESCRIPCION"
            Subtipificacion.DataValueField = "IDFINAL"
            Subtipificacion.DataBind()
            Subtipificacion.Items.Insert(0, New ListItem(String.Empty, String.Empty))
        End If
        
    End Sub


    Protected Sub Subtipificacion_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
       
    End Sub


    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub Finales_btn(ByVal sender As Object, ByVal e As System.EventArgs)
        Try
            ' Guarda los datos del cliente utilizando un método o componente adecuado
            DatoClienteComponentHelper.GuardaDatosCliente()

            ' Declara una variable para almacenar el valor seleccionado de Subtipificacion
            Dim selectedValue As String = ""

            ' Verifica si Subtipificacion tiene un valor seleccionado
            If Not String.IsNullOrEmpty(Subtipificacion.SelectedValue) Then
                selectedValue = Subtipificacion.SelectedValue
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
