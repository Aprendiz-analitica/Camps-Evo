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
                <td class="campoti">
                    <asp:Button ID="Btn1" runat="server" Font-Size="11px" onclick="Otros" 
                        Text="OTROS" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn2" runat="server" Font-Size="11px" onclick="Cita_Reasignada" 
                        Text="CITA REASIGNADA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn3" runat="server" Font-Size="11px" onclick="Oftalmologia" 
                        Text="OFTALMOLOGIA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="Btn4" runat="server" Font-Size="11px" onclick="Fonoaudiologia" 
                        Text="FONOAUDIOLOGIA" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" />
                </td>
                <td class="style3">
                    <asp:Button ID="Btn5" runat="server" Font-Size="11px" onclick="Optometria" 
                        Text="OPTOMETRIA" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" />
                </td>
                <td class="style3" >
                    <asp:Button ID="Btn6" runat="server" Font-Size="11px" onclick="Baja_Vision" 
                        Text="BAJA VISION" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="campoti" >
                    <asp:Button ID="Btn7" runat="server" Font-Size="11px" onclick="Ortoptica" 
                        Text="ORTOPTICA" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn8" runat="server" Font-Size="11px" onclick="Otorrino" 
                        Text="OTORRINO" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn9" runat="server" Font-Size="11px" onclick="Psicologia" 
                        Text="PSICOLOGIA" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="campoti" >
                    <asp:Button ID="Btn10" runat="server" Font-Size="11px" onclick="Campo_Visual" 
                        Text="CAMPO VISUAL" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn11" runat="server" Font-Size="11px" onclick="Terapia_Ocupacional" 
                        Text="TERAPIA OCUPACIONAL" Height="42px" Width="200px" 
                        Style="white-space:normal" BackColor="#249E6B" BorderColor="#249E6B" 
                        Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn12" runat="server" Font-Size="11px" onclick="Transferencia_EPS" 
                        Text="TRANSFERENCIA EPS" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="campoti" >
                    <asp:Button ID="Btn13" runat="server" Font-Size="11px" onclick="Biometria" 
                        Text="BIOMETRIA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn14" runat="server" Font-Size="11px" onclick="Angiografia" 
                        Text="ANGIOGRAFIA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn15" runat="server" Font-Size="11px" onclick="Ecografia" 
                        Text="ECOGRAFIA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="campoti" >
                    <asp:Button ID="Btn16" runat="server" Font-Size="11px" onclick="Estrodoscopia" 
                        Text="ESTRODOSCOPIA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn17" runat="server" Font-Size="11px" onclick="Agenda_Potencial_Evocado" 
                        Text="AGENDA POTENCIAL EVOCADO PEV-ELEC" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn18" runat="server" Font-Size="11px" onclick="Tomografia" 
                        Text="TOMOGRAFIA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="campoti" >
                    <asp:Button ID="Btn19" runat="server" Font-Size="11px" onclick="Protesis_Ocular" 
                        Text="PROTESIS OCULAR" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn20" runat="server" Font-Size="11px" onclick="Audiologia" 
                        Text="AUDIOLOGIA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn21" runat="server" Font-Size="11px" onclick="Audifonos" 
                        Text="AUDIFONOS" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="campoti" >
                    <asp:Button ID="Btn23" runat="server" Font-Size="11px" onclick="Nasolarringoscopia" 
                        Text="NASOLARRINGOSCOPIA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn24" runat="server" Font-Size="11px" onclick="Electronistografia" 
                        Text="ELECTRONISTOGRAFIA VHIT - ENG" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn25" runat="server" Font-Size="11px" onclick="Tapones" 
                        Text="TAPONES" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
            </tr>
            <tr>
                <td class="campoti" >
                    <asp:Button ID="Btn26" runat="server" Font-Size="11px" onclick="Paquete_Refractiva" 
                        Text="PAQUETE REFRACTIVA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    <asp:Button ID="Btn27" runat="server" Font-Size="11px" onclick="Paquete_Facorefractiva" 
                        Text="PAQUETE FACOREFRACTIVA" Height="42px" Width="200px" Style="white-space:normal" 
                        BackColor="#249E6B" BorderColor="#249E6B" Font-Bold="True" />
                </td>
                <td class="campoti">
                    &nbsp;</td>
            </tr>
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Cita_Reasignada(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Cita_Reasignada.aspx")
    End Sub

    Protected Sub Oftalmologia(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Oftalmologia.aspx")
    End Sub

    Protected Sub Transferencia_EPS(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Transferencia_EPS.aspx")
    End Sub

    Protected Sub Optometria(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Optometria.aspx")
    End Sub

    Protected Sub Otorrino(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Otorrino.aspx")
    End Sub

    Protected Sub Otros(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Otros.aspx")
    End Sub

    Protected Sub Baja_Vision(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Baja_Vision.aspx")
    End Sub

    Protected Sub Audifonos(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Audifonos.aspx")
    End Sub

    Protected Sub Fonoaudiologia(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Fonoaudiologia.aspx")
    End Sub

    Protected Sub Ortoptica(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(125)
    End Sub

    Protected Sub Psicologia(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Psicologia.aspx")
    End Sub

    Protected Sub Campo_Visual(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(128)
    End Sub

    Protected Sub Terapia_Ocupacional(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(217)
    End Sub

    Protected Sub Biometria(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Biometria.aspx")
    End Sub

    Protected Sub Angiografia(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Angiografia.aspx")
    End Sub

    Protected Sub Ecografia(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(129)
    End Sub

    Protected Sub Estrodoscopia(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(239)
    End Sub

    Protected Sub Agenda_Potencial_Evocado(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Agenda_Potencial_Evocado.aspx")
    End Sub

    Protected Sub Tomografia(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Tomografia.aspx")
    End Sub

    Protected Sub Protesis_Ocular(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(225)
    End Sub

    Protected Sub Audiologia(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Audiologia.aspx")
    End Sub

    Protected Sub Potenciales_PEA_ECOG(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Potenciales_PEA_ECOG.aspx")
    End Sub

    Protected Sub Nasolarringoscopia(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(240)
    End Sub

    Protected Sub Electronistografia(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Electronistografia.aspx")
    End Sub

    Protected Sub Tapones(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Tapones.aspx")
    End Sub

    Protected Sub Paquete_Refractiva(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(264)
    End Sub

    Protected Sub Paquete_Facorefractiva(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(265)
     
    End Sub
</script>
