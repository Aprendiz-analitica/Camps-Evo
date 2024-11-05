<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .tdSample
        {
            height: 30px;        
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
     
    <table class="formulario" style="width:70%;">        
        <thead>
            <tr>
                <th style="text-align:center" colspan="3">
                    Datos personales de <%: EvoAPI.Customer.Name & " " & EvoAPI.Customer.SecondName & " " & EvoAPI.Customer.LastName%>
                </th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td class="tdSample" colspan="2">
                    <evo:CustomerData_Label ID="CustomerData_Label1" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="OriginalId" 
                        LabelStyle-Font-Bold="True" TextLabel="ID Original:" />
                </td>
                <td class="tdSample" style="text-align: center">
                    &nbsp;
                    <asp:Label ID="tipoCliente" runat="server" CssClass="title" ForeColor="Maroon" 
                        Text="tipoCliente"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="tdSample" colspan="2">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox1" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="Name"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="Nombre:" />
                </td>
                <td class="tdSample">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox7" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="PersonalID"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="DNI:" />
                </td>
            </tr>
            <tr>
                <td class="tdSample" colspan="2">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox2" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="LastName"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="Primer apellido:" />
                </td>
                <td class="tdSample">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox8" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="SecondLastName"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="Segundo apellido:" />
                </td>
            </tr>
            <tr>
                <td class="tdSample" colspan="2">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox3" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="Address"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="Dirección:" />
                </td>
                <td class="tdSample">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox9" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="City"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="Población:" />
                </td>
            </tr>
            <tr>
                <td class="tdSample" colspan="2">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox4" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="ZipCode"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="Código postal:" />
                </td>
                <td class="tdSample">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox10" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="State"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="Provincia:" />
                </td>
            </tr>
            <tr>
                <td class="tdSample" colspan="2">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox5" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="Country"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="País:" />
                </td>
                <td>
                    
                    <evo:CustomerData_TZDropDownList ID="CustomerData_TZDropDownList1" 
                        runat="server" AutoLabel="False" CustomerColumn="TimeZone" 
                        TextLabel="Zona horaria:" />
                </td>
            </tr>
            <tr>
                <td class="tdSample" colspan="2">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox6" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="Phone"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="Teléfono:" />
                </td>
                <td class="tdSample">
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox11" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="Email"
                        Width="100%" LabelHorizontalAlign="Right" LabelStyle-Font-Bold="True"  
                        TextLabel="e Mail:" />
                </td>
            </tr>
            <tr>                
                <td style="width:7%; text-align: right; font-weight: bold;">                   
                    Teléfonos:</td>
                <td style="width:27%">
                    <asp:DataList ID="DataList1" runat="server" 
                        DataSourceID="ListaDeLocalizadoresClienteActual" ShowFooter="False" 
                        ShowHeader="False">
                        <AlternatingItemStyle BackColor="#CEE8EE" Font-Bold="False" Font-Italic="False" 
                            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                        <ItemTemplate>
                            <asp:Label ID="LocalizadorValueLabel" runat="server" 
                                Text='<%# Eval("LocalizadorValue") %>' />
                        </ItemTemplate>
                    </asp:DataList>
                </td>
                <td class="tdSample">
                    &nbsp;
                </td> 
            </tr>
            <tr>                
                <td style="width:24%; text-align: right; height: 90px; font-weight: bold;">                   
                    Observaciones:
                </td>
                <td style="width:76%;" colspan="2">
                    <asp:TextBox ID="tbObservaciones" runat="server" 
                        TextMode="MultiLine" Width="97%" Height="70px" ></asp:TextBox>
                </td>                
            </tr>
            <tr>
                <td style="text-align:center; height:80px;" colspan="3">
                    <evo:SaveCustomerData_Button ID="SaveCustomerData_Button1" runat="server" 
                        CssClass="btn" Destination="~/DatosAdicionales.aspx" 
                        Text="Guardar y continuar" />
                    <evo:CallDisposition_Button ID="CallDisposition_Button1" runat="server" 
                        CssClass="btn btn_callDisposition_Button" callDispositionCode="0" />
                </td>
            </tr>
        </tbody>
    </table>

    <br />

    <!-- Código de ejemplo para el tutorial de Integración de IVR Asterisk con Evolution DBR  -->
    <div ID="DivIVR_KVP" runat="server">

        <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="text-align:center" colspan="3">
                    Datos asociados a la interacción
                </th>
            </tr>
        </thead>

         <tbody>            
            <tr>
                <td class="tdSample" style="width:24%; text-align: right; font-weight: bold;">Idioma:</td>
                <td class="tdSample" colspan="2">
                    <asp:TextBox ID="TextBoxIdioma" runat="server" ReadOnly="True" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdSample" style="width:24%; text-align: right; font-weight: bold;">PIN:</td>
                <td class="tdSample" colspan="2">
                    <asp:TextBox ID="TextBoxPIN" runat="server" ReadOnly="True" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdSample" style="width:24%; text-align: right; font-weight: bold;">Tipo de incidencia:</td>
                <td class="tdSample" colspan="2">
                    <asp:TextBox ID="TextBoxTipoIncidencia" runat="server" ReadOnly="True" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="3" >
                    <font size="1"><b>
                    <br />
                    Atención: </b>Los datos asociados a la interacción pueden venir informados por estrategias DBR o módulos externos, por ejemplo, una IVR.</font>
                </td>
            </tr>
        </tbody>
    </table>

    </div>

    <asp:ObjectDataSource ID="ListaDeLocalizadoresClienteActual" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetLocalizadoresClienteActual" 
        TypeName="Icr.Evolution.EvolutionLibrary.Models.Localizadores" 
        DataObjectTypeName="Icr.Evolution.EvolutionLibrary.Models.Localizador" 
        UpdateMethod="Add">
    </asp:ObjectDataSource>
    <br />  

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        tbObservaciones.Text = EvoAPI.Customer.Remarks
        
        'Obtener el tipo de cliente (si está disponible)
        If Not EvoAPI.Transaction.KeyValueCollection.GetValue("tipoCliente", tipoCliente.Text) Then
            tipoCliente.Text = ""
        End If
        
        ' --------------------------------------------------------------------------
        ' BOF - Código del tutorial de Integración de IVR Asterisk con Evolution DBR
        ' --------------------------------------------------------------------------
        Dim ValueIdioma As String
        If Not EvoAPI.Transaction.KeyValueCollection.GetValue("idioma", ValueIdioma) Then
            DivIVR_KVP.Visible = False
        End If
        TextBoxIdioma.Text = getTextoIdioma(ValueIdioma)
        
        Dim ValuePIN As String
        EvoAPI.Transaction.KeyValueCollection.GetValue("pin", ValuePIN)
        TextBoxPIN.Text = ValuePIN
        
        Dim ValueTipoIncidencia As String
        EvoAPI.Transaction.KeyValueCollection.GetValue("tipoIncidencia", ValueTipoIncidencia)
        TextBoxTipoIncidencia.Text = getTextoTipoIncidencia(ValueTipoIncidencia)
        ' --------------------------------------------------------------------------
        ' EOF - Código del tutorial de Integración de IVR Asterisk con Evolution DBR
        ' --------------------------------------------------------------------------
        
    End Sub
    
    ' --------------------------------------------------------------------------
    ' BOF - Código del tutorial de Integración de IVR Asterisk con Evolution DBR
    ' --------------------------------------------------------------------------
    Protected Function getTextoIdioma(ByVal Idioma As String) As String
        
        Select Case Idioma
            Case "1"
                getTextoIdioma = "Español (1)"
            Case "2"
                getTextoIdioma = "Inglés (2)"
            Case Else
                getTextoIdioma = "Desconocido ()"
        End Select
        
    End Function
    
                
    Protected Function getTextoTipoIncidencia(ByVal TipoIncidencia As String) As String
        
        Select Case TipoIncidencia
            Case "1"
                getTextoTipoIncidencia = "Normal (1)"
            Case "2"
                getTextoTipoIncidencia = "Urgente (2)"
            Case Else
                getTextoTipoIncidencia = "Desconocido ()"
        End Select
        
    End Function
    ' --------------------------------------------------------------------------
    ' EOF - Código del tutorial de Integración de IVR Asterisk con Evolution DBR
    ' --------------------------------------------------------------------------
    
</script>