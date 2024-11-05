<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server"></asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h3 class="title" align="center">Finalizar / Replanificar llamada</h3>
    <br />
                    
    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="text-align:center">
                    Observaciones
                </th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td height="90">     
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox1" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="Remarks" 
                        TextBoxType="MultiLine" />                           
                </td>
            </tr>
        </tbody>
    </table>
    <br />  
                  
    <table class="formulario" style="width:800px;">        
        <thead>
            <tr>
                <th style="text-align:center">
                    Finales
                </th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="text-align:center">                     
                    <evo:CallDisposition_RadioButtonList ID="CallDisposition_RadioButtonList1" 
                        runat="server" CallDispositionCodes="1,5,9,10,15,19,100-150" CellSpacing="15" 
                         onpreclick="Final_RadioButtonList1_PreClick" 
                        RepeatColumns="3" Text="Finalizar transacción" 
                        onbeforeclick="CallDisposition_RadioButtonList1_BeforeClick" />                   
                </td>                
            </tr>
            <tr>
                <td>
                    &nbsp
                </td>
            </tr>
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
    
    Protected Sub CallDisposition_RadioButtonList1_BeforeClick(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>
