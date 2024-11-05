<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
        .style2
        {
            height: 25px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#ctl00_MainContent_Final_RadioButtonList2_ctl00").css("width", "100%");
        });
    </script>

                 
    <table class="formulario" style="width:100%">        
        <thead>
            <tr>
                <th style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px solid #ed7203; border-bottom: 1px hidden #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; font-weight: bold; " 
                    align="center" class="style1">
                    FINALES</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
            <td class="style2" 
                    
                    
                    style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px hidden #ed7203; border-bottom: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle;" 
                    colspan="3">
                    Tipificacion out:<br />
                    <asp:DropDownList ID="Grupo" runat="server" 
                        onselectedindexchanged="Grupo_SelectedIndexChanged" Width="100%" 
                        AutoPostBack="True">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="2">CONTACTO EFECTIVO</asp:ListItem>
                        <asp:ListItem Value="3">BUZON DE MENSAJES</asp:ListItem>
                        <asp:ListItem Value="4">EQUIVOCADO</asp:ListItem>
                        <asp:ListItem Value="5">FUERA DE SERVICIO</asp:ListItem> 
                        <asp:ListItem Value="6">NO CONTACTO</asp:ListItem>                                            
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="Grupo" 
                        ErrorMessage="Obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
             <td class="style2" 
    id="SubtipificacionTD" runat="server" 
    
                    style="border: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle;">
                 Tipologia:<asp:DropDownList ID="Subtipificacion" runat="server"                         
        AutoPostBack="True" Width="100%" Visible="False" 
        onselectedindexchanged="Subtipificacion_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="Subtipificacion" 
        ErrorMessage="Obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
</td>

            </tr>
            <tr>
             <td class="style2" 
    id="Subtipificacion2TD" runat="server" 
    
                    
                    style="border: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle;">
                    Subtipificacion:<asp:DropDownList ID="Subtipificacion2" runat="server"                         
                        AutoPostBack="True" Width="100%" Visible="False">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="Subtipificacion2" 
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
            ' Inicializar el color solo en el primer carga, no en postback
            If Not Subtipificacion.Visible Then
                SubtipificacionTD.Style.Add("color", "transparent")
            End If
            If Not Subtipificacion2.Visible Then
                Subtipificacion2TD.Style.Add("color", "transparent")
            End If
        End If
    End Sub




    Protected Sub Grupo_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim NumeroSeleccionado = Grupo.SelectedValue
        
        If String.IsNullOrEmpty(NumeroSeleccionado) Then
            Subtipificacion.Visible = False
            SubtipificacionTD.Style.Add("color", "transparent") ' Ocultar texto          
            Subtipificacion2TD.Style.Add("color", "transparent") ' Ocultar texto   
        Else
            Subtipificacion.Visible = True
            SubtipificacionTD.Style.Add("color", "#249E6B") ' Ocultar texto
        End If
        
        
        Subtipificacion2.Visible = False
        Subtipificacion.Items.Clear()
        Subtipificacion2.Items.Clear()
        Dim sSql As String = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = " + Convert.ToString(Gestion.Campanya.IdCampanya) + " AND (IDFINAL BETWEEN " + NumeroSeleccionado + "00 AND " + NumeroSeleccionado + "20);"
    
        SqlDataSource1.SelectCommand = sSql
        SqlDataSource1.DataBind()
        Subtipificacion.DataSource = SqlDataSource1
        Subtipificacion.DataTextField = "DESCRIPCION"
        Subtipificacion.DataValueField = "IDFINAL"
        Subtipificacion.DataBind()
        
        Subtipificacion.Items.Insert(0, New ListItem(String.Empty, String.Empty))
        Subtipificacion.Items.Add(New ListItem("EN DEFINICION", "22"))
        Subtipificacion.Items.Add(New ListItem("COMPROMISO DE PAGO", "23"))
        Subtipificacion.Items.Add(New ListItem("DESISTIMIENTO VOLUNTARIO", "24"))
        Subtipificacion.Items.Add(New ListItem("PQRS", "25"))
        Subtipificacion.Items.Add(New ListItem("PENDIENTE PROMESA - CS Y AH", "26"))
        Subtipificacion.Items.Add(New ListItem("CASOS ESPECIALES", "27"))
                
    End Sub
    
    
    Protected Sub FinalizarGestion(ByVal sender As Object, ByVal e As System.EventArgs)
        ' Traer el final de ambos dropList
        Dim Opcion = Grupo.SelectedValue
        
        Dim selectedValueTipificacion = Subtipificacion.SelectedValue
        Dim selectedValueTipificacion2 = Subtipificacion2.SelectedValue              

        
        If Subtipificacion2.SelectedValue <> "" Then
            Gestion.FinalGestion(selectedValueTipificacion2)
        ElseIf Subtipificacion.SelectedValue <> "" Then
            Gestion.FinalGestion(selectedValueTipificacion)
        End If
    End Sub


    Protected Sub Subtipificacion_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim NumeroSeleccionado = Grupo.SelectedValue()
        Dim NumeroSeleccionadoSupti = Subtipificacion.SelectedValue
        
        If String.IsNullOrEmpty(NumeroSeleccionadoSupti) Then
            Subtipificacion2.Visible = False
            Subtipificacion2TD.Style.Add("color", "transparent") ' Ocultar texto   
        End If
        
        Dim sSql As String = "SELECT IDFINAL, DESCRIPCION FROM FINALES WHERE IDCAMPANYA = " + Convert.ToString(Gestion.Campanya.IdCampanya)
        Dim agregarDesdeDB As Boolean = False
        
        If NumeroSeleccionado = 2 Then
            Subtipificacion2.Visible = True
            Subtipificacion2TD.Style.Add("color", "#249E6B") ' Ocultar texto
            agregarDesdeDB = True            
            If Subtipificacion.SelectedValue = "22" Then
                sSql += " AND IDFINAL BETWEEN " + "221 AND " + "239"
            ElseIf Subtipificacion.SelectedValue = "23" Then
                sSql += " AND IDFINAL BETWEEN " + "240 AND " + "241"
            ElseIf Subtipificacion.SelectedValue = "24" Then
                sSql += " AND IDFINAL BETWEEN " + "242 AND " + "243"
            ElseIf Subtipificacion.SelectedValue = "25" Then 'PQRS
                sSql += " AND (IDFINAL BETWEEN 244 AND 252 OR IDFINAL IN (720,721))"
            ElseIf Subtipificacion.SelectedValue = "26" Then
                sSql += " AND IDFINAL BETWEEN " + "253 AND " + "257"
            ElseIf Subtipificacion.SelectedValue = "27" Then
                sSql += " AND IDFINAL BETWEEN " + "258 AND " + "259"
            Else
                agregarDesdeDB = False
                Subtipificacion2.Visible = False
                Subtipificacion2TD.Style.Add("color", "transparent") ' Ocultar texto   

            End If
            
        ElseIf NumeroSeleccionado = 3 Then
            Subtipificacion2.Visible = True
            Subtipificacion2TD.Style.Add("color", "#249E6B") ' Ocultar texto
            agregarDesdeDB = True
            
            If Subtipificacion.SelectedValue = "22" Then
                sSql += " AND IDFINAL BETWEEN " + "321 AND " + "339"
            ElseIf Subtipificacion.SelectedValue = "23" Then
                sSql += " AND IDFINAL BETWEEN " + "340 AND " + "341"
            ElseIf Subtipificacion.SelectedValue = "24" Then
                sSql += " AND IDFINAL BETWEEN " + "342 AND " + "343"
            ElseIf Subtipificacion.SelectedValue = "25" Then
                sSql += " AND (IDFINAL BETWEEN 344 AND 352 OR IDFINAL IN (720,721)) "
            ElseIf Subtipificacion.SelectedValue = "26" Then
                sSql += " AND IDFINAL BETWEEN " + "353 AND " + "357"
            ElseIf Subtipificacion.SelectedValue = "27" Then
                sSql += " AND IDFINAL BETWEEN " + "358 AND " + "359"
            Else
                agregarDesdeDB = False
                Subtipificacion2.Visible = False
                Subtipificacion2TD.Style.Add("color", "transparent") ' Ocultar texto   

            End If
            
        ElseIf NumeroSeleccionado = 4 Then
            Subtipificacion2.Visible = True
            Subtipificacion2TD.Style.Add("color", "#249E6B") ' Ocultar texto
            agregarDesdeDB = True
            
            If Subtipificacion.SelectedValue = "22" Then
                sSql += " AND IDFINAL BETWEEN " + "421 AND " + "439"
            ElseIf Subtipificacion.SelectedValue = "23" Then
                sSql += " AND IDFINAL BETWEEN " + "440 AND " + "441"
            ElseIf Subtipificacion.SelectedValue = "24" Then
                sSql += " AND IDFINAL BETWEEN " + "442 AND " + "443"
            ElseIf Subtipificacion.SelectedValue = "25" Then
                sSql += " AND (IDFINAL BETWEEN " + "444 AND " + "452 OR IDFINAL IN (720,721))"
            ElseIf Subtipificacion.SelectedValue = "26" Then
                sSql += " AND IDFINAL BETWEEN " + "453 AND " + "457"
            ElseIf Subtipificacion.SelectedValue = "27" Then
                sSql += " AND IDFINAL BETWEEN " + "458 AND " + "459"
            Else
                agregarDesdeDB = False
                Subtipificacion2.Visible = False
                Subtipificacion2TD.Style.Add("color", "transparent") ' Ocultar texto   

            End If
        
        ElseIf NumeroSeleccionado = 5 Then
            Subtipificacion2.Visible = True
            Subtipificacion2TD.Style.Add("color", "#249E6B") ' Ocultar texto
            agregarDesdeDB = True
            
            If Subtipificacion.SelectedValue = "22" Then
                sSql += " AND IDFINAL BETWEEN " + "521 AND " + "539"
            ElseIf Subtipificacion.SelectedValue = "23" Then
                sSql += " AND IDFINAL BETWEEN " + "540 AND " + "541"
            ElseIf Subtipificacion.SelectedValue = "24" Then
                sSql += " AND IDFINAL BETWEEN " + "542 AND " + "543"
            ElseIf Subtipificacion.SelectedValue = "25" Then
                sSql += " AND (IDFINAL BETWEEN 544 AND 552 OR IDFINAL IN (720,721))"
            ElseIf Subtipificacion.SelectedValue = "26" Then
                sSql += " AND IDFINAL BETWEEN " + "553 AND " + "557"
            ElseIf Subtipificacion.SelectedValue = "27" Then
                sSql += " AND IDFINAL BETWEEN " + "558 AND " + "559"
            Else
                agregarDesdeDB = False
                Subtipificacion2.Visible = False
                Subtipificacion2TD.Style.Add("color", "transparent") ' Ocultar texto   

            End If
            
        ElseIf NumeroSeleccionado = 6 Then
            Subtipificacion2.Visible = True
            Subtipificacion2TD.Style.Add("color", "#249E6B") ' Ocultar texto
            agregarDesdeDB = True
            
            If Subtipificacion.SelectedValue = "22" Then
                sSql += " AND IDFINAL BETWEEN " + "621 AND " + "639"
            ElseIf Subtipificacion.SelectedValue = "23" Then
                sSql += " AND IDFINAL BETWEEN " + "640 AND " + "641"
            ElseIf Subtipificacion.SelectedValue = "24" Then
                sSql += " AND IDFINAL BETWEEN " + "642 AND " + "643"
            ElseIf Subtipificacion.SelectedValue = "25" Then
                sSql += " AND (IDFINAL BETWEEN 644 AND 652 OR IDFINAL IN (720,721))"
            ElseIf Subtipificacion.SelectedValue = "26" Then
                sSql += " AND IDFINAL BETWEEN " + "653 AND " + "657"
            ElseIf Subtipificacion.SelectedValue = "27" Then
                sSql += " AND IDFINAL BETWEEN " + "658 AND " + "659"
            Else
                agregarDesdeDB = False
                Subtipificacion2.Visible = False
                Subtipificacion2TD.Style.Add("color", "transparent") ' Ocultar texto   

            End If            
        End If
            
        If agregarDesdeDB Then
            ' Asignar el comando SQL al SqlDataSource usando parámetros
            SqlDataSource1.SelectCommand = sSql
            SqlDataSource1.DataBind()
            Subtipificacion2.DataSource = SqlDataSource1
            Subtipificacion2.DataTextField = "DESCRIPCION"
            Subtipificacion2.DataValueField = "IDFINAL"
            Subtipificacion2.DataBind()
            Subtipificacion2.Items.Insert(0, New ListItem(String.Empty, String.Empty))
        End If
    End Sub

</script>
