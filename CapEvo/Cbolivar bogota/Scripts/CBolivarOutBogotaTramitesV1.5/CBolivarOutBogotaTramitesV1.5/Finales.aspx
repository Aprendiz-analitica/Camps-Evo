<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <script type="text/javascript" src="Resources/js/JQuery.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#tdasignarcita").hide();
                $("#tr1").hide();
                $("#tr2").hide();
                $("#tr3").hide();
                $("#tr4").hide();
                $("#tr5").hide();
                $("#tr6").hide();
                $("#tr7").hide();
                $("#tr8").hide();
                $("#tr9").hide();
                $("#tr10").hide();
                $("#tr11").hide();
                $("#tr12").hide();
                $("#th1").hide();
                $("#th2").hide();
                $("#th3").hide();
                $("#th4").hide();
                $("#th5").hide();
                $("#th6").hide();
                $("#th7").hide();
                $("#th8").hide();
                $("#th9").hide();
                $("#th10").hide();
                $("#th11").hide();
                $("#th12").hide();
                $("#trtitulo").hide();
            });
            function abriragenda() {
                var screenWidth = window.screen.width;
                var screenHeight = window.screen.height;

                // URL del sitio a abrir
                var url = "https://mired01.asertis.com.co/CbolivarBgtaAgenda/AsignarCita.jsp?documento=" + document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value;

                // Parámetros para la ventana emergente
                var windowFeatures = "width=" + screenWidth + ",height=" + screenHeight + ",toolbar=0,location=0,directories=0,status=1,menubar=0,scrollbars=1,resizable=1";

                // Abrir la ventana emergente
                var ventana = window.open(url, "vTiger", windowFeatures);

                // Focalizar la ventana si se abrió correctamente
                if (ventana) {
                    ventana.focus();
                } else {
                    // Manejar el caso donde el navegador bloquea la apertura de la ventana emergente
                    alert("Tu navegador ha bloqueado la apertura de la ventana emergente. Por favor, permite las ventanas emergentes para este sitio.");
                }
            }

            function Button1_onclick() {
                $("#th1").show();
                $("#tr1").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button2_onclick() {
                $("#th2").show();
                $("#tr2").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button3_onclick() {
                $("#th3").show();
                $("#tr3").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button4_onclick() {
                $("#th4").show();
                $("#tr4").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button5_onclick() {
                $("#tdasignarcita").show();
                $("#th5").show();
                $("#tr5").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button6_onclick() {
                $("#th6").show();
                $("#tr6").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button7_onclick() {
                $("#th7").show();
                $("#tr7").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button8_onclick() {
                $("#th8").show();
                $("#tr8").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button9_onclick() {
                $("#th9").show();
                $("#tr9").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button10_onclick() {
                $("#th10").show();
                $("#tr10").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button11_onclick() {
                $("#th11").show();
                $("#tr11").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }
            function Button12_onclick() {
                $("#th12").show();
                $("#tr12").show();
                $("#thtipificaciones").hide();
                $("#trbtn1").hide();
                $("#trbtn2").hide();
                $("#trbtn3").hide();
                $("#trbtn4").hide();
            }



    </script>
    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:100%;">        
        <thead>
            <tr>
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" colspan="3" align="center">
                    Cliente</th>
            </tr>
                        <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                </td>
                <td 
                    
                    style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px; width: 402px;" 
                    class="style1" colspan="2">
                    Nombre Completo:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Telefono1:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Telefono2:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox10" runat="server" 
                        AtributoCliente="Telefono2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="stylProyecto:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Clave="Proyecto" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    Agrupacion:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox9" runat="server" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Clave="Agrupacion" Enabled="False" />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    &nbsp;</td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    class="style1">
                    &nbsp;</td>
            </tr>
        </thead>
<tbody>
            <tr  id="tdasignarcita">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px; text-align: center;" 
                    align="center" colspan="4">
                    <input id="Button13" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Asignar Cita" onclick="abriragenda()"  /></td>
            </tr>
           <tr id="thtipificaciones">
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold; " 
                    align="center" colspan="3">
                    Tipificaciones            Tipificaciones</th>
            </tr>
            <tr id="trbtn1">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px; ">
                    <input id="Button1" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Promesas" onclick="Button1_onclick()"  /></td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <input id="Button2" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Subsidios" onclick="Button2_onclick()" /></td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <input id="Button3" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Créditos" onclick="Button3_onclick()" /></td>
            </tr>
            <tr id="trbtn2">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <input id="Button4" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Escrituración" onclick="Button4_onclick()" /></td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <input id="Button5" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Entregas" onclick="Button5_onclick()" /></td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <input id="Button6" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Garantías" onclick="Button6_onclick()" /></td>
            </tr>
            <tr id="trbtn3">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <input id="Button7" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Renegociación" onclick="Button7_onclick()" /></td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <input id="Button8" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Riesgo" onclick="Button8_onclick()" /></td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <input id="Button9" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Recaudo" onclick="Button9_onclick()" /></td>
            </tr>
            <tr id="trbtn4">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <input id="Button10" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Pqr" onclick="Button10_onclick()" /></td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <input id="Button11" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Legalizaciones" onclick="Button11_onclick()" /></td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <input id="Button12" 
                        style="width: 160px; height: 50px; background-image: none; background-color: #2B8B4B;" 
                        type="button" value="Órdenes y trazabilidad" 
                        onclick="Button12_onclick()" /></td>
            </tr>
            <tr id="th1">
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold; " 
                    align="center" colspan="4">
                    Promesas</th>
            </tr>
            <tr id="tr1">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button3" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="103" Text="Llamada Efectiva" 
                        Width="100%"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <evo:Final_Button ID="Final_Button4" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="104" Text="Caso Especial" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button5" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="105" Text="Volver a Llamar" 
                        Width="160px"   />
                </td>
            </tr>
            <tr id="th2">
                <th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    align="center" colspan="3">
                    Subsidios</th>
            </tr>
            <tr id="tr2">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button6" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="106" Text="Llamada Efectiva" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <evo:Final_Button ID="Final_Button8" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="107" Text="Caso Especial" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button10" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="108" Text="Volver a Llamar" 
                        Width="160px"   />
                </td>
            </tr>
            <tr id="th3">
                <th style="border: 1px solid #2b8b4b; text-align:center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold; " 
                    align="center" colspan="4">
                    Créditos</th>
            </tr>
            <tr id="tr3">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button7" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="109" Text="Llamada Efectiva" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <evo:Final_Button ID="Final_Button9" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="110" Text="Caso Especial" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button11" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="111" Text="Volver a Llamar" 
                        Width="160px"   />
                </td>
            </tr>
            <tr id="th4">
                <th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    align="center" colspan="4">
                    Escrituración</th>
            </tr>
            <tr id="tr4">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button12" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="112" Text="Llamada Efectiva" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <evo:Final_Button ID="Final_Button13" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="113" Text="Caso Especial" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button14" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="114" Text="Volver a Llamar" 
                        Width="160px"   />
                </td>
            </tr>
            <tr id="th5">
                <th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    align="center" colspan="4">
                    Entregas</th>
            </tr>
            <tr id="tr5">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button15" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="115" Text="Llamada Efectiva" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <evo:Final_Button ID="Final_Button16" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="116" Text="Caso Especial" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button17" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="117" Text="Volver a Llamar" 
                        Width="160px"   />
                </td>
            </tr>
            <tr id="th6">
                <th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    align="center" colspan="4">
                    Garantías</th>
            </tr>
            <tr id="tr6">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button18" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="118" Text="Llamada Efectiva" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <evo:Final_Button ID="Final_Button19" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="119" Text="Caso Especial" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button20" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="120" Text="Volver a Llamar" 
                        Width="160px"   />
                </td>
            </tr>
            <tr id="th7">
                <th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
                    align="center" colspan="4">
                    Renegociación</th>
            </tr>
            <tr id="tr7">
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button21" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="121" Text="Llamada Efectiva" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
                    colspan="1">
                    <evo:Final_Button ID="Final_Button22" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="122" Text="Caso Especial" 
                        Width="160px"   />
                </td>
                <td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
                    <evo:Final_Button ID="Final_Button23" runat="server" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        ForeColor="White" Height="50px" idFinal="123" Text="Volver a Llamar" 
                        Width="160px"   />
                </td>
            </tr>
            <tr id="th8">
	<th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
		align="center" colspan="4">
		Riesgo</th>
</tr>
<tr id="tr8">
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button1" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="124" Text="Llamada Efectiva" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
		colspan="1">
		<evo:Final_Button ID="Final_Button2" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="125" Text="Caso Especial" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button24" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="126" Text="Volver a Llamar" 
			Width="160px"   />
	</td>
</tr>
<tr id="th9">
	<th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
		align="center" colspan="4">
		Recaudo</th>
</tr>
<tr id="tr9">
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button25" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="127" Text="Llamada Efectiva" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
		colspan="1">
		<evo:Final_Button ID="Final_Button26" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="128" Text="Caso Especial" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button27" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="129" Text="Volver a Llamar" 
			Width="160px"   />
	</td>
</tr>
<tr id="th10">
	<th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
		align="center" colspan="4">
		Pqr</th>
</tr>
<tr id="tr10">
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button28" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="130" Text="Llamada Efectiva" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
		colspan="1">
		<evo:Final_Button ID="Final_Button29" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="131" Text="Caso Especial" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button30" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="132" Text="Volver a Llamar" 
			Width="160px"   />
	</td>
</tr>
<tr id="th11">
	<th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
		align="center" colspan="4">
		Legalizaciones </th>
</tr>
<tr id="tr11">
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button31" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="133" Text="Llamada Efectiva" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
		colspan="1">
		<evo:Final_Button ID="Final_Button32" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="134" Text="Caso Especial" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button33" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="135" Text="Volver a Llamar" 
			Width="160px"   />
	</td>
</tr>
<tr id="th12">
	<th style="border: 1px solid #2b8b4b; text-align: center; background-color: #2b8b4b; font-size: 16px; color: #FFFFFF; font-weight: bold;" 
		align="center" colspan="4">
		Órdenes y trazabilidad</th>
</tr>
<tr id="tr12">
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button34" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="136" Text="Llamada Efectiva" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;" 
		colspan="1">
		<evo:Final_Button ID="Final_Button35" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="137" Text="Caso Especial" 
			Width="160px"   />
	</td>
	<td style="border: 1px solid #2b8b4b; color: #2b8b4b; font-weight: bold; font-size: 14px;">
		<evo:Final_Button ID="Final_Button36" runat="server" BackColor="#2B8B4B" 
			BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
			ForeColor="White" Height="50px" idFinal="138" Text="Volver a Llamar" 
			Width="160px"   />
	</td>
</tr>

 
            
        </tbody>
    </table>

    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
    
</script>
