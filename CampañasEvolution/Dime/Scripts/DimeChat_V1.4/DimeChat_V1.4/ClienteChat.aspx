<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Import Namespace="System.Net" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .tdSample
        {
        }
        .layout-top-nav
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

<script type="text/javascript">
    $(document).ready(function () {
        $("#ctl00_MainContent_Chat1_ctl03").hide();
        $("#ctl00_MainContent_Chat1_LogoImage").hide();
        //$("#ctl00_MainContent_Chat1_ctl04").css("color", "");
        //$("#ctl00_MainContent_Chat1_LogoImage").attr("src", "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAABKVBMVEUAAAAAff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff8Aff9gPwO5AAAAYnRSTlMAAQIDBAUGBwgJCgsODxAREhMVGhweIyYnKCkqLTAxNjc4PD0+P0NERkdKTU9QUlRVVllcXWJjZmh4f4OFjJGUl5ieoKirr7Cyt7m6wMHFx8jKzM/X2ebo6evt7/H19/n7/RXai8AAAAESSURBVBgZvcH5I8JgAAbgd22h0lju+76vMLeUEHKWWJRa7///R/g2qaavfux50DmhpbNHq5x/ia31QWI8zbrsrAKv0B29MhE0GizyP3sadf0lSgzjj/JGmbyGqhnK7QFBOJKUywGxVQgWW/DhiAcAimxBhUnOA/eU+wJOyO8ubFLuFHgmGYVWoJSOAIU0MEEZEzikUASwzmbnQLBMwYIw+kmvShRQHuhIwjFJj3gYUC7pmoMjxRr7ZiMIwJ+i612BsEOysu/z9xrhbrgWC3SVDAhjJC901KgLr/xVHoFjObHih0PTevShrWSJVVkdXuquxUZTaDawHc982Pmnawo5H1ozbkleKWgjcmzRRHsBFZ3wAzFluRrNf59FAAAAAElFTkSuQmCC");

    });
      </script>
            <table class="formulario" style="width:100%;">
                <thead>
                   <tr>
                <th colspan="3" style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px solid #ed7203; border-bottom: 1px hidden #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; font-weight: bold;" class="style4">
                    ENTIDAD</th>
            </tr>
            <tr>
                <td colspan="3" 
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; vertical-align: middle;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" >
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>EPS</asp:ListItem>
                        <asp:ListItem>LIBRE ELECCIÓN</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList1" 
                        ErrorMessage="Entidad es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr>
                <th colspan="2" 
                   style="
                        border-style: solid solid hidden solid;
                        border-width: 1px; 
                        border-color: #ed7203;
                        padding: 5px; 
                        text-align:center;
                        background-color: #ed7203;
                        font-size: 16px;
                        color: #FFFFFF;
                        height: 29px;
                        font-weight: bold;
                        width:100%;">
                    DIME CHAT
                </th>
                </tr>
                
                </thead>        
                
                <tbody>
                    <tr>
                        <td colspan="2">
                            <evo:Chat ID="Chat1" runat="server" Headers-From-Enabled="False" SaveConversationButton-Visible="False"
                                SendButton-Visible="True" Templates-Extensions="txt" Templates-ResourcesUrl="~/Resources/Templates/Chat"
                                Templates-Visible="True" width="100%" Templates-SearchSubFolders="True" 
                                Font-Strikeout="False" ForeColor="#0B5829" 
                                BodyPanelStyle-CssClass="chat chat_bodyPanel" 
                                BodyPanelStyle-ForeColor="#0B5829" BodyPanelStyle-Height="100px" 
                                ParametersPanelStyle-CssClass="chat chat_parametersPanel" 
                                ParametersPanelStyle-ForeColor="#0B5829" ParametersPanelStyle-Height="32px"/>
                        </td>
                    </tr>
                    <tr>

                        <td style="padding: 5px; text-align: center">
                           
                    <asp:Button
                        ID="Btn2"
                        runat="server"
                        Font-Size="12px"
                        onclick="Button1_Click" 
                        Text="FINALIZAR CHAT"
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
        </div>
    </div>
    
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
               
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If Gestion.Transaccion.ContactoInicial.Canal = ICR.Comun.Enumerator.ECanal.Web Then
            Dim id_lanbot As String

            id_lanbot = Gestion.Transaccion.ContactoInicial.Origen
            Traces.Debug("name_id_lanbot: " + id_lanbot)

            id_lanbot = id_lanbot.Substring(id_lanbot.IndexOf("<") + 1, (id_lanbot.LastIndexOf(">") - id_lanbot.IndexOf("<") - 1))
            Traces.Debug("id_lanbot 2: " + id_lanbot)
        
            'Vamos a invocar al WS de LanBot
            Dim url As String = "https://servercol01.fenalcovalle.co/Evolution/ScriptServer/Scripts/Landbot/v1/assignBot.aspx?bot=1645676&customer=" + id_lanbot + "&agent=" + Gestion.Agente.IdAgente.ToString()
            Traces.Debug("url: " + url)
        
            Dim request As HttpWebRequest = HttpWebRequest.Create(url)
            request.Method = WebRequestMethods.Http.Get
            
            Dim response As HttpWebResponse = Nothing
            Dim result As Boolean = False
            Try
                response = request.GetResponse()
            Catch ex As Exception
                Traces.Warning("exception: " & ex.ToString)
            Finally
                If Not response Is Nothing Then response.Close()
            End Try   
        End If
        ' Verificar si se ha seleccionado una EPS en DropDownList1
        If String.IsNullOrEmpty(DropDownList1.SelectedValue) Then
            
            Throw New FormatException("Debes seleccionar una ENTIDAD antes de continuar.")
        Else
            ' Obtener el valor seleccionado de DropDownList1
            Dim selectedEntidad As String = DropDownList1.SelectedItem.Text
            ' Verifica que el valor seleccionado no sea nulo o esté vacío        
            Response.Redirect("~/InsertarEntidad.aspx?entidad=" + selectedEntidad)
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Gestion.FinalGestion(4000)
    End Sub
</script>