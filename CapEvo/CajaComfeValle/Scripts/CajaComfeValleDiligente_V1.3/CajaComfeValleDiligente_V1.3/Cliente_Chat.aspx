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
                <tbody>
                    <tr>
                        <td>
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
                            <asp:Button ID="Button1" runat="server" Text="Finalizar Chat" 
                                onclick="Button1_Click" />
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
            Dim url As String = "https://servercol01.fenalcovalle.co/Evolution/ScriptServer/Scripts/Landbot/v1/assignBot.aspx?bot=1614234&customer=" + id_lanbot + "&agent=" + Gestion.Agente.IdAgente.ToString()
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
        Response.Redirect("~/Finales.aspx")
    End Sub
</script>