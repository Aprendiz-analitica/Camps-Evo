<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <script type="text/javascript">

    </script>

    <style type="text/css">


    </style>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <table class="formulario" style="width:100%;">
        <thead>
            <tr>
                <th colspan="2" 
                    
                    
                    style="padding: 5px; border: 1px solid #9dc541; text-align:center; font-size: 16px; color: #FFFFFF; font-weight: bold; background-color: #9dc541; width: 633px; height: 29px;" 
                    align="center">
                    Datos Personales</th>
            </tr>
        </thead>
        <tr>
            <td align="center" style="padding: 5px; width: 50%; font-size: 14px;">
                Nombre Completo:<br />
                <asp:TextBox ID="TextBox1" runat="server"
                    ForeColor="#0C5E16" Font-Bold="True" Width="90%" Enabled="False" ></asp:TextBox>
                <br />
            </td>
            <td style="padding: 5px; width: 50%; font-size: 14px;">
                Número de Documento:<br />
                <asp:TextBox ID="TextBox2" runat="server" ForeColor="#0C5E16" Font-Bold="True" 
                    Width="90%" Enabled="False"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="padding: 5px; width: 50%; font-size: 14px;">
                Fecha de Nacimiento:<br />
                <asp:TextBox ID="TextBox3" runat="server" ForeColor="#0C5E16" Font-Bold="True" 
                    Width="90%" Enabled="False"></asp:TextBox>
                <br />
            </td>
            <td style="padding: 5px; width: 50%; font-size: 14px;">
                Fecha de expedición de Documento:<br />
                <asp:TextBox ID="TextBox4" runat="server" ForeColor="#0C5E16" Font-Bold="True" 
                    Width="90%" Enabled="False"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="padding: 5px; width: 50%; font-size: 14px;">
                Habeas Data:<br />
                <asp:TextBox ID="TextBox5" runat="server" ForeColor="#0C5E16" Font-Bold="True" 
                    Width="90%" Enabled="False"></asp:TextBox>
                <br />
            </td>
            <td style="padding: 5px; width: 50%; font-size: 14px;">
                Calidad Afiliado:<br />
                <asp:TextBox ID="TextBox6" runat="server" ForeColor="#0C5E16" Font-Bold="True" 
                    Width="90%" Enabled="False"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td style="padding: 5px; width: 50%; font-size: 14px;">
                Estado Afiliado:<br />
                <asp:TextBox ID="TextBox7" runat="server" ForeColor="#0C5E16" Font-Bold="True" 
                    Width="90%" Enabled="False"></asp:TextBox>
                <br />
            </td>
            <td style="padding: 5px; width: 50%; font-size: 14px;">
                Acepto Habeas Data:<br />
                <asp:TextBox ID="TextBox8" runat="server" ForeColor="#0C5E16" Font-Bold="True" 
                    Width="90%" Enabled="False"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td colspan="2" style="padding: 5px; text-align: center">

                <asp:Button ID="Button1" runat="server" Height="40px" onclick="Button1_Click" 
                    Text="Siguiente" Width="150px" />

            </td>
        </tr>
        </table>
                        
    
                  
    
                    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim nombre As String = ""
        Dim documento As String = ""
        Dim fecha_nac As String = ""
        Dim fecha_exp As String = ""
        Dim habeas As String = ""
        Dim calidad As String = ""
        Dim estado As String = ""
        Dim aviso As String = ""
        Gestion.Transaccion.KeyValueCollection.GetValue("nombre", nombre)
        TextBox1.Text = nombre
        Gestion.Transaccion.KeyValueCollection.GetValue("documento", documento)
        TextBox2.Text = documento
        Gestion.Transaccion.KeyValueCollection.GetValue("fecha_nac", fecha_nac)
        TextBox3.Text = fecha_nac        
        Gestion.Transaccion.KeyValueCollection.GetValue("fecha_exp", fecha_exp)
        TextBox4.Text = fecha_exp
        Gestion.Transaccion.KeyValueCollection.GetValue("habeas", habeas)
        TextBox5.Text = habeas
        Gestion.Transaccion.KeyValueCollection.GetValue("calidad", calidad)
        TextBox6.Text = calidad
        Gestion.Transaccion.KeyValueCollection.GetValue("estado", estado)
        TextBox7.Text = estado
        Gestion.Transaccion.KeyValueCollection.GetValue("aviso", aviso)
        TextBox8.Text = aviso
             
    End Sub
    
    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("~/Finales.aspx")
    End Sub
</script>
