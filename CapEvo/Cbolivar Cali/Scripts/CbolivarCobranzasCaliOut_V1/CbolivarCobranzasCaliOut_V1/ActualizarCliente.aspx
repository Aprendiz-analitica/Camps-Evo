<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 201px;
        }
        .style3
        {
            width: 402px;
            height: 25px;
        }
                
         table {
           width: 100%;
         }
    
       .tdRe 
       {
         border: 1px solid #ed7203;
         color: #249E6B;
         font-size: 20px;
         padding:5px;
         font-weight: bold;
       }

    </style>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value = "";
            var valorNumDoc = document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value;
            function comienzaConT(cadena) {
                return cadena.charAt(0).toLowerCase() === 't';
            }
            if (comienzaConT(valorNumDoc) == true) {
                document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value = "";
            }
            
        });
    </script>
    <table class="formulario" style="width:100%;
     font-size:16px">        
        <thead>
            <tr>
                <th style="border: 1px solid #249E6B ; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold;" colspan="3" align="center">
                    Datos Cliente</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td class="tdRe" style="font-size:14px">
                    Nit:<br/>
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" />
                </td>
                <td colspan="2" class="style3 tdRe" style="font-size:14px">
                    Cliente:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
            </tr>
            <tr>
                <td class="style1 tdRe" style="font-size:14px">
                    Teléfono 1:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox10" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="NIT2" />
                </td>
                <td  class="tdRe" style="font-size:14px">
                    Teléfono 2:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox11" runat="server" 
                        AtributoCliente="Telefono2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="Telefono2" />
                </td>
                <td class="tdRe" style="font-size:14px">
                    Correo:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox18" 
                        runat="server" Clave="Correo" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" EtiquetaAuto="False" />
                </td>
            </tr>
            <tr>
                <td class="tdRe" style="font-size:14px">
                    Proyecto:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox13" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Clave="Proyecto" />
                </td>
                <td class="tdRe " style="font-size:14px">
                    Agrupación:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox14" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" 
                        Clave="Agrupacion" />
                </td>
                <td class="tdRe" style="font-size:14px">
                    Max Mora Edad:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox16" 
                        runat="server" Clave="MaxMoraEdad" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                </td>
            </tr>
            <tr>
                <td colspan="3" class="style3 tdRe" style="font-size:14px">
                    Ultimo Final:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox19" 
                        runat="server" Clave="UltimoFinal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
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
                <td colspan="3" class="style3 tdRe" style="width:100%; text-align:center">
                    <evo:GuardarDatosCliente_Button ID="GuardarDatosCliente_Button1" runat="server" 
                        BackColor="#249E6B " BorderColor="#249E6B " 
                        Destino="~/Finales.aspx" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" Text="Guardar Datos" Width="160px" 
                        onpreclick="GuardarDatosCliente_Button1_PreClick" />
                </td>
            </tr>
        </tbody>
    </table>

    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Gestion.Cliente.IdSujeto = 0 Then
            Response.Redirect("~/Cliente_Busqueda.aspx")
        End If
    End Sub
    
    Protected Sub GuardarDatosCliente_Button1_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>
