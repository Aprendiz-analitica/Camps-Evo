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
                    &nbsp;DATOS CLIENTE</th>
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
                    
                    
                    style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px hidden #ed7203; border-bottom: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle;" 
                    colspan="3">
                    Tipificacion:<br />
                    <asp:DropDownList ID="Grupo" runat="server" 
                        onselectedindexchanged="Grupo_SelectedIndexChanged" Width="100%" 
                        AutoPostBack="True">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="1">CITAS PRIMERA VEZ</asp:ListItem>
                        <asp:ListItem Value="2">CITAS DE CONTROL</asp:ListItem>
                        <asp:ListItem Value="3">CITAS IMAGENNOLOGIA</asp:ListItem>
                        <asp:ListItem Value="4">NO APLICA AGENDAMIENTO</asp:ListItem>
                        <asp:ListItem Value="5">LLAMADAS OTROS SERVICIOS PENDIENTES</asp:ListItem>
                        <asp:ListItem Value="6">LLAMADAS SIN GESTIÓN</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="Grupo" 
                        ErrorMessage="Obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="campoti" 
                    
                    style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;">
                    Suptipificacion:<asp:DropDownList 
                        ID="Subtipificacion" runat="server" 
                        onselectedindexchanged="Subtipificacion_SelectedIndexChanged" 
                        AutoPostBack="True" Width="100%" Visible="False">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="Subtipificacion" 
                        ErrorMessage="Obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td class="campoti"
                    
                    style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;">
                    <br />
                    <asp:DropDownList ID="Subtipificacion2" runat="server" AutoPostBack="True"                          
                        Width="100%" Visible="False">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="Subtipificacion2" 
                        ErrorMessage="Obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>                
            </tr>
                        <tr>
                <th colspan="3" style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px solid #ed7203; border-bottom: 1px hidden #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; font-weight: bold;" class="style4">
                    SELECCIONAR EPS
                </th>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle; text-align: center;" 
                    class="style2" colspan="3">
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        Width="100%" Visible="False">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="DropDownList1" 
                        ErrorMessage="Obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="campoti" 
                    
                    style="padding: 5px; border: 1px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle; text-align: center;" 
                    colspan="3">
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
        
    End Sub


    Protected Sub Asignacion_Cita(ByVal sender As Object, ByVal e As System.EventArgs)
            DatoClienteComponentHelper.GuardaDatosCliente()
        Dim selectedEpsId As String = ""
            Dim selectedValue As String = ""

            ' Verifica si Subtipificacion2 tiene un valor seleccionado
            If Subtipificacion2.Visible AndAlso Subtipificacion2.SelectedItem IsNot Nothing Then
            selectedValue = Subtipificacion2.SelectedValue
        ElseIf Subtipificacion.SelectedItem IsNot Nothing Then
            selectedValue = Subtipificacion.SelectedValue
        End If
            
        If DropDownList1 IsNot Nothing AndAlso DropDownList1.SelectedItem IsNot Nothing Then
            selectedEpsId = DropDownList1.SelectedItem.Text
        End If

        
        

        ' Realiza la gestión final con el valor seleccionado
        If Not String.IsNullOrEmpty(selectedEpsId) Then
            Response.Redirect("~/InsertarEps.aspx?epsC=" + selectedEpsId + "&FinalGestion=" + selectedValue)
        Else
            Gestion.FinalGestion(selectedValue)
        End If
        
    End Sub

    

    Protected Sub Grupo_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Subtipificacion.Items.Clear()
        Subtipificacion2.Items.Clear()
        DropDownList1.Items.Clear()
        Subtipificacion.Visible = True
        Subtipificacion2.Visible = False        
        
        Dim sSql As String = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = " + Convert.ToString(Gestion.Campanya.IdCampanya)
        Dim sSqlEPS As String = "SELECT id, epsconvenio FROM __convenio_EPS_HematoOncologos"
        
        Dim agregarDesdeDB As Boolean = True
        Dim agregarDesdeDBEps As Boolean = True
        
        If Grupo.SelectedValue = "1" Then
            DropDownList1.Visible = True                         
            Subtipificacion.Items.Insert(0, New ListItem(String.Empty, String.Empty))
            Subtipificacion.Items.Add(New ListItem("ONCOLOGIA", "1"))
            Subtipificacion.Items.Add(New ListItem("HEMATOLOGIA", "2"))
            Subtipificacion.Items.Add(New ListItem("DERMATOLOGIA ONCO", "3"))
            Subtipificacion.Items.Add(New ListItem("UROLOGIA ONCO", "4"))
            Subtipificacion.Items.Add(New ListItem("CIRUGIA ONCO(MAMA)", "5"))
            Subtipificacion.Items.Add(New ListItem("CIRUGIA ONCO(GAST)", "6"))
            Subtipificacion.Items.Add(New ListItem("CIRUGIA PLASTICA", "7"))
            Subtipificacion.Items.Add(New ListItem("COLOPROCTOLOGIA", "8"))
            Subtipificacion.Items.Add(New ListItem("GINECOLOGIA ONCO", "9"))
            Subtipificacion.Items.Add(New ListItem("MASTOLOGIA", "10"))
            Subtipificacion.Items.Add(New ListItem("CABEZA Y CUELLO", "11"))
            Subtipificacion.Items.Add(New ListItem("TEJIDOS BLANDOS", "12"))
            Subtipificacion.Items.Add(New ListItem("HEMATOONCOLÓGIA", "15"))
            Subtipificacion.Items.Add(New ListItem("ORTOPEDIA Y TRAUMA", "16"))
            Subtipificacion.Items.Add(New ListItem("PSICOLOGIA", "17"))
            Subtipificacion.Items.Add(New ListItem("CIRUGIA DE TORAX", "18"))
            Subtipificacion.Items.Add(New ListItem("CIRUGÍA GASTROINTE", "19"))
            Subtipificacion.Items.Add(New ListItem("DOLOR Y CUIDADO PALIATIVOS", "20"))
            Subtipificacion.Items.Add(New ListItem("NUTRICIÓN", "21"))
            Subtipificacion.Items.Add(New ListItem("TRABAJO SOCIAL", "22"))
            agregarDesdeDB = False
        ElseIf Grupo.SelectedValue = "2" Then
            DropDownList1.Visible = True
            Subtipificacion.Items.Insert(0, New ListItem(String.Empty, String.Empty))
            Subtipificacion.Items.Add(New ListItem("ONCOLOGIA", "53"))
            Subtipificacion.Items.Add(New ListItem("HEMATOLOGIA", "54"))
            Subtipificacion.Items.Add(New ListItem("DERMATOLOGIA ONCO", "55"))
            Subtipificacion.Items.Add(New ListItem("UROLOGIA ONCO", "56"))
            Subtipificacion.Items.Add(New ListItem("CIRUGIA ONCO(MAMA)", "57"))
            Subtipificacion.Items.Add(New ListItem("CIRUGIA ONCO(GAST)", "58"))
            Subtipificacion.Items.Add(New ListItem("CIRUGIA PLASTICA", "59"))
            Subtipificacion.Items.Add(New ListItem("COLOPROCTOLOGIA", "60"))
            Subtipificacion.Items.Add(New ListItem("GINECOLOGIA ONCO", "61"))
            Subtipificacion.Items.Add(New ListItem("MASTOLOGIA", "62"))
            Subtipificacion.Items.Add(New ListItem("CABEZA Y CUELLO", "63"))
            Subtipificacion.Items.Add(New ListItem("TEJIDOS BLANDOS", "64"))
            Subtipificacion.Items.Add(New ListItem("HEMATOONCOLÓGIA", "67"))
            Subtipificacion.Items.Add(New ListItem("ORTOPEDIA Y TRAUMA", "68"))
            Subtipificacion.Items.Add(New ListItem("PSICOLOGIA", "69"))
            Subtipificacion.Items.Add(New ListItem("CIRUGIA DE TORAX", "70"))
            Subtipificacion.Items.Add(New ListItem("CIRUGÍA GASTROINTE", "71"))
            Subtipificacion.Items.Add(New ListItem("DOLOR Y CUIDADO PALIATIVOS", "72"))
            Subtipificacion.Items.Add(New ListItem("NUTRICIÓN", "73"))
            Subtipificacion.Items.Add(New ListItem("TRABAJO SOCIAL", "74"))
            agregarDesdeDB = False
        ElseIf Grupo.SelectedValue = "3" Then
            DropDownList1.Visible = True
            Subtipificacion.Items.Insert(0, New ListItem(String.Empty, String.Empty))
            Subtipificacion.Items.Add(New ListItem("TOMOGRAFIA", "114"))
            Subtipificacion.Items.Add(New ListItem("RADIOGRAFIA", "115"))
            Subtipificacion.Items.Add(New ListItem("ECOGRAFIAS", "116"))
            Subtipificacion.Items.Add(New ListItem("DOPPLER", "117"))
            Subtipificacion.Items.Add(New ListItem("BIOPSIAS", "118"))
            agregarDesdeDB = False
        ElseIf Grupo.SelectedValue = "4" Then
            sSql += " AND IDFINAL BETWEEN 5925 AND 5932"
            agregarDesdeDBEps = False
            Subtipificacion2.Visible = False
            DropDownList1.Visible = False
        ElseIf Grupo.SelectedValue = "5" Then
            sSql += " AND IDFINAL BETWEEN 6010 AND 6019"
            agregarDesdeDBEps = False
            DropDownList1.Visible = False
        ElseIf Grupo.SelectedValue = "6" Then
            sSql += " AND IDFINAL BETWEEN 6060 AND 6064"
            agregarDesdeDBEps = False
            DropDownList1.Visible = False
        Else
            Subtipificacion.Visible = False
            Subtipificacion2.Visible = False
        End If
        
        If agregarDesdeDB Then
            ' Asignar el comando SQL al SqlDataSource usando parámetros            
            SqlDataSource1.SelectCommand = sSql
            SqlDataSource1.DataBind()
            Subtipificacion.DataSource = SqlDataSource1
            Subtipificacion.DataTextField = "DESCRIPCION"
            Subtipificacion.DataValueField = "IDFINAL"
            Subtipificacion.DataBind()
            If Grupo.SelectedValue = "5" Then
                Subtipificacion.Items.Insert(0, New ListItem(String.Empty, String.Empty))
                Subtipificacion.Items.Insert(1, New ListItem("ATENCION AL CLIENTE", "160"))
            Else
                Subtipificacion.Items.Insert(0, New ListItem(String.Empty, String.Empty))
            End If
            
        End If
        If agregarDesdeDBEps Then
            SqlDataSource1.SelectCommand = sSqlEPS
            SqlDataSource1.DataBind()
            DropDownList1.DataSource = SqlDataSource1
            DropDownList1.DataTextField = "epsconvenio"
            DropDownList1.DataValueField = "id"
            DropDownList1.DataBind()
            DropDownList1.Items.Insert(0, New ListItem(String.Empty, String.Empty))
        End If
        
    End Sub
    
    Protected Sub Subtipificacion_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim agregarDesdeDB As Boolean = True
        Subtipificacion2.Items.Clear()
        Dim sSql As String = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = " + Convert.ToString(Gestion.Campanya.IdCampanya)
        
        If Subtipificacion.SelectedValue = "1" Then       'ONCOLOGIA
            sSql += " AND IDFINAL BETWEEN 2200 AND 2205"
        ElseIf Subtipificacion.SelectedValue = "2" Then   'HEMATOLOGIA
            sSql += " AND IDFINAL BETWEEN 2255 AND 2260"
        ElseIf Subtipificacion.SelectedValue = "3" Then   'DERMATOLOGIA ONCO
            sSql += " AND IDFINAL BETWEEN 2310 AND 2315"
        ElseIf Subtipificacion.SelectedValue = "4" Then   'UROLOGIA ONCO
            sSql += " AND IDFINAL BETWEEN 2375 AND 2380"
        ElseIf Subtipificacion.SelectedValue = "5" Then   'CIRUGIA ONCO(MAMA)
            sSql += " AND IDFINAL BETWEEN 2430 AND 2435"
        ElseIf Subtipificacion.SelectedValue = "6" Then   'CIRUGIA ONCO(GAST)
            sSql += " AND IDFINAL BETWEEN 2485 AND 2490"
        ElseIf Subtipificacion.SelectedValue = "7" Then   'CIRUGIA PLASTICA
            sSql += " AND IDFINAL BETWEEN 2540 AND 2545"
        ElseIf Subtipificacion.SelectedValue = "8" Then   'COLOPROCTOLOGIA
            sSql += " AND IDFINAL BETWEEN 2595 AND 2600"
        ElseIf Subtipificacion.SelectedValue = "9" Then   'GINECOLOGIA ONCO
            sSql += " AND IDFINAL BETWEEN 2650 AND 2655"
        ElseIf Subtipificacion.SelectedValue = "10" Then  'MASTOLOGIA
            sSql += " AND IDFINAL BETWEEN 2705 AND 2710"
        ElseIf Subtipificacion.SelectedValue = "11" Then  'CABEZA Y CUELLO
            sSql += " AND IDFINAL BETWEEN 2760 AND 2765"
        ElseIf Subtipificacion.SelectedValue = "12" Then  'TEJIDOS BLANDOS
            sSql += " AND IDFINAL BETWEEN 2815 AND 2820"
        ElseIf Subtipificacion.SelectedValue = "15" Then  'HEMATOONCOLÓGIA
            sSql += " AND IDFINAL BETWEEN 3050 AND 3055"
        ElseIf Subtipificacion.SelectedValue = "16" Then  'ORTOPEDIA Y TRAUMA
            sSql += " AND IDFINAL BETWEEN 3105 AND 3110"
        ElseIf Subtipificacion.SelectedValue = "17" Then  'PSICOLOGIA
            sSql += " AND IDFINAL BETWEEN 3160 AND 3165"
        ElseIf Subtipificacion.SelectedValue = "18" Then  'CIRUGIA DE TORAX
            sSql += " AND IDFINAL BETWEEN 3215 AND 3220 "
        ElseIf Subtipificacion.SelectedValue = "19" Then  'CIRUGÍA GASTROINTE
            sSql += " AND IDFINAL BETWEEN 3270 AND 3275"
        ElseIf Subtipificacion.SelectedValue = "20" Then  'DOLOR Y CUIDADO PALIATIVOS
            sSql += " AND IDFINAL BETWEEN 3325 AND 3330"
        ElseIf Subtipificacion.SelectedValue = "21" Then  'NUTRICIÓN
            sSql += " AND IDFINAL BETWEEN 3370 AND 3375"
        ElseIf Subtipificacion.SelectedValue = "22" Then  'TRABAJO SOCIAL
            sSql += " AND IDFINAL BETWEEN 3435 AND 3440"
            
        ElseIf Subtipificacion.SelectedValue = "53" Then   'ONCOLOGIA
            sSql += " AND IDFINAL BETWEEN 3490 AND 3495"
        ElseIf Subtipificacion.SelectedValue = "54" Then   'HEMATOLOGIA
            sSql += " AND IDFINAL BETWEEN 3545 AND 3550"
        ElseIf Subtipificacion.SelectedValue = "55" Then   'DERMATOLOGIA ONCO
            sSql += " AND IDFINAL BETWEEN 4610 AND 4615"
        ElseIf Subtipificacion.SelectedValue = "56" Then   'UROLOGIA ONCO
            sSql += " AND IDFINAL BETWEEN 4665 AND 4670"
        ElseIf Subtipificacion.SelectedValue = "57" Then   'CIRUGIA ONCO(MAMA)
            sSql += " AND IDFINAL BETWEEN 4740 AND 4745"
        ElseIf Subtipificacion.SelectedValue = "58" Then   'CIRUGIA ONCO(GAST)
            sSql += " AND IDFINAL BETWEEN 4795 AND 4800"
        ElseIf Subtipificacion.SelectedValue = "59" Then   'CIRUGIA PLASTICA
            sSql += " AND IDFINAL BETWEEN 4850 AND 4855"
        ElseIf Subtipificacion.SelectedValue = "60" Then   'COLOPROCTOLOGIA
            sSql += " AND IDFINAL BETWEEN 4915 AND 4920"
        ElseIf Subtipificacion.SelectedValue = "61" Then   'GINECOLOGIA ONCO
            sSql += " AND IDFINAL BETWEEN 4970 AND 4975"
        ElseIf Subtipificacion.SelectedValue = "62" Then   'MASTOLOGIA
            sSql += " AND IDFINAL BETWEEN 5025 AND 5030"
        ElseIf Subtipificacion.SelectedValue = "63" Then   'CABEZA Y CUELLO
            sSql += " AND IDFINAL BETWEEN 5070 AND 5075"
        ElseIf Subtipificacion.SelectedValue = "64" Then   'TEJIDOS BLANDOS
            sSql += " AND IDFINAL BETWEEN 5125 AND 5130"
        ElseIf Subtipificacion.SelectedValue = "67" Then   'HEMATOONCOLÓGIA
            sSql += " AND IDFINAL BETWEEN 5270 AND 5275"
        ElseIf Subtipificacion.SelectedValue = "68" Then   'ORTOPEDIA Y TRAUMA
            sSql += " AND IDFINAL BETWEEN 5325 AND 5330"
        ElseIf Subtipificacion.SelectedValue = "69" Then   'PSICOLOGIA
            sSql += " AND IDFINAL BETWEEN 5370 AND 5375"
        ElseIf Subtipificacion.SelectedValue = "70" Then   'CIRUGIA DE TORAX
            sSql += " AND IDFINAL BETWEEN 5425 AND 5430"
        ElseIf Subtipificacion.SelectedValue = "71" Then   'CIRUGÍA GASTROINTE
            sSql += " AND IDFINAL BETWEEN 5470 AND 5475"
        ElseIf Subtipificacion.SelectedValue = "72" Then   'DOLOR Y CUIDADO PALIATIVOS
            sSql += " AND IDFINAL BETWEEN 5525 AND 5530"
        ElseIf Subtipificacion.SelectedValue = "73" Then   'NUTRICIÓN
            sSql += " AND IDFINAL BETWEEN 5570 AND 5575"
        ElseIf Subtipificacion.SelectedValue = "74" Then   'TRABAJO SOCIAL
            sSql += " AND IDFINAL BETWEEN 5625 AND 5630"

        ElseIf Subtipificacion.SelectedValue = "114" Then   'TOMOGRAFIA
            sSql += " AND IDFINAL BETWEEN 5670 AND 5675"
        ElseIf Subtipificacion.SelectedValue = "115" Then   'RADIOGRAFIA
            sSql += " AND IDFINAL BETWEEN 5725 AND 5730"
        ElseIf Subtipificacion.SelectedValue = "116" Then   'ECOGRAFIAS 
            sSql += " AND IDFINAL BETWEEN 5770 AND 5775"
        ElseIf Subtipificacion.SelectedValue = "117" Then   'DOPPLER
            sSql += " AND IDFINAL BETWEEN 5825 AND 5830"
        ElseIf Subtipificacion.SelectedValue = "118" Then   'BIOPSIAS
            sSql += " AND IDFINAL BETWEEN 5870 AND 5875"
        ElseIf Subtipificacion.SelectedValue = "160" Then   'ATENCION AL CLIENTE
            sSql += " AND IDFINAL BETWEEN 5960 AND 5962"                                
        Else
            agregarDesdeDB = False
            Subtipificacion2.Visible = False            
        End If
        
        If agregarDesdeDB Then
            ' Configurar el SqlDataSource
            SqlDataSource1.SelectCommand = sSql
            SqlDataSource1.DataBind()

            ' Vincular el SqlDataSource al DropDownList SubGrupo
            Subtipificacion2.DataSource = SqlDataSource1
            Subtipificacion2.DataTextField = "DESCRIPCION"
            Subtipificacion2.DataValueField = "IDFINAL"
            Subtipificacion2.DataBind()
        
            Subtipificacion2.Items.Insert(0, New ListItem(String.Empty, String.Empty))
            Subtipificacion2.Visible = True

        End If
        
    End Sub





    Protected Sub Subtipificacion2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>
