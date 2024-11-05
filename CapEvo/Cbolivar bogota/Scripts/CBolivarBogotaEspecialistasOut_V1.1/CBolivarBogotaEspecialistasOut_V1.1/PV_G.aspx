<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
<script type="text/javascript">
    function Transf_Encuesta() {
        agentapi.TransferActiveCall('5044');

    }

</script>
    <style type="text/css">
        .tdSample
        {
            height: 30px;        
        }
        .style3
        {
            height: 44px;
        }
        .style8
        {
            height: 50px;
        }
        .style9
        {
            height: 44px;
            width: 30%;
        }
        .style10
        {
            height: 50px;
            width: 30%;
        }
        .style11
        {
            width: 30%;
        }
        .style12
        {
            height: 44px;
            width: 208px;
        }
        .style13
        {
            height: 50px;
            width: 208px;
        }
        .style15
        {
            height: 60px;
        }
        .style16
        {
            height: 70px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
     
    <table class="formulario" style="width:70%;">        
        <thead>
            <tr>
                 <th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #249E6B; padding: 5px; text-align:center; background-color: #249E6B ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="4" align="center">
                    Constructora Bolivar Inbound<br />
                    Datos</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203;  font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" class="style1">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                       LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203;  font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" class="style1" colspan=2>
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203;  font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" class="style1">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203;  font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" class="style1">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203;  font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" class="style1" colspan=2>
                    Primer apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                    <br />
                    </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203;  font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" class="style1">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
             <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; font-weight: bold; font-size: 16px; " 
                    class="style3" colspan="4">
                    <asp:CheckBox ID="CheckBox1" runat="server" 
                        
                        Text="¿Usuario se comunico por algún comunicado enviado por parte de Constructora Bolivar?" 
                        Enabled="False"/>
                </td>
                </tr>
            <tr>
                <th style="padding: 10px; border: 2px solid #ed7203; text-align:center; background-color: #249E6B; font-size: 20px; color: #ffffff; font-weight: bold; " colspan="4" align="center">
                    Finalizar Gestion</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px; " 
                    class="style10" colspan="1">
                    Origen caso:<br />
                    <asp:DropDownList ID="t1" runat="server" ForeColor="Black" Width="200px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Llamada" Selected="True">Llamada</asp:ListItem>
                        <asp:ListItem Value="ChatBot">ChatBot</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t1" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px; " 
                    class="style13" colspan="2">
                    ¿Cierre en primer contacto?<br />
                    <asp:DropDownList ID="t2" runat="server" ForeColor="Black" Width="200px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="NO" Selected="True">NO</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px; " 
                    class="style13">
                    Motivo:<br />
                    <asp:DropDownList ID="t3" runat="server" Height="25px" ForeColor="Black" 
                        Width="200px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Peticion " Selected="True">Peticion </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t3" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px;" 
                    class="style10">
                    Momento:<br />
                    <asp:DropDownList ID="t4" runat="server" ForeColor="Black" Width="200px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Selected="True">Post venta</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t4" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px; height: 50px; width: 50%;" 
                    colspan="2">
                    Razon:<br />
                    <asp:DropDownList ID="t6" runat="server" ForeColor="Black" Width="200px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Radicacion de Garantia">Radicacion de Garantia</asp:ListItem>
                        <asp:ListItem Value="Radicacion de Postventa">Radicacion de Postventa</asp:ListItem>
                        <asp:ListItem Value="Certificacion Edge">Certificación Edge</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t6" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px; height: 50px; width: 50%;">
                    Actividad (SAC):<br />
                    <asp:DropDownList ID="t7" runat="server" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Segundo nivel Garantias">Segundo nivel Garantias</asp:ListItem>
                        <asp:ListItem>Primer nivel Garantias</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t7" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px;" 
                    class="style11">
                    Proyecto:<br />
                    <asp:DropDownList ID="Proyecto" runat="server" ForeColor="Black" Width="250px">
<asp:ListItem></asp:ListItem>
<asp:ListItem Value="127 LIVING">127 LIVING</asp:ListItem>
<asp:ListItem Value="176 PARK">176 PARK</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO -  TORCAZA VIP">ALAMEDA DEL RIO -  TORCAZA VIP</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - BUHO">ALAMEDA DEL RIO - BUHO</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - CANARIO">ALAMEDA DEL RIO - CANARIO</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - GARZAS">ALAMEDA DEL RIO - GARZAS</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - GORRION">ALAMEDA DEL RIO - GORRION</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - GUACAMAYA">ALAMEDA DEL RIO - GUACAMAYA</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - MIRLA">ALAMEDA DEL RIO - MIRLA</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - MONARCA">ALAMEDA DEL RIO - MONARCA</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - TORTOLA">ALAMEDA DEL RIO - TORTOLA</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO - TUCAN VIS">ALAMEDA DEL RIO - TUCAN VIS</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO CISNE">ALAMEDA DEL RIO CISNE</asp:ListItem>
<asp:ListItem Value="ALAMEDA DEL RIO MARIA MULATA">ALAMEDA DEL RIO MARIA MULATA</asp:ListItem>
<asp:ListItem Value="ALBAHACA">ALBAHACA</asp:ListItem>
<asp:ListItem Value="ALCALA">ALCALA</asp:ListItem>
<asp:ListItem Value="ALSACIA OCCIDENTAL">ALSACIA OCCIDENTAL</asp:ListItem>
<asp:ListItem Value="ALTAIR">ALTAIR</asp:ListItem>
<asp:ListItem Value="ALTOS DE FONTIBON">ALTOS DE FONTIBON</asp:ListItem>
<asp:ListItem Value="ALTOS DE MADRID">ALTOS DE MADRID</asp:ListItem>
<asp:ListItem Value="ALTOS DEL VINCULO">ALTOS DEL VINCULO</asp:ListItem>
<asp:ListItem Value="AMAPOLA">AMAPOLA</asp:ListItem>
<asp:ListItem Value="AMERICAS DEL TINTAL">AMERICAS DEL TINTAL</asp:ListItem>
<asp:ListItem Value="ARANJUEZ">ARANJUEZ</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DE SAN CARLOS">ARBOLEDA DE SAN CARLOS</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE - CHICALÁ">ARBOLEDA DEL CAMPESTRE - CHICALÁ</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE ACACIA">ARBOLEDA DEL CAMPESTRE ACACIA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE ALGARROBO">ARBOLEDA DEL CAMPESTRE ALGARROBO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE ALMENDRO">ARBOLEDA DEL CAMPESTRE ALMENDRO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE ARENILLO">ARBOLEDA DEL CAMPESTRE ARENILLO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE CAMBULO">ARBOLEDA DEL CAMPESTRE CAMBULO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE CARACOLI">ARBOLEDA DEL CAMPESTRE CARACOLI</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE CEIBA">ARBOLEDA DEL CAMPESTRE CEIBA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE GUALANDAY">ARBOLEDA DEL CAMPESTRE GUALANDAY</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE IGUA">ARBOLEDA DEL CAMPESTRE IGUA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE JACARANDA">ARBOLEDA DEL CAMPESTRE JACARANDA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE JAGUA">ARBOLEDA DEL CAMPESTRE JAGUA</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE LAUREL">ARBOLEDA DEL CAMPESTRE LAUREL</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE PAYANDE">ARBOLEDA DEL CAMPESTRE PAYANDE</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE SAMAN">ARBOLEDA DEL CAMPESTRE SAMAN</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE TAMARINDO">ARBOLEDA DEL CAMPESTRE TAMARINDO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE TOTUMO">ARBOLEDA DEL CAMPESTRE TOTUMO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE VAINILLO">ARBOLEDA DEL CAMPESTRE VAINILLO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA DEL CAMPESTRE YARUMO">ARBOLEDA DEL CAMPESTRE YARUMO</asp:ListItem>
<asp:ListItem Value="ARENA">ARENA</asp:ListItem>
<asp:ListItem Value="ATRIA">ATRIA</asp:ListItem>
<asp:ListItem Value="AUSTRO">AUSTRO</asp:ListItem>
<asp:ListItem Value="B10408 ALAMO">B10408 ALAMO</asp:ListItem>
<asp:ListItem Value="B15702 ROSA CELESTE">B15702 ROSA CELESTE</asp:ListItem>
<asp:ListItem Value="B15703 ROSA TURQUESA">B15703 ROSA TURQUESA</asp:ListItem>
<asp:ListItem Value="B15704 ROSA IMPERIAL">B15704 ROSA IMPERIAL</asp:ListItem>
<asp:ListItem Value="B15705-CIUDAD ROSALEDA ROSA AMATISTA">B15705-CIUDAD ROSALEDA ROSA AMATISTA</asp:ListItem>
<asp:ListItem Value="B16807 LOS CERRITOS">B16807 LOS CERRITOS</asp:ListItem>
<asp:ListItem Value="B17301 URBANA 30">B17301 URBANA 30</asp:ListItem>
<asp:ListItem Value="B17302 URBANA 30 NO VIS">B17302 URBANA 30 NO VIS</asp:ListItem>
<asp:ListItem Value="B17803-BOSQUE ROBLEDAL">B17803-BOSQUE ROBLEDAL</asp:ListItem>
<asp:ListItem Value="B18202 PUERTO CAMPANA">B18202 PUERTO CAMPANA</asp:ListItem>
<asp:ListItem Value="B18508 TRAMONTE LIVING NO VIS">B18508 TRAMONTE LIVING NO VIS</asp:ListItem>
<asp:ListItem Value="B18510 ZIBAL">B18510 ZIBAL</asp:ListItem>
<asp:ListItem Value="B18512 TRAMONTE LIVING VIS">B18512 TRAMONTE LIVING VIS</asp:ListItem>
<asp:ListItem Value="B18701 - LOS PINOS">B18701 - LOS PINOS</asp:ListItem>
<asp:ListItem Value="B18801 NOVUM RICAURTE VIS">B18801 NOVUM RICAURTE VIS</asp:ListItem>
<asp:ListItem Value="B19701-BAVIERA PARK BAVIERA PARK">B19701-BAVIERA PARK BAVIERA PARK</asp:ListItem>
<asp:ListItem Value="BARLOA">BARLOA</asp:ListItem>
<asp:ListItem Value="BELLAVISTA IMPERIAL">BELLAVISTA IMPERIAL</asp:ListItem>
<asp:ListItem Value="BONAVENTO">BONAVENTO</asp:ListItem>
<asp:ListItem Value="BOSQUE CEIBAL">BOSQUE CEIBAL</asp:ListItem>
<asp:ListItem Value="BOSQUES DE BOGOTA 1">BOSQUES DE BOGOTA 1</asp:ListItem>
<asp:ListItem Value="BOSQUES DE BOGOTA 2">BOSQUES DE BOGOTA 2</asp:ListItem>
<asp:ListItem Value="BOSQUES DE BOGOTA 3">BOSQUES DE BOGOTA 3</asp:ListItem>
<asp:ListItem Value="BOSQUES DE BOGOTA 4">BOSQUES DE BOGOTA 4</asp:ListItem>
<asp:ListItem Value="BOSQUES DE PROVENZA">BOSQUES DE PROVENZA</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL ZAPAN ETAPA 1">BOSQUES DEL ZAPAN ETAPA 1</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL ZAPAN ETAPA 2">BOSQUES DEL ZAPAN ETAPA 2</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL ZAPAN ETAPA 3 MZ 9">BOSQUES DEL ZAPAN ETAPA 3 MZ 9</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL ZAPAN ETAPA 4">BOSQUES DEL ZAPAN ETAPA 4</asp:ListItem>
<asp:ListItem Value="BRISAS - RESERVA DE CURINCA">BRISAS - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="BRISAS DEL PARQUE">BRISAS DEL PARQUE</asp:ListItem>
<asp:ListItem Value="BUENAVISTA LIVING">BUENAVISTA LIVING</asp:ListItem>
<asp:ListItem Value="CALENDULA">CALENDULA</asp:ListItem>
<asp:ListItem Value="CAMINO DE LOS GIRASOLES">CAMINO DE LOS GIRASOLES</asp:ListItem>
<asp:ListItem Value="CAMINOS DEL VINCULO">CAMINOS DEL VINCULO</asp:ListItem>
<asp:ListItem Value="CAPELLA">CAPELLA</asp:ListItem>
<asp:ListItem Value="CASAS DE PORTOBELO">CASAS DE PORTOBELO</asp:ListItem>
<asp:ListItem Value="CASTELLANA 51">CASTELLANA 51</asp:ListItem>
<asp:ListItem Value="CATLEYA NO VIS">CATLEYA NO VIS</asp:ListItem>
<asp:ListItem Value="CATLEYA VIS">CATLEYA VIS</asp:ListItem>
<asp:ListItem Value="CENTRAL 68 NO VIS">CENTRAL 68 NO VIS</asp:ListItem>
<asp:ListItem Value="CENTRAL 68 VIS">CENTRAL 68 VIS</asp:ListItem>
<asp:ListItem Value="CENTRO COMERCIAL PARQUE CAMPESTRE">CENTRO COMERCIAL PARQUE CAMPESTRE</asp:ListItem>
<asp:ListItem Value="CIBELES">CIBELES</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO ACORDEON">CIUDAD DEL PUERTO - PUERTO ACORDEON</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO ARMONICA">CIUDAD DEL PUERTO - PUERTO ARMONICA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO BONGOE">CIUDAD DEL PUERTO - PUERTO BONGOE</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO CIMBALO">CIUDAD DEL PUERTO - PUERTO CIMBALO</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO CONGA">CIUDAD DEL PUERTO - PUERTO CONGA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO CUMBIA">CIUDAD DEL PUERTO - PUERTO CUMBIA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO FLAUTA">CIUDAD DEL PUERTO - PUERTO FLAUTA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO GAITA ET 1">CIUDAD DEL PUERTO - PUERTO GAITA ET 1</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO GUITARRA">CIUDAD DEL PUERTO - PUERTO GUITARRA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO MILLO">CIUDAD DEL PUERTO - PUERTO MILLO</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO TAMBORA">CIUDAD DEL PUERTO - PUERTO TAMBORA</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - PUERTO TIMBAL">CIUDAD DEL PUERTO - PUERTO TIMBAL</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO - VILLAS DEL PUERTO">CIUDAD DEL PUERTO - VILLAS DEL PUERTO</asp:ListItem>
<asp:ListItem Value="CIUDAD DEL PUERTO MALL">CIUDAD DEL PUERTO MALL</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 10 MZ 2B">CIUDAD TINTAL II ETAPA 10 MZ 2B</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 11 MZ 1">CIUDAD TINTAL II ETAPA 11 MZ 1</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 4 MZ 7B">CIUDAD TINTAL II ETAPA 4 MZ 7B</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 5 MZ 3B">CIUDAD TINTAL II ETAPA 5 MZ 3B</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 6 MZ 3A">CIUDAD TINTAL II ETAPA 6 MZ 3A</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 7 MZ 4A">CIUDAD TINTAL II ETAPA 7 MZ 4A</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 8 MZ 4B">CIUDAD TINTAL II ETAPA 8 MZ 4B</asp:ListItem>
<asp:ListItem Value="CIUDAD TINTAL II ETAPA 9 MZ 2A">CIUDAD TINTAL II ETAPA 9 MZ 2A</asp:ListItem>
<asp:ListItem Value="COLINAS DEL PINAR">COLINAS DEL PINAR</asp:ListItem>
<asp:ListItem Value="COMERCIO GIRASOLES">COMERCIO GIRASOLES</asp:ListItem>
<asp:ListItem Value="DALIA">DALIA</asp:ListItem>
<asp:ListItem Value="EL ENCANTO">EL ENCANTO</asp:ListItem>
<asp:ListItem Value="EL MOLINO - PARQUE CENTRAL CAJICÁ">EL MOLINO -  PARQUE CENTRAL CAJICÁ</asp:ListItem>
<asp:ListItem Value="EL PRADO">EL PRADO</asp:ListItem>
<asp:ListItem Value="EL RETIRO">EL RETIRO</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS ETAPA 1">ENTRELOMAS ETAPA 1</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS ETAPA 2">ENTRELOMAS ETAPA 2</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS ETAPA 3">ENTRELOMAS ETAPA 3</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS ETAPA 4">ENTRELOMAS ETAPA 4</asp:ListItem>
<asp:ListItem Value="FEIJOA">FEIJOA</asp:ListItem>
<asp:ListItem Value="FLORA - RESERVA DE CURINCA">FLORA - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="FONTIBON 128">FONTIBON 128</asp:ListItem>
<asp:ListItem Value="GIRASOLES">GIRASOLES</asp:ListItem>
<asp:ListItem Value="HACIENDA EL ROSAL">HACIENDA EL ROSAL</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET 9 - GUADUA">HACIENDA PEÑALISA ET 9 - GUADUA</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET1 - BAMBU">HACIENDA PEÑALISA ET1 - BAMBU</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET2 - OCOBO">HACIENDA PEÑALISA ET2 - OCOBO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET3 - CEIBA">HACIENDA PEÑALISA ET3 - CEIBA</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET4 - ALMENDRO">HACIENDA PEÑALISA ET4 - ALMENDRO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET5 - TAGUA">HACIENDA PEÑALISA ET5 - TAGUA</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET5 - TAGUA">HACIENDA PEÑALISA ET5 - TAGUA</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET6 - BALSO">HACIENDA PEÑALISA ET6 - BALSO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET-7 POMARROSO">HACIENDA PEÑALISA ET-7 POMARROSO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA ET-8  MANGO">HACIENDA PEÑALISA ET-8  MANGO</asp:ListItem>
<asp:ListItem Value="HACIENDA PEÑALISA LIMONAR">HACIENDA PEÑALISA LIMONAR</asp:ListItem>
<asp:ListItem Value="HACIENDA SAN JOSE">HACIENDA SAN JOSE</asp:ListItem>
<asp:ListItem Value="HAYUELOS RESERVADO">HAYUELOS RESERVADO</asp:ListItem>
<asp:ListItem Value="HELICONIA">HELICONIA</asp:ListItem>
<asp:ListItem Value="HORTENSIA">HORTENSIA</asp:ListItem>
<asp:ListItem Value="ILARCO 114">ILARCO 114</asp:ListItem>
<asp:ListItem Value="INDIGO">INDIGO</asp:ListItem>
<asp:ListItem Value="LA CASTELLANA">LA CASTELLANA</asp:ListItem>
<asp:ListItem Value="LA CRISTALINA">LA CRISTALINA</asp:ListItem>
<asp:ListItem Value="LA ESTANCIA">LA ESTANCIA</asp:ListItem>
<asp:ListItem Value="LA ESTANCIA II">LA ESTANCIA II</asp:ListItem>
<asp:ListItem Value="LA ESTANCIA III">LA ESTANCIA III</asp:ListItem>
<asp:ListItem Value="LA ESTANCIA IV">LA ESTANCIA IV</asp:ListItem>
<asp:ListItem Value="LA GRAN RESERVA">LA GRAN RESERVA</asp:ListItem>
<asp:ListItem Value="LA GRAN RESERVA ETAPA 2">LA GRAN RESERVA ETAPA 2</asp:ListItem>
<asp:ListItem Value="LA GRAN RESERVA ETAPA 3">LA GRAN RESERVA ETAPA 3</asp:ListItem>
<asp:ListItem Value="LA LAJITA">LA LAJITA</asp:ListItem>
<asp:ListItem Value="LA REQUILINA">LA REQUILINA</asp:ListItem>
<asp:ListItem Value="LA RIBERA ALTA - LA CONCEPCION">LA RIBERA ALTA - LA CONCEPCION</asp:ListItem>
<asp:ListItem Value="LAGUNA - RESERVA DE CURINCA">LAGUNA - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="LAS HUERTAS">LAS HUERTAS</asp:ListItem>
<asp:ListItem Value="LAS HUERTAS II">LAS HUERTAS II</asp:ListItem>
<asp:ListItem Value="LAS VIOLETAS">LAS VIOLETAS</asp:ListItem>
<asp:ListItem Value="LINARIA">LINARIA</asp:ListItem>
<asp:ListItem Value="LOCALES COMERCIALES AVELLANA">LOCALES COMERCIALES AVELLANA</asp:ListItem>
<asp:ListItem Value="LOCALES COMERCIALES BUGANVILLA">LOCALES COMERCIALES BUGANVILLA</asp:ListItem>
<asp:ListItem Value="LOS ALISOS">LOS ALISOS</asp:ListItem>
<asp:ListItem Value="LUNARIA">LUNARIA</asp:ListItem>
<asp:ListItem Value="MAGENTA">MAGENTA</asp:ListItem>
<asp:ListItem Value="MAGNOLIA">MAGNOLIA</asp:ListItem>
<asp:ListItem Value="MANGLAR">MANGLAR</asp:ListItem>
<asp:ListItem Value="MANGLAR 2">MANGLAR 2</asp:ListItem>
<asp:ListItem Value="MANZANARES">MANZANARES</asp:ListItem>
<asp:ListItem Value="MEDITERRANEO ALEJANDRIA">MEDITERRANEO ALEJANDRIA</asp:ListItem>
<asp:ListItem Value="MENTA">MENTA</asp:ListItem>
<asp:ListItem Value="MIRADOR DE MINCA">MIRADOR DE MINCA</asp:ListItem>
<asp:ListItem Value="MIRADOR DEL ESTE">MIRADOR DEL ESTE</asp:ListItem>
<asp:ListItem Value="MIRADOR DEL ESTE ET 2">MIRADOR DEL ESTE ET 2</asp:ListItem>
<asp:ListItem Value="MIRADOR DEL ESTE ET 3">MIRADOR DEL ESTE ET 3</asp:ListItem>
<asp:ListItem Value="MISTRAL">MISTRAL</asp:ListItem>
<asp:ListItem Value="MISTRAL NO VIS">MISTRAL NO VIS</asp:ListItem>
<asp:ListItem Value="NATURA LIVING">NATURA LIVING</asp:ListItem>
<asp:ListItem Value="NATURA LIVING NO VIS">NATURA LIVING NO VIS</asp:ListItem>
<asp:ListItem Value="NEVADO - RESERVA DE CURINCA">NEVADO - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="NORMANDIA DEL PARQUE ET1">NORMANDIA DEL PARQUE ET1</asp:ListItem>
<asp:ListItem Value="NORMANDIA DEL PARQUE ETAPA II">NORMANDIA DEL PARQUE ETAPA II</asp:ListItem>
<asp:ListItem Value="NOVUM RICAURTE">NOVUM RICAURTE</asp:ListItem>
<asp:ListItem Value="OCEANA 52">OCEANA 52</asp:ListItem>
<asp:ListItem Value="PALOEMANGO">PALOEMANGO</asp:ListItem>
<asp:ListItem Value="PANORAMA 140">PANORAMA 140</asp:ListItem>
<asp:ListItem Value="PARAISO CARIBE">PARAISO CARIBE</asp:ListItem>
<asp:ListItem Value="PARAISO CARIBE 2">PARAISO CARIBE 2</asp:ListItem>
<asp:ListItem Value="PARK LIVING">PARK LIVING</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA I MZ 5 LOTE 1">PARQUE CAMPESTRE ETAPA I MZ 5 LOTE 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA II MZ 5 LOTE 2">PARQUE CAMPESTRE ETAPA II MZ 5 LOTE 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA III MZ 6 LOTE 2">PARQUE CAMPESTRE ETAPA III MZ 6 LOTE 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA IV MZ 6 LOTE 1">PARQUE CAMPESTRE ETAPA IV MZ 6 LOTE 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA IX MZ 1 LT 2">PARQUE CAMPESTRE ETAPA IX MZ 1 LT 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA V MZ 7 LOTE 2">PARQUE CAMPESTRE ETAPA V MZ 7 LOTE 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA VI  - MZ 7 - LOTE 1">PARQUE CAMPESTRE ETAPA VI  - MZ 7 - LOTE 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA VII - MZ 8 - LOTE 2">PARQUE CAMPESTRE ETAPA VII - MZ 8 - LOTE 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA VIII MZ 8 LT 1">PARQUE CAMPESTRE ETAPA VIII MZ 8 LT 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA X MZ 1 LOTE 1">PARQUE CAMPESTRE ETAPA X MZ 1 LOTE 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XI - MZ 2 LT 1">PARQUE CAMPESTRE ETAPA XI - MZ 2 LT 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XII MZ 2 LT 2">PARQUE CAMPESTRE ETAPA XII MZ 2 LT 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XIII MZ 3 LT 2">PARQUE CAMPESTRE ETAPA XIII MZ 3 LT 2</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XIV MZ 3 LT 1">PARQUE CAMPESTRE ETAPA XIV MZ 3 LT 1</asp:ListItem>
<asp:ListItem Value="PARQUE CAMPESTRE ETAPA XV MZ 4 LT 2">PARQUE CAMPESTRE ETAPA XV MZ 4 LT 2</asp:ListItem>
<asp:ListItem Value="PARQUE CENTRAL CAJICA ET 2 - YERBABUENA">PARQUE CENTRAL CAJICA ET 2 - YERBABUENA</asp:ListItem>
<asp:ListItem Value="PARQUE CENTRAL CAJICÁ ET 3 - CANELÓN">PARQUE CENTRAL CAJICÁ ET 3 - CANELÓN</asp:ListItem>
<asp:ListItem Value="PARQUE CENTRAL CAJICA ET 4 - EL MOLINO">PARQUE CENTRAL CAJICA ET 4 - EL MOLINO</asp:ListItem>
<asp:ListItem Value="PARQUE DE LAS FLORES ETAPA 1 MANZANA F">PARQUE DE LAS FLORES ETAPA 1 MANZANA F</asp:ListItem>
<asp:ListItem Value="PARQUE DE LAS FLORES ETAPA 3 MANZANA D">PARQUE DE LAS FLORES ETAPA 3 MANZANA D</asp:ListItem>
<asp:ListItem Value="PARQUE DE LAS FLORES II MZ E">PARQUE DE LAS FLORES II MZ E</asp:ListItem>
<asp:ListItem Value="PARQUE DE LAS FLORES MZ J">PARQUE DE LAS FLORES MZ J</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - ALCAPARRO">PARQUES DE BOGOTA - ALCAPARRO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - ALISO">PARQUES DE BOGOTA - ALISO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - ARRAYAN">PARQUES DE BOGOTA - ARRAYAN</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - AVELLANA">PARQUES DE BOGOTA - AVELLANA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTÁ - BUGANVILLA">PARQUES DE BOGOTÁ - BUGANVILLA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - CAMPANO">PARQUES DE BOGOTA - CAMPANO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - CAOBA">PARQUES DE BOGOTA - CAOBA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - CEDRO">PARQUES DE BOGOTA - CEDRO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - CEREZO">PARQUES DE BOGOTA - CEREZO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - EUCALIPTO">PARQUES DE BOGOTA - EUCALIPTO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - GUAYACAN">PARQUES DE BOGOTA - GUAYACAN</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - MANZANO">PARQUES DE BOGOTA - MANZANO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - NOGAL">PARQUES DE BOGOTA - NOGAL</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - PINO">PARQUES DE BOGOTA - PINO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - ROBLE">PARQUES DE BOGOTA - ROBLE</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - SAUCE">PARQUES DE BOGOTA - SAUCE</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - SAUCO">PARQUES DE BOGOTA - SAUCO</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOGOTA - URAPAN">PARQUES DE BOGOTA - URAPAN</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLÍVAR BARRANQUILLA">PARQUES DE BOLÍVAR BARRANQUILLA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLÍVAR BARRANQUILLA 2">PARQUES DE BOLÍVAR BARRANQUILLA 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR CARTAGENA">PARQUES DE BOLIVAR CARTAGENA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR CARTAGENA 2">PARQUES DE BOLIVAR CARTAGENA 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR CARTAGENA 3">PARQUES DE BOLIVAR CARTAGENA 3</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR CARTAGENA 4">PARQUES DE BOLIVAR CARTAGENA 4</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR ETAPA II CUCUTA">PARQUES DE BOLIVAR ETAPA II CUCUTA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR ETAPA III CUCUTA">PARQUES DE BOLIVAR ETAPA III CUCUTA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR LA SIERRA">PARQUES DE BOLIVAR LA SIERRA</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR LEANDRO DIAZ ET 1">PARQUES DE BOLIVAR LEANDRO DIAZ ET 1</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR LEANDRO DIAZ ET 2">PARQUES DE BOLIVAR LEANDRO DIAZ ET 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR LEANDRO DIAZ ET 3">PARQUES DE BOLIVAR LEANDRO DIAZ ET 3</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SANTA MARTA ET 1">PARQUES DE BOLIVAR SANTA MARTA ET 1</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SANTA MARTA ET 2">PARQUES DE BOLIVAR SANTA MARTA ET 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SANTA MARTA ET 3">PARQUES DE BOLIVAR SANTA MARTA ET 3</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SANTA MARTA ET 4">PARQUES DE BOLIVAR SANTA MARTA ET 4</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SOLEDAD">PARQUES DE BOLIVAR SOLEDAD</asp:ListItem>
<asp:ListItem Value="PARQUES DE BOLIVAR SOLEDAD 2">PARQUES DE BOLIVAR SOLEDAD 2</asp:ListItem>
<asp:ListItem Value="PARQUES DE CASTILLA 3">PARQUES DE CASTILLA 3</asp:ListItem>
<asp:ListItem Value="PARQUES DE CASTILLA 4">PARQUES DE CASTILLA 4</asp:ListItem>
<asp:ListItem Value="PARQUES DE CASTILLA 5">PARQUES DE CASTILLA 5</asp:ListItem>
<asp:ListItem Value="PARQUES DE CASTILLA 6">PARQUES DE CASTILLA 6</asp:ListItem>
<asp:ListItem Value="PARQUES DE HATOGRANDE">PARQUES DE HATOGRANDE</asp:ListItem>
<asp:ListItem Value="PARQUES DE LA ESTACION">PARQUES DE LA ESTACION</asp:ListItem>
<asp:ListItem Value="POBLADO - RESERVA DE CURINCA">POBLADO - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="PORTAL DE LA AUTOPISTA">PORTAL DE LA AUTOPISTA</asp:ListItem>
<asp:ListItem Value="PORTUS ALEJANDRIA">PORTUS ALEJANDRIA</asp:ListItem>
<asp:ListItem Value="PORVENIR RESERVADO CASAS 1">PORVENIR RESERVADO CASAS 1</asp:ListItem>
<asp:ListItem Value="PORVENIR RESERVADO CASAS 2">PORVENIR RESERVADO CASAS 2</asp:ListItem>
<asp:ListItem Value="PRADERA DE FONTIBON 3">PRADERA DE FONTIBON 3</asp:ListItem>
<asp:ListItem Value="PRADERA DE FONTIBON 4">PRADERA DE FONTIBON 4</asp:ListItem>
<asp:ListItem Value="PRADO PARK">PRADO PARK</asp:ListItem>
<asp:ListItem Value="RESERVA DE LUNARIA">RESERVA DE LUNARIA</asp:ListItem>
<asp:ListItem Value="RESERVA DE SAN AGUSTIN">RESERVA DE SAN AGUSTIN</asp:ListItem>
<asp:ListItem Value="RESERVA DE SAN AGUSTIN II">RESERVA DE SAN AGUSTIN II</asp:ListItem>
<asp:ListItem Value="RESERVA DE SAN AGUSTIN III">RESERVA DE SAN AGUSTIN III</asp:ListItem>
<asp:ListItem Value="RESERVA DEL EDEN - ALMENDROS">RESERVA DEL EDEN - ALMENDROS</asp:ListItem>
<asp:ListItem Value="RESERVA DEL EDEN ET 1 - CIRUELOS">RESERVA DEL EDEN ET 1 - CIRUELOS</asp:ListItem>
<asp:ListItem Value="SALITRE LIVING">SALITRE LIVING</asp:ListItem>
<asp:ListItem Value="SANDALO">SANDALO</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 2 - ET 1">SANTA HELENA SMZ 2 - ET 1</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 3 - ET 2">SANTA HELENA SMZ 3 - ET 2</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 4 - ET 3">SANTA HELENA SMZ 4 - ET 3</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 5 - ET 4">SANTA HELENA SMZ 5 - ET 4</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 6 - ET 5">SANTA HELENA SMZ 6 - ET 5</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 7 - ET 6">SANTA HELENA SMZ 7 - ET 6</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 8 - ET 7">SANTA HELENA SMZ 8 - ET 7</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ 9 - ET 8">SANTA HELENA SMZ 9 - ET 8</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ10 - ET 9">SANTA HELENA SMZ10 - ET 9</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ11 - ET 10">SANTA HELENA SMZ11 - ET 10</asp:ListItem>
<asp:ListItem Value="SANTA HELENA SMZ12 - ET 11">SANTA HELENA SMZ12 - ET 11</asp:ListItem>
<asp:ListItem Value="SENDEROS - RESERVA DE CURINCA">SENDEROS - RESERVA DE CURINCA</asp:ListItem>
<asp:ListItem Value="SENDEROS DE FONTIBON">SENDEROS DE FONTIBON</asp:ListItem>
<asp:ListItem Value="SENDEROS DE FONTIBON NO VIS">SENDEROS DE FONTIBON NO VIS</asp:ListItem>
<asp:ListItem Value="SENDEROS DE FONTIBON VIS">SENDEROS DE FONTIBON VIS</asp:ListItem>
<asp:ListItem Value="TENERIFE ALEJANDRIA">TENERIFE ALEJANDRIA</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE II ETAPA 3">TERRAGRANDE II ETAPA 3</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE III ETAPA 1">TERRAGRANDE III ETAPA 1</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE III ETAPA 2">TERRAGRANDE III ETAPA 2</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE III ETAPA 3">TERRAGRANDE III ETAPA 3</asp:ListItem>
<asp:ListItem Value="TERRAGRANDE IV ETAPA 1">TERRAGRANDE IV ETAPA 1</asp:ListItem>
<asp:ListItem Value="URBANIZACION LA GLORIA MANZANA I">URBANIZACION LA GLORIA MANZANA I</asp:ListItem>
<asp:ListItem Value="URBANIZACION LA GLORIA MANZANA II">URBANIZACION LA GLORIA MANZANA II</asp:ListItem>
<asp:ListItem Value="URBANIZACION LA GLORIA MANZANA III">URBANIZACION LA GLORIA MANZANA III</asp:ListItem>
<asp:ListItem Value="VENTO">VENTO</asp:ListItem>
<asp:ListItem Value="VERAMONTE - EBANO">VERAMONTE - EBANO</asp:ListItem>
<asp:ListItem Value="VERAMONTE - MACANA">VERAMONTE - MACANA</asp:ListItem>
<asp:ListItem Value="VERAMONTE - OLMO">VERAMONTE - OLMO</asp:ListItem>
<asp:ListItem Value="VERAMONTE - TECA">VERAMONTE - TECA</asp:ListItem>
<asp:ListItem Value="VERAMONTE LIVING">VERAMONTE LIVING</asp:ListItem>
<asp:ListItem Value="VICTORIA I">VICTORIA I</asp:ListItem>
<asp:ListItem Value="VICTORIA II">VICTORIA II</asp:ListItem>
<asp:ListItem Value="TRAMONTE LIVING">TRAMONTE LIVINGg</asp:ListItem>
<asp:ListItem Value="TRAMONTE LIVING VIS">TRAMONTE LIVING VIS</asp:ListItem>
<asp:ListItem Value="TRAMONTE LIVING NO VIS">TRAMONTE LIVING NO VIS</asp:ListItem>
<asp:ListItem Value="ZIBAL 72">ZIBAL 72</asp:ListItem>
<asp:ListItem Value="ZIBAL 83">ZIBAL 83</asp:ListItem>
<asp:ListItem Value="ZIBAL 92">ZIBAL 92</asp:ListItem>
<asp:ListItem Value="AURIGA LIVING VIS">AURIGA LIVING VIS</asp:ListItem>
<asp:ListItem Value="CIRUELOS DEL EDÉN">CIRUELOS DEL EDÉN</asp:ListItem>
<asp:ListItem Value="ENTRELOMAS BOSQUE RESIDENCIAL">ENTRELOMAS BOSQUE RESIDENCIAL</asp:ListItem>
<asp:ListItem Value="PARQUE CENTRAL CAJICÁ - MOLINO">PARQUE CENTRAL CAJICÁ - MOLINO</asp:ListItem>
<asp:ListItem Value="ARBOLEDA CAMPESTRE ARENILLO">ARBOLEDA CAMPESTRE ARENILLO</asp:ListItem>
<asp:ListItem Value="CIUDAD ROSALEDA - ROSA CELESTE">CIUDAD ROSALEDA - ROSA CELESTE</asp:ListItem>
<asp:ListItem Value="CIUDAD ROSALEDA - ROSA TURQUESA">CIUDAD ROSALEDA - ROSA TURQUESA</asp:ListItem>
<asp:ListItem Value="CIUDAD ROSALEDA - ROSA IMPERIAL">CIUDAD ROSALEDA - ROSA IMPERIAL</asp:ListItem>
<asp:ListItem Value="CIUDAD ROSALEDA - ROSA AMATISTA">CIUDAD ROSALEDA - ROSA AMATISTA</asp:ListItem>
<asp:ListItem Value="BOSQUES DEL RIO NEGRO - BOSQUES ROBLEDAL">BOSQUES DEL RIO NEGRO - BOSQUES ROBLEDAL</asp:ListItem>
</asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Proyecto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px;" 
                    colspan="2">
                    Agrupacion:<br />
                    <asp:TextBox ID="Agrupacion" runat="server" ForeColor="Black" Width="200px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Agrupacion" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px;">
                    Producto:<br />
                    <asp:TextBox ID="Producto" runat="server" ForeColor="Black" Width="200px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Producto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px; " 
                    colspan="4">
                    Las salas de ventas habilitadas para la comunicación son:<br />
                    <asp:DropDownList ID="Sedes" runat="server" ForeColor="Black" Width="250px">
                                            <asp:ListItem></asp:ListItem>
<asp:ListItem Value="Mirolindo">Mirolindo </asp:ListItem>
<asp:ListItem Value="Picalena">Picaleña </asp:ListItem>
<asp:ListItem Value="Lunaria">Lunaria </asp:ListItem>
<asp:ListItem Value="San Jose">San Jose </asp:ListItem>
<asp:ListItem Value="Ciudad del Puerto">Ciudad del Puerto </asp:ListItem>
<asp:ListItem Value="Alameda del Rio">Alameda del Rio </asp:ListItem>
<asp:ListItem Value="Parques de Bolivar Barranquilla">Parques de Bolivar Barranquilla </asp:ListItem>
                                            <asp:ListItem>Caribe Verde</asp:ListItem>
                                            <asp:ListItem>Ricaurte</asp:ListItem>
                                            <asp:ListItem>Reserva de Curinca</asp:ListItem>
                                            <asp:ListItem>Santa Marta Centro</asp:ListItem>
                                            <asp:ListItem>Sabana Grande Fontibón</asp:ListItem>
                                            <asp:ListItem>Salitre Living</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; color: #249e6b; font-weight: bold; font-size: 16px;" 
                    colspan="4">
                    Descripcion:<br />
                    <asp:TextBox ID="Descripcion" runat="server" Width="100%" ForeColor="Black" 
                        Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;" 
                    colspan="2" class="style16">
                    <asp:Button ID="Button1" runat="server" Text="FINALIZAR" 
                        OnClick ="insertsacpqrs" BackColor="#249e6b" BorderColor="#249e6b" 
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#ffffff" 
                        Height="50px" Width="220px" />
                    &nbsp;&nbsp;</td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;" 
                    colspan="2" class="style16">
                    <asp:Button ID="Button4" runat="server" Text="GUARDAR Y CONTINUAR" 
                        OnClick ="insertsacpqrs_gyc" BackColor="#249e6b" BorderColor="#249e6b" 
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#ffffff"  
                        style="white-space:normal;" Height="50px" Width="220px" />
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;" 
                    colspan="2" class="style15">
                    <asp:Button ID="Button3" runat="server" Text="ENCUESTA"  BackColor="#249e6b" BorderColor="#249e6b" 
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#ffffff" 
                        Height="50px" Width="220px" OnClientClick="Transf_Encuesta()" />
                </td>
                <td style="padding: 10px; border: 2px solid #ed7203; text-align:center;" 
                    colspan="2" class="style15">
                    <asp:Button ID="Button2" runat="server" Text="ATRAS" 
                        OnClick ="atras" BackColor="#249e6b" BorderColor="#249e6b" CausesValidation="false"
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#ffffff" 
                        Height="50px" Width="220px" />
                </td>
            </tr>
        </tbody>
    </table>

    <br />


    
    <br />  

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
        Dim check As String = Gestion.Cliente.Texto2
        CheckBox1.Checked = check
        
    End Sub
    
    Protected Sub insertsacpqrs(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = Request.QueryString("tipificacion")
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim tip1 As String = ""
        Dim tip2 As String = ""
        Dim tip3 As String = ""
        Dim tip4 As String = ""
        Dim tip6 As String = ""
        Dim tip7 As String = ""
        Dim proyect As String = ""
        Dim agrupacio As String = ""
        Dim product As String = ""
        Dim descripcio As String = ""
        Dim sede As String = ""
        sede = Sedes.Text
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        tip1 = t1.Text
        tip2 = t2.Text
        tip3 = t3.Text
        tip4 = t4.Text
        tip6 = t6.Text
        tip7 = t7.Text
        proyect = Proyecto.Text
        agrupacio = Agrupacion.Text
        product = Producto.Text
        descripcio = Descripcion.Text
        Response.Redirect("~/Inserttablepv.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tip1=" + tip1 + "&tip2=" + tip2 + "&tip3=" + tip3 + "&tip4=" + tip4 + "&tip6=" + tip6 + "&tip7=" + tip7 + "&proyect=" + proyect + "&agrupacio=" + agrupacio + "&product=" + product + "&descripcio=" + descripcio + "&tipificacion=" + tipificacion + "&sede=" + sede)
    End Sub
    Protected Sub insertsacpqrs_gyc(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tipificacion As String = Request.QueryString("tipificacion")
        Dim idoriginal As String = ""
        Dim Nombre1 As String = ""
        Dim Apellido1 As String = ""
        Dim Nombre2 As String = ""
        Dim Apellido2 As String = ""
        Dim tip1 As String = ""
        Dim tip2 As String = ""
        Dim tip3 As String = ""
        Dim tip4 As String = ""
        Dim tip6 As String = ""
        Dim tip7 As String = ""
        Dim proyect As String = ""
        Dim agrupacio As String = ""
        Dim product As String = ""
        Dim descripcio As String = ""
        Dim sede As String = ""
        sede = Sedes.Text
        idoriginal = DatosCliente_TextBox1.TextValue
        Nombre1 = DatosCliente_TextBox2.TextValue
        Apellido1 = DatosCliente_TextBox3.TextValue
        Apellido2 = DatosCliente_TextBox4.TextValue
        Nombre2 = DatosCliente_TextBox5.TextValue
        tip1 = t1.Text
        tip2 = t2.Text
        tip3 = t3.Text
        tip4 = t4.Text
        tip6 = t6.Text
        tip7 = t7.Text
        proyect = Proyecto.Text
        agrupacio = Agrupacion.Text
        product = Producto.Text
        descripcio = Descripcion.Text
        Response.Redirect("~/Inserttablepv_gyc.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tip1=" + tip1 + "&tip2=" + tip2 + "&tip3=" + tip3 + "&tip4=" + tip4 + "&tip6=" + tip6 + "&tip7=" + tip7 + "&proyect=" + proyect + "&agrupacio=" + agrupacio + "&product=" + product + "&descripcio=" + descripcio + "&tipificacion=" + tipificacion + "&sede=" + sede)
    End Sub
    
    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
    End Sub


</script>
