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
            width: 201px;
            height: 25px;
        }
        .style3
        {
            width: 402px;
            height: 25px;
        }
        
        .style4
        {
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
                <th style="border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold;" colspan="3" align="center">
                    Datos del cliente</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 1px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 14px; padding:1%;" 
                    class="style2">
                    Nit:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                </td>
                <td 
                    
                    
                    style="border: 1px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 14px; padding:1%" 
                    colspan="2" class="style3">
                    Cliente:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px; padding:1%;">
                    Teléfono 1:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox10" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="NIT2" 
                        Enabled="False" />
                </td>
                <td style="border: 1px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px; padding:1%;">
                    Teléfono 2:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox11" runat="server" 
                        AtributoCliente="Telefono2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="Telefono2" 
                        Enabled="False" />
                </td>
                <td style="border: 1px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 14px; width: 201px; padding:1%;">
                    Correo:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox18" 
                        runat="server" Clave="Correo" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" EtiquetaAuto="False" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 14px; padding:1%;" 
                    class="style4">
                    Proyecto:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox13" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="Proyecto" 
                        Enabled="False" />
                </td>
                <td style="border: 1px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 14px; padding:1%" 
                    class="style4">
                    Agrupación:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox14" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" 
                        Clave="Agrupacion" Enabled="False" />
                </td>
                <td style="border: 1px solid #ed7203; color: #249E6B; font-weight: bold; font-size: 14px; padding:1%" 
                    class="style4">
                    Max Mora Edad:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox16" 
                        runat="server" Clave="MaxMoraEdad" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #ed7203; border-bottom:none; color: #249E6B; font-weight: bold; font-size: 14px; padding:1%;" 
                    colspan="3">
                    Ultimo Final:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox19" 
                        runat="server" Clave="UltimoFinal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
            <td style="border: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; width: 603px; vertical-align: middle;" 
                    class="style2" colspan="3">
                    Observaciones:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Observaciones" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="95%" Clave="UltimoFinal" TipoTextBox="MultiLine" 
                        ValueStyle-Height="80px" />
                </td>
            </tr>
<tr>
                <th style="border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    colspan="3" align="center">
                    Tipificaciones</th>
            </tr>
            
            <tr>
            <td class="campoti" style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" colspan = 3>
                    Suptipificacion:<asp:DropDownList ID="Subtipificacion" runat="server"                         
                        AutoPostBack="True" Width="100%">
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="Subtipificacion" 
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
                        onclick="FinalizarGestion" 
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
            LoadSubtipificacion()
        End If
    End Sub

    Private Sub LoadSubtipificacion()
        Dim sSql As String = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = " + Convert.ToString(Gestion.Campanya.IdCampanya) + " AND (IDFINAL BETWEEN 200 AND 299);"
    
        SqlDataSource1.SelectCommand = sSql
        SqlDataSource1.DataBind()
        Subtipificacion.DataSource = SqlDataSource1
        Subtipificacion.DataTextField = "DESCRIPCION"
        Subtipificacion.DataValueField = "IDFINAL"
        Subtipificacion.DataBind()
        Subtipificacion.Items.Insert(0, New ListItem(String.Empty, "SELECCIONE"))
    End Sub


    Protected Sub FinalizarGestion(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim selectedValue = Subtipificacion.SelectedValue
        Gestion.FinalGestion(selectedValue)
    End Sub
</script>
