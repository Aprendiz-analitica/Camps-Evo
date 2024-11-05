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
                 

    <table class="formulario" style="width:800px">        
        <thead>
            <tr>
                <th style="text-align:center">
                    Solicitud de informacion
                </th>
            </tr>
        </thead>
        <tbody>  
            <tr>
                <td class="tdSample" align="center" style="padding:15px;">     
                    <span style="font-weight:bolder">Ayudenos a mejorar:</span>
                    Por favor, dedique un momento a completar esta pequeña encuesta, la informacion que nos proporcione sera utilizada para mejorar nuestro servicio. Sus respuestas seran tratadas de forma confidencial y no seran utilizadas para ningun proposito distinto a la investigacion llevada a cabo.
                </td>
            </tr>
                      
            <tr>
                <td class="tdSample">     
                    <evo:CustomerData_Label ID="CustomerData_Label1" runat="server" 
                        AutoLabel="False" CssClass="form-group" CustomerColumn="OriginalId" 
                        LabelStyle-Font-Bold="True" 
                        TextLabel="Codigo de identificacion del cliente: " />
                </td>
            </tr>
            
            <tr>
                <td class="tdSample">     
                    
                    <evo:CustomerData_DropDownList ID="CustomerData_DropDownList1" runat="server" 
                        AutoLabel="False" Key="Satisfaccion general" 
                        LabelStyle-Font-Bold="True" 
                        TextLabel="¿Cual es su grado de satisfaccion general?">
                        <asp:ListItem Selected="True"></asp:ListItem>
                        <asp:ListItem Value="Completamente satisfecho">Completamente satisfecho</asp:ListItem>
                        <asp:ListItem Value="Satisfecho">Satisfecho</asp:ListItem>
                        <asp:ListItem Value="Insatisfecho">Insatisfecho</asp:ListItem>
                        <asp:ListItem>Completamente insatisfecho</asp:ListItem>
                    </evo:CustomerData_DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="CustomerData_DropDownList1" 
                        
                        ErrorMessage="Debe seleccionar un valor para la cuestion '¿Cual es su grado de satisfaccion general?'.">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="tdSample">     
                    
                    <evo:CustomerData_DropDownList ID="CustomerData_DropDownList2" runat="server" 
                        AutoLabel="False" Key="Comparativa servicio" 
                        LabelStyle-Font-Bold="True" 
                        TextLabel="En comparacion con otras alternativas, nuestro servicio es ... ">
                        <asp:ListItem Selected="True"></asp:ListItem>
                        <asp:ListItem Value="Mucho mejor">Mucho mejor</asp:ListItem>
                        <asp:ListItem Value="Algo mejor">Algo mejor</asp:ListItem>
                        <asp:ListItem Value="Mas o menos igual">Mas o menos igual</asp:ListItem>
                        <asp:ListItem>Algo peor</asp:ListItem>
                        <asp:ListItem>Mucho peor</asp:ListItem>
                        <asp:ListItem>No lo se</asp:ListItem>
                    </evo:CustomerData_DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="CustomerData_DropDownList2" 
                        
                        
                        ErrorMessage="Debe seleccionar un valor para la cuestion 'En comparacion con otras alternativas, nuestro servicio es ... '.">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="tdSample">     
                    <evo:CustomerData_DropDownList ID="CustomerData_DropDownList4" runat="server" 
                        AutoLabel="False" Key="¿Nos ha recomendado?" 
                        LabelStyle-Font-Bold="True" 
                        TextLabel="¿Nos ha recomendado usted a otras personas? ">
                        <asp:ListItem Selected="True"></asp:ListItem>
                        <asp:ListItem Value="Si">Si</asp:ListItem>
                        <asp:ListItem Value="No">No</asp:ListItem>
                    </evo:CustomerData_DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="CustomerData_DropDownList4" 
                        
                        
                        ErrorMessage="Debe seleccionar un valor para la cuestion '¿Nos ha recomendado usted a otras personas?'.">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="tdSample">     
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox1" runat="server" 
                        AutoLabel="False" CssClass="form-group" Key="Como nos conocio" 
                        TextLabel="¿Puede indicarnos como nos conocio? " />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="CustomerData_TextBox1" 
                        
                        ErrorMessage="Debe seleccionar un valor para la cuestion '¿Puede indicarnos como nos conocio? '.">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="tdSample">     
                    <evo:CustomerData_DatePicker ID="CustomerData_DatePicker1" runat="server" 
                        AutoLabel="False" Key="Fecha de conocimiento" 
                        TextLabel="¿Puede indicarnos la fecha en que nos conocio?" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="CustomerData_DatePicker1" 
                        
                        ErrorMessage="La cuestion '¿Puede indicarnos la fecha en que nos conocio?' no tiene un formato correcto." 
                        ValidationExpression="^(((0[1-9]|[12]\d|3[01])\/(0[13578]|1[02])\/((19|[2-9]\d)\d{2}))|((0[1-9]|[12]\d|30)\/(0[13456789]|1[012])\/((19|[2-9]\d)\d{2}))|((0[1-9]|1\d|2[0-8])\/02\/((19|[2-9]\d)\d{2}))|(29\/02\/((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$">(*)</asp:RegularExpressionValidator>
                </td>
            </tr>  

            <tr>
                <td class="tdSample"> 
                    <evo:CustomerData_TextBox ID="CustomerData_TextBox2" runat="server" 
                        AutoLabel="False" CssClass="form-group" Key="Informacion adicional" 
                        TextLabel="¿Hay alguna informacion adicional que no le hayamos preguntado en esta encuesta y que quiera comunicarnos? Si es asi, por favor, diganos de que se trata:" />    
                    
                </td>
            </tr>
            
            <tr>
                <td class="tdSample" align="center" style="padding:15px;">     
                    La encuesta ha concluido.<br />
                    Muchas gracias por su colaboracion.
                </td>
            </tr>
                             
            <tr>
                <td style="text-align:center; height:40px;">
                    <evo:SaveCustomerData_Button ID="SaveCustomerData_Button1" runat="server" 
                        CssClass="btn" Destination="~/Finales.aspx" Text="Guardar y continuar" />
                </td>
            </tr>                    
        </tbody>
    </table>                     
    <br />
                       
 </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub
    
</script>
