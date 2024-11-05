<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style5
        {
            height: 50px;
        }
        .style7
        {
            height: 64px;
        }
        .style9
        {
            height: 74px;
        }
        .style10
        {
            height: 151px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

                    
    
    <br />  
                  
    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="text-align:center; background-color: #F66D02; font-size: 20px; color: #FFFFFF; font-weight: bold; font-family: sans-serif;" 
                    align="center" class="style9">
                    USABU FINALES</th>
            </tr>
            <tr>
                <th style="text-align:center" class="style10">
                    <evo:GoTo_Button ID="GoTo_Button1" runat="server" BackColor="#474747" 
                        CssClass="btn" Destination="~/Finales2.aspx" Font-Bold="True" Height="40px" 
                        Text="FINANCIERO" Width="180px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:GoTo_Button ID="GoTo_Button2" runat="server" BackColor="#474747" 
                        CssClass="btn" Destination="~/Finales3.aspx" Font-Bold="True" Height="40px" 
                        Text="REGISTRO ACADEMICO" Width="180px" />
                </th>
            </tr>
            <tr>
                <th style="text-align:center" class="style7">
                    <evo:GoTo_Button ID="GoTo_Button3" runat="server" BackColor="#474747" 
                        CssClass="btn" Font-Bold="True" Height="40px" Text="FACULTADES" Width="180px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <evo:GoTo_Button ID="GoTo_Button4" runat="server" BackColor="#474747" 
                        CssClass="btn" Font-Bold="True" Height="40px" Text="ESTUDIANTES NUEVOS" 
                        Width="180px" />
                </th>
            </tr>
            <tr>
                <th style="text-align:center" class="style5">
                    <evo:GoTo_Button ID="GoTo_Button5" runat="server" BackColor="#474747" 
                        CssClass="btn" Font-Bold="True" Height="40px" Text="OTROS" Width="180px" />
                </th>
            </tr>
        </thead>
        <tbody>            
        </tbody>
    </table>            

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
    
    Protected Sub Final_RadioButtonList1_PreClick(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()
    End Sub
    
</script>
