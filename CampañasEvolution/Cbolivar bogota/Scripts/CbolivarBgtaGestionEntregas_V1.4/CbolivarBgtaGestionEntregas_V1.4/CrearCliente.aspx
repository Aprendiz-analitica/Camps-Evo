<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 201px;
        }
        .style2
        {
            width: 201px;
            height: 30px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
        <script type="text/javascript" src="Resources/js/JQuery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value = "";
            var valorNumDoc = document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value;
            function comienzaConT(cadena) {
                return cadena.charAt(0).toLowerCase() === 't';
            }
            if (comienzaConT(valorNumDoc) == true) {
                document.getElementById("ctl00_MainContent_DatosCliente_TextBox1_textBoxValue").value = "";

            }
            var valorNumTel = document.getElementById("ctl00_MainContent_DatosCliente_TextBox6_textBoxValue").value;
            if (valorNumTel == "00000000") {
                document.getElementById("ctl00_MainContent_DatosCliente_TextBox6_textBoxValue").value = "";

            }

        });
    </script>
    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:100%;">        
        <thead>
            <tr>
                <th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="3" align="center">
                    CREAR CLIENTE</th>
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
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="DatosCliente_TextBox1" 
                        ErrorMessage="Número de documento es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td 
                    
                    style="border-left: 1px solid #ed7203; border-right: 1px solid #ed7203; border-top: 1px hidden #ed7203; border-bottom: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; width: 402px; vertical-align: middle;" 
                    class="style1" colspan="2">
                    Nombre Completo:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="DatosCliente_TextBox2" 
                        ErrorMessage="Nombre Completo es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DatosCliente_TextBox6" 
                        ErrorMessage="Telefono es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td style="border: 1px solid #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; width: 402px; vertical-align: middle;" 
                    class="style2" colspan="2">
                    Proyecto:<br />
                <evo:DatosCliente_DropDownList ID="proyecto" runat="server" Clave="Proyecto" 
                        EtiquetaAuto="False" ForeColor="Black" LabelStyle-Font-Bold="True" 
                        ValueStyle-Width="85%">
                        <asp:ListItem Selected="True"></asp:ListItem>
                        <asp:ListItem Value="127 Living">127 Living</asp:ListItem>
						<asp:ListItem Value="176 Park">176 Park</asp:ListItem>
						<asp:ListItem Value="Acacia-Arboleda del Campestre">Acacia-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Agrupacion 1 de la urbanizacion San Diego">Agrupacion 1 de la urbanizacion San Diego</asp:ListItem>
						<asp:ListItem Value="Agrupacion 2 de la urbanizacion San Diego">Agrupacion 2 de la urbanizacion San Diego</asp:ListItem>
						<asp:ListItem Value="Alameda del Portal Etapa 1">Alameda del Portal Etapa 1</asp:ListItem>
						<asp:ListItem Value="Alameda del Portal Etapa 2">Alameda del Portal Etapa 2</asp:ListItem>
						<asp:ListItem Value="Alameda del Portal Etapa 3">Alameda del Portal Etapa 3</asp:ListItem>
						<asp:ListItem Value="Alameda del Portal Etapa 4">Alameda del Portal Etapa 4</asp:ListItem>
						<asp:ListItem Value="Alamo-Veramonte">Alamo-Veramonte</asp:ListItem>
						<asp:ListItem Value="Albahaca">Albahaca</asp:ListItem>
						<asp:ListItem Value="Alcala">Alcala</asp:ListItem>
						<asp:ListItem Value="Alcaparro-Parques de Bogota">Alcaparro-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Algarrobo-Arboleda del Campestre">Algarrobo-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Aliso-Parques de Bogota">Aliso-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Almendro-Arboleda del Campestre">Almendro-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Almendro-Hacienda Peñalisa">Almendro-Hacienda Peñalisa</asp:ListItem>
						<asp:ListItem Value="Almendros-Reserva del Eden">Almendros-Reserva del Eden</asp:ListItem>
						<asp:ListItem Value="Alsacia Occidental">Alsacia Occidental</asp:ListItem>
						<asp:ListItem Value="Alsacia Real">Alsacia Real</asp:ListItem>
						<asp:ListItem Value="Altos de Fontibon">Altos de Fontibon</asp:ListItem>
						<asp:ListItem Value="Altos de Madrid">Altos de Madrid</asp:ListItem>
						<asp:ListItem Value="Altos de Tibar">Altos de Tibar</asp:ListItem>
						<asp:ListItem Value="Altos del Vinculo-Reserva del Vinculo">Altos del Vinculo-Reserva del Vinculo</asp:ListItem>
						<asp:ListItem Value="Amapola">Amapola</asp:ListItem>
						<asp:ListItem Value="Americas del Tintal">Americas del Tintal</asp:ListItem>
						<asp:ListItem Value="Aranjuez">Aranjuez</asp:ListItem>
						<asp:ListItem Value="Arboleda de San Carlos">Arboleda de San Carlos</asp:ListItem>
						<asp:ListItem Value="Arena-Sotavento">Arena-Sotavento</asp:ListItem>
						<asp:ListItem Value="Arenillo-Arboleda del Campestre">Arenillo-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Arrayan-Parques de Bogota">Arrayan-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Auriga Living VIS-Tramonte">Auriga Living VIS-Tramonte</asp:ListItem>
						<asp:ListItem Value="Austro-Ciudad Cuatro Vientos">Austro-Ciudad Cuatro Vientos</asp:ListItem>
						<asp:ListItem Value="Avellana-Parques de Bogotá">Avellana-Parques de Bogotá</asp:ListItem>
						<asp:ListItem Value="Azularia-Ciudad del Bicentenario">Azularia-Ciudad del Bicentenario</asp:ListItem>
						<asp:ListItem Value="Azur-Ciudad Armonia">Azur-Ciudad Armonia</asp:ListItem>
						<asp:ListItem Value="Balso-Hacienda Peñalisa">Balso-Hacienda Peñalisa</asp:ListItem>
						<asp:ListItem Value="Bambu-Hacienda Peñalisa">Bambu-Hacienda Peñalisa</asp:ListItem>
						<asp:ListItem Value="Barloa-Trivento">Barloa-Trivento</asp:ListItem>
						<asp:ListItem Value="Baviera Park - Baviera Park">Baviera Park - Baviera Park</asp:ListItem>
						<asp:ListItem Value="Baviera Park VIS - Baviera Park">Baviera Park VIS - Baviera Park</asp:ListItem>
						<asp:ListItem Value="Bellavista Imperial">Bellavista Imperial</asp:ListItem>
						<asp:ListItem Value="Bonavento-Bonavento">Bonavento-Bonavento</asp:ListItem>
						<asp:ListItem Value="Bosque Ceibal-Bosques de Rionegro">Bosque Ceibal-Bosques de Rionegro</asp:ListItem>
						<asp:ListItem Value="Bosque de las Americas Etapa 1">Bosque de las Americas Etapa 1</asp:ListItem>
						<asp:ListItem Value="Bosque de las Americas Etapa 2">Bosque de las Americas Etapa 2</asp:ListItem>
						<asp:ListItem Value="Bosque Robledal-Bosques de Rionegro">Bosque Robledal-Bosques de Rionegro</asp:ListItem>
						<asp:ListItem Value="Bosques de Bogota 1">Bosques de Bogota 1</asp:ListItem>
						<asp:ListItem Value="Bosques de Bogota 2">Bosques de Bogota 2</asp:ListItem>
						<asp:ListItem Value="Bosques de Bogota 3">Bosques de Bogota 3</asp:ListItem>
						<asp:ListItem Value="Bosques de Bogota 4">Bosques de Bogota 4</asp:ListItem>
						<asp:ListItem Value="Bosques de Provenza">Bosques de Provenza</asp:ListItem>
						<asp:ListItem Value="Bosques de Zapan Etapa 1">Bosques de Zapan Etapa 1</asp:ListItem>
						<asp:ListItem Value="Bosques de Zapan Etapa 2">Bosques de Zapan Etapa 2</asp:ListItem>
						<asp:ListItem Value="Bosques de Zapan Etapa 3">Bosques de Zapan Etapa 3</asp:ListItem>
						<asp:ListItem Value="Bosques de Zapan Etapa 4">Bosques de Zapan Etapa 4</asp:ListItem>
						<asp:ListItem Value="Bosques de Zapan Etapa 5">Bosques de Zapan Etapa 5</asp:ListItem>
						<asp:ListItem Value="Brisas del Parque">Brisas del Parque</asp:ListItem>
						<asp:ListItem Value="Brisas-Reserva de Curinca">Brisas-Reserva de Curinca</asp:ListItem>
						<asp:ListItem Value="Buena Vista del Mar">Buena Vista del Mar</asp:ListItem>
						<asp:ListItem Value="Buenavista Living">Buenavista Living</asp:ListItem>
						<asp:ListItem Value="Buenavista Living-Veramonte">Buenavista Living-Veramonte</asp:ListItem>
						<asp:ListItem Value="Buganvilla-Parques de Bogota">Buganvilla-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Búho-Alameda del Rio">Búho-Alameda del Rio</asp:ListItem>
						<asp:ListItem Value="Calendula">Calendula</asp:ListItem>
						<asp:ListItem Value="Cambulo-Arboleda Del Campestre">Cambulo-Arboleda Del Campestre</asp:ListItem>
						<asp:ListItem Value="Camino de Los Girasoles">Camino de Los Girasoles</asp:ListItem>
						<asp:ListItem Value="Camino de los Girasoles 2">Camino de los Girasoles 2</asp:ListItem>
						<asp:ListItem Value="Caminos de Bacata">Caminos de Bacata</asp:ListItem>
						<asp:ListItem Value="Caminos de Calamari">Caminos de Calamari</asp:ListItem>
						<asp:ListItem Value="Caminos de San Diego Etapa 1">Caminos de San Diego Etapa 1</asp:ListItem>
						<asp:ListItem Value="Caminos de San Diego Etapa 2">Caminos de San Diego Etapa 2</asp:ListItem>
						<asp:ListItem Value="Caminos de San Diego Etapa 3">Caminos de San Diego Etapa 3</asp:ListItem>
						<asp:ListItem Value="Caminos de San Diego Etapa 4">Caminos de San Diego Etapa 4</asp:ListItem>
						<asp:ListItem Value="Caminos de San Diego Etapa 5">Caminos de San Diego Etapa 5</asp:ListItem>
						<asp:ListItem Value="Caminos de San Diego Etapa 6">Caminos de San Diego Etapa 6</asp:ListItem>
						<asp:ListItem Value="Caminos de San Diego Etapa 7">Caminos de San Diego Etapa 7</asp:ListItem>
						<asp:ListItem Value="Caminos del Vinculo-Reserva del Vinculo">Caminos del Vinculo-Reserva del Vinculo</asp:ListItem>
						<asp:ListItem Value="Campano-Parques de Bogota">Campano-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Canario-Alameda del Río">Canario-Alameda del Río</asp:ListItem>
						<asp:ListItem Value="Canelon-Parque Central Cajica">Canelon-Parque Central Cajica</asp:ListItem>
						<asp:ListItem Value="Caoba-Parques de Bogotá">Caoba-Parques de Bogotá</asp:ListItem>
						<asp:ListItem Value="Cardenal-Alameda del Rio">Cardenal-Alameda del Rio</asp:ListItem>
						<asp:ListItem Value="Casa Grande Etapa 1">Casa Grande Etapa 1</asp:ListItem>
						<asp:ListItem Value="Casa Grande Etapa 2">Casa Grande Etapa 2</asp:ListItem>
						<asp:ListItem Value="Casa Grande Etapa 3">Casa Grande Etapa 3</asp:ListItem>
						<asp:ListItem Value="Casa Grande Etapa 4">Casa Grande Etapa 4</asp:ListItem>
						<asp:ListItem Value="Casas de Portobelo-Villas de San Pablo">Casas de Portobelo-Villas de San Pablo</asp:ListItem>
						<asp:ListItem Value="Casas del Prado">Casas del Prado</asp:ListItem>
						<asp:ListItem Value="Castellana 51-Oceana">Castellana 51-Oceana</asp:ListItem>
						<asp:ListItem Value="Catleya-Aromanzza NO VIS">Catleya-Aromanzza NO VIS</asp:ListItem>
						<asp:ListItem Value="Catleya-Aromanzza VIS">Catleya-Aromanzza VIS</asp:ListItem>
						<asp:ListItem Value="Cedro-Parques de Bogota">Cedro-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Ceiba-Arboleda del Campestre">Ceiba-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Ceiba-Hacienda Peñalisa">Ceiba-Hacienda Peñalisa</asp:ListItem>
						<asp:ListItem Value="Central 68 NO VIS">Central 68 NO VIS</asp:ListItem>
						<asp:ListItem Value="Central 68 VIS">Central 68 VIS</asp:ListItem>
						<asp:ListItem Value="Centro Comercial Ciudad Tintal">Centro Comercial Ciudad Tintal</asp:ListItem>
						<asp:ListItem Value="Centro Comercial Parque Campestre">Centro Comercial Parque Campestre</asp:ListItem>
						<asp:ListItem Value="Cerezo-Parques de Bogota">Cerezo-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Cerezos-Reserva del Eden">Cerezos-Reserva del Eden</asp:ListItem>
						<asp:ListItem Value="Cerros de Provenza">Cerros de Provenza</asp:ListItem>
						<asp:ListItem Value="Cibeles">Cibeles</asp:ListItem>
						<asp:ListItem Value="Ciruelos-Reserva del Eden">Ciruelos-Reserva del Eden</asp:ListItem>
						<asp:ListItem Value="Cisne-Alameda del Río">Cisne-Alameda del Río</asp:ListItem>
						<asp:ListItem Value="Ciudad del Puerto Mall">Ciudad del Puerto Mall</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 1">Ciudad Tintal II Etapa 1</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 10">Ciudad Tintal II Etapa 10</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 11">Ciudad Tintal II Etapa 11</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 2">Ciudad Tintal II Etapa 2</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 3">Ciudad Tintal II Etapa 3</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 4">Ciudad Tintal II Etapa 4</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 5">Ciudad Tintal II Etapa 5</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 6">Ciudad Tintal II Etapa 6</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 7">Ciudad Tintal II Etapa 7</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 8">Ciudad Tintal II Etapa 8</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal II Etapa 9">Ciudad Tintal II Etapa 9</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal Manzana 1 Lote 1">Ciudad Tintal Manzana 1 Lote 1</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal Manzana 1 Lote 2">Ciudad Tintal Manzana 1 Lote 2</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal Manzana 2 Lote 1">Ciudad Tintal Manzana 2 Lote 1</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal Manzana 3 Lote 1">Ciudad Tintal Manzana 3 Lote 1</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal Manzana 5 Lote 1">Ciudad Tintal Manzana 5 Lote 1</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal Manzana 5 Lote 2">Ciudad Tintal Manzana 5 Lote 2</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal Manzana 5 Lote 3">Ciudad Tintal Manzana 5 Lote 3</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal Manzana 6 Lote 1">Ciudad Tintal Manzana 6 Lote 1</asp:ListItem>
						<asp:ListItem Value="Ciudad Tintal Manzana 6 Lote 2">Ciudad Tintal Manzana 6 Lote 2</asp:ListItem>
						<asp:ListItem Value="Ciudadela El Recreo Etapa 1">Ciudadela El Recreo Etapa 1</asp:ListItem>
						<asp:ListItem Value="Ciudadela El Recreo Etapa 2">Ciudadela El Recreo Etapa 2</asp:ListItem>
						<asp:ListItem Value="Ciudadela Portal del Porvenir MZ 1">Ciudadela Portal del Porvenir MZ 1</asp:ListItem>
						<asp:ListItem Value="Ciudadela Portal del Porvenir MZ 2">Ciudadela Portal del Porvenir MZ 2</asp:ListItem>
						<asp:ListItem Value="Ciudadela Portal del Porvenir MZ 3">Ciudadela Portal del Porvenir MZ 3</asp:ListItem>
						<asp:ListItem Value="Colinas del Pinar">Colinas del Pinar</asp:ListItem>
						<asp:ListItem Value="Colinas del Vinculo-Reserva del Vinculo">Colinas del Vinculo-Reserva del Vinculo</asp:ListItem>
						<asp:ListItem Value="Conjunto Residencial Portal del Salitre">Conjunto Residencial Portal del Salitre</asp:ListItem>
						<asp:ListItem Value="Country Reservado">Country Reservado</asp:ListItem>
						<asp:ListItem Value="Dalia">Dalia</asp:ListItem>
						<asp:ListItem Value="Ébano-Veramonte">Ébano-Veramonte</asp:ListItem>
						<asp:ListItem Value="El Encanto-CTQ">El Encanto-CTQ</asp:ListItem>
						<asp:ListItem Value="El Molino-Parque Central Cajicá">El Molino-Parque Central Cajicá</asp:ListItem>
						<asp:ListItem Value="El Prado">El Prado</asp:ListItem>
						<asp:ListItem Value="El Retiro">El Retiro</asp:ListItem>
						<asp:ListItem Value="Entrelomas Etapa 1">Entrelomas Etapa 1</asp:ListItem>
						<asp:ListItem Value="Entrelomas Etapa 2">Entrelomas Etapa 2</asp:ListItem>
						<asp:ListItem Value="Entrelomas Etapa 3">Entrelomas Etapa 3</asp:ListItem>
						<asp:ListItem Value="Entrelomas Etapa 4">Entrelomas Etapa 4</asp:ListItem>
						<asp:ListItem Value="Eucalipto-Parques de Bogota">Eucalipto-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Feijoa">Feijoa</asp:ListItem>
						<asp:ListItem Value="Flora-Reserva de Curinca">Flora-Reserva de Curinca</asp:ListItem>
						<asp:ListItem Value="Floresta">Floresta</asp:ListItem>
						<asp:ListItem Value="Fontanagrande del Portal">Fontanagrande del Portal</asp:ListItem>
						<asp:ListItem Value="Fontanagrande Manzana 1">Fontanagrande Manzana 1</asp:ListItem>
						<asp:ListItem Value="Fontanagrande Manzana 2">Fontanagrande Manzana 2</asp:ListItem>
						<asp:ListItem Value="Fontanagrande Manzana 3">Fontanagrande Manzana 3</asp:ListItem>
						<asp:ListItem Value="Fontanagrande Manzana 4">Fontanagrande Manzana 4</asp:ListItem>
						<asp:ListItem Value="Fontanagrande Manzana 5">Fontanagrande Manzana 5</asp:ListItem>
						<asp:ListItem Value="Fontanagrande Reservado Manzana 1">Fontanagrande Reservado Manzana 1</asp:ListItem>
						<asp:ListItem Value="Fontanagrande Reservado Manzana 2">Fontanagrande Reservado Manzana 2</asp:ListItem>
						<asp:ListItem Value="Garzas-Alameda del Rio">Garzas-Alameda del Rio</asp:ListItem>
						<asp:ListItem Value="Girasoles">Girasoles</asp:ListItem>
						<asp:ListItem Value="Gorrión-Alameda del Río">Gorrión-Alameda del Río</asp:ListItem>
						<asp:ListItem Value="Gratamira Campestre Etapa 1">Gratamira Campestre Etapa 1</asp:ListItem>
						<asp:ListItem Value="Gratamira Campestre Etapa 2">Gratamira Campestre Etapa 2</asp:ListItem>
						<asp:ListItem Value="Gratamira Campestre Etapa 3">Gratamira Campestre Etapa 3</asp:ListItem>
						<asp:ListItem Value="Guacamaya-Alameda del Río">Guacamaya-Alameda del Río</asp:ListItem>
						<asp:ListItem Value="Guadua-Hacienda Peñalisa">Guadua-Hacienda Peñalisa</asp:ListItem>
						<asp:ListItem Value="Gualanday-Arboleda del Campestre">Gualanday-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Guayacan-Parques de Bogota">Guayacan-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Hacienda El Pinar">Hacienda El Pinar</asp:ListItem>
						<asp:ListItem Value="Hacienda El Rosal">Hacienda El Rosal</asp:ListItem>
						<asp:ListItem Value="Hacienda San Andres">Hacienda San Andres</asp:ListItem>
						<asp:ListItem Value="Hacienda San José">Hacienda San José</asp:ListItem>
						<asp:ListItem Value="Hayuelos Reservado">Hayuelos Reservado</asp:ListItem>
						<asp:ListItem Value="Hayuelos Reservado 2">Hayuelos Reservado 2</asp:ListItem>
						<asp:ListItem Value="Hayuelos Reservado 3">Hayuelos Reservado 3</asp:ListItem>
						<asp:ListItem Value="Heliconia">Heliconia</asp:ListItem>
						<asp:ListItem Value="Hortensia">Hortensia</asp:ListItem>
						<asp:ListItem Value="Igua-Arboleda del Campestre">Igua-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Ilarco 114">Ilarco 114</asp:ListItem>
						<asp:ListItem Value="Índigo-Ciudad del Bicentenario">Índigo-Ciudad del Bicentenario</asp:ListItem>
						<asp:ListItem Value="Jacaranda-Arboleda del Campestre">Jacaranda-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Jagua-Arboleda del Campestre">Jagua-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Jardines de Alsacia Etapa 1">Jardines de Alsacia Etapa 1</asp:ListItem>
						<asp:ListItem Value="Jardines de Alsacia Etapa 2">Jardines de Alsacia Etapa 2</asp:ListItem>
						<asp:ListItem Value="Jardines de Castilla Etapa 4">Jardines de Castilla Etapa 4</asp:ListItem>
						<asp:ListItem Value="Jardines de Gratamira Etapa 2">Jardines de Gratamira Etapa 2</asp:ListItem>
						<asp:ListItem Value="Jardines de la Colina Etapa 1">Jardines de la Colina Etapa 1</asp:ListItem>
						<asp:ListItem Value="Jardines de la Colina Etapa 2">Jardines de la Colina Etapa 2</asp:ListItem>
						<asp:ListItem Value="La Castellana">La Castellana</asp:ListItem>
						<asp:ListItem Value="La Cristalina-CTQ">La Cristalina-CTQ</asp:ListItem>
						<asp:ListItem Value="La Estancia">La Estancia</asp:ListItem>
						<asp:ListItem Value="La Estancia II">La Estancia II</asp:ListItem>
						<asp:ListItem Value="La Estancia III">La Estancia III</asp:ListItem>
						<asp:ListItem Value="La Estancia IV">La Estancia IV</asp:ListItem>
						<asp:ListItem Value="La Floresta Living">La Floresta Living</asp:ListItem>
						<asp:ListItem Value="La Gran Reserva">La Gran Reserva</asp:ListItem>
						<asp:ListItem Value="La Gran Reserva Etapa 2">La Gran Reserva Etapa 2</asp:ListItem>
						<asp:ListItem Value="La Gran Reserva Etapa 3">La Gran Reserva Etapa 3</asp:ListItem>
						<asp:ListItem Value="La Lajita-CTQ">La Lajita-CTQ</asp:ListItem>
						<asp:ListItem Value="La Requilina-CTQ">La Requilina-CTQ</asp:ListItem>
						<asp:ListItem Value="Laguna-Reserva de Curinca">Laguna-Reserva de Curinca</asp:ListItem>
						<asp:ListItem Value="Las Huertas">Las Huertas</asp:ListItem>
						<asp:ListItem Value="Las Huertas II">Las Huertas II</asp:ListItem>
						<asp:ListItem Value="Las Violetas-CTQ">Las Violetas-CTQ</asp:ListItem>
						<asp:ListItem Value="Laurel-Arboleda del Campestre">Laurel-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Limonar-Hacienda Peñalisa">Limonar-Hacienda Peñalisa</asp:ListItem>
						<asp:ListItem Value="Linaria">Linaria</asp:ListItem>
						<asp:ListItem Value="Locales Comerciales Avellana">Locales Comerciales Avellana</asp:ListItem>
						<asp:ListItem Value="Locales Comerciales Buganvilla">Locales Comerciales Buganvilla</asp:ListItem>
						<asp:ListItem Value="Loma de Palma">Loma de Palma</asp:ListItem>
						<asp:ListItem Value="Los Alisos-CTQ">Los Alisos-CTQ</asp:ListItem>
						<asp:ListItem Value="Los Cerritos-CTQ">Los Cerritos-CTQ</asp:ListItem>
						<asp:ListItem Value="Los Pinos">Los Pinos</asp:ListItem>
						<asp:ListItem Value="Lunaria">Lunaria</asp:ListItem>
						<asp:ListItem Value="Macana-Veramonte">Macana-Veramonte</asp:ListItem>
						<asp:ListItem Value="Madroño-Arboleda del Campestre">Madroño-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Magenta-Ciudad del Bicentenario">Magenta-Ciudad del Bicentenario</asp:ListItem>
						<asp:ListItem Value="Magnolia">Magnolia</asp:ListItem>
						<asp:ListItem Value="Mallorca-Ciudad Mallorquín">Mallorca-Ciudad Mallorquín</asp:ListItem>
						<asp:ListItem Value="Malta-Ciudad Mallorquín">Malta-Ciudad Mallorquín</asp:ListItem>
						<asp:ListItem Value="Mandarino-Arboleda del Campestre">Mandarino-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Manglar 2-Ciudad Mallorquin">Manglar 2-Ciudad Mallorquin</asp:ListItem>
						<asp:ListItem Value="Manglar-Ciudad Mallorquin">Manglar-Ciudad Mallorquin</asp:ListItem>
						<asp:ListItem Value="Mango-Hacienda Peñalisa">Mango-Hacienda Peñalisa</asp:ListItem>
						<asp:ListItem Value="Manzanares">Manzanares</asp:ListItem>
						<asp:ListItem Value="Manzano-Parques de Bogota">Manzano-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Marawa">Marawa</asp:ListItem>
						<asp:ListItem Value="María Mulata-Alameda del Río">María Mulata-Alameda del Río</asp:ListItem>
						<asp:ListItem Value="Mediterraneo-Alejandria">Mediterraneo-Alejandria</asp:ListItem>
						<asp:ListItem Value="Menta">Menta</asp:ListItem>
						<asp:ListItem Value="Mirador de Minca">Mirador de Minca</asp:ListItem>
						<asp:ListItem Value="Mirador del Este">Mirador del Este</asp:ListItem>
						<asp:ListItem Value="Mirador del Este Etapa 2">Mirador del Este Etapa 2</asp:ListItem>
						<asp:ListItem Value="Mirador del Este Etapa 3">Mirador del Este Etapa 3</asp:ListItem>
						<asp:ListItem Value="Mirador del Pinar">Mirador del Pinar</asp:ListItem>
						<asp:ListItem Value="Mirla-Alameda del Río">Mirla-Alameda del Río</asp:ListItem>
						<asp:ListItem Value="Mistral-Ciudad Cuatro Vientos">Mistral-Ciudad Cuatro Vientos</asp:ListItem>
						<asp:ListItem Value="Mistral-Ciudad Cuatro Vientos NO VIS">Mistral-Ciudad Cuatro Vientos NO VIS</asp:ListItem>
						<asp:ListItem Value="Monarca-Alameda del Rio">Monarca-Alameda del Rio</asp:ListItem>
						<asp:ListItem Value="Natura Living">Natura Living</asp:ListItem>
						<asp:ListItem Value="Natura Living No Vis">Natura Living No Vis</asp:ListItem>
						<asp:ListItem Value="Nevado-Reserva de Curinca">Nevado-Reserva de Curinca</asp:ListItem>
						<asp:ListItem Value="Nogal-Parques de Bogota">Nogal-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Normandia del Parque Etapa 1">Normandia del Parque Etapa 1</asp:ListItem>
						<asp:ListItem Value="Normandia del Parque Etapa 2">Normandia del Parque Etapa 2</asp:ListItem>
						<asp:ListItem Value="Nova-Tramonte">Nova-Tramonte</asp:ListItem>
						<asp:ListItem Value="Novum Ricaurte Vis">Novum Ricaurte Vis</asp:ListItem>
						<asp:ListItem Value="Oceana 52">Oceana 52</asp:ListItem>
						<asp:ListItem Value="Ocobo-Hacienda Peñalisa">Ocobo-Hacienda Peñalisa</asp:ListItem>
						<asp:ListItem Value="Olmo-Veramonte">Olmo-Veramonte</asp:ListItem>
						<asp:ListItem Value="Palma-Arboleda del Campestre">Palma-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Paloemango">Paloemango</asp:ListItem>
						<asp:ListItem Value="Panorama 140">Panorama 140</asp:ListItem>
						<asp:ListItem Value="Paraíso Caribe">Paraíso Caribe</asp:ListItem>
						<asp:ListItem Value="Park Living">Park Living</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa I">Parque Campestre etapa I</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa II">Parque Campestre etapa II</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa III">Parque Campestre etapa III</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa IV">Parque Campestre etapa IV</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa IX">Parque Campestre etapa IX</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa V">Parque Campestre etapa V</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa VI">Parque Campestre etapa VI</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa VII">Parque Campestre etapa VII</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa VIII">Parque Campestre etapa VIII</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa X">Parque Campestre etapa X</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa XI">Parque Campestre etapa XI</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa XII">Parque Campestre etapa XII</asp:ListItem>
						<asp:ListItem Value="Parque Campestre etapa XIII">Parque Campestre etapa XIII</asp:ListItem>
						<asp:ListItem Value="Parque Campestre Etapa XIV">Parque Campestre Etapa XIV</asp:ListItem>
						<asp:ListItem Value="Parque Campestre Etapa XV">Parque Campestre Etapa XV</asp:ListItem>
						<asp:ListItem Value="Parque de la Estacion">Parque de la Estacion</asp:ListItem>
						<asp:ListItem Value="Parque de las Flores Etapa 1 Mz F">Parque de las Flores Etapa 1 Mz F</asp:ListItem>
						<asp:ListItem Value="Parque de las Flores Etapa 2 MZ E">Parque de las Flores Etapa 2 MZ E</asp:ListItem>
						<asp:ListItem Value="Parque de las Flores Etapa 3 Mz D">Parque de las Flores Etapa 3 Mz D</asp:ListItem>
						<asp:ListItem Value="Parque de las Flores Mz J">Parque de las Flores Mz J</asp:ListItem>
						<asp:ListItem Value="Parques de Bolívar Barranquilla">Parques de Bolívar Barranquilla</asp:ListItem>
						<asp:ListItem Value="Parques de Bolívar Barranquilla 2">Parques de Bolívar Barranquilla 2</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Cartagena 1-PBC">Parques de Bolivar Cartagena 1-PBC</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Cartagena 2-PBC">Parques de Bolivar Cartagena 2-PBC</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Cartagena 3-PBC">Parques de Bolivar Cartagena 3-PBC</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Cartagena 4-PBC">Parques de Bolivar Cartagena 4-PBC</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Etapa 1 Cucuta">Parques de Bolivar Etapa 1 Cucuta</asp:ListItem>
						<asp:ListItem Value="Parques de Bolívar Etapa 2 Cúcuta">Parques de Bolívar Etapa 2 Cúcuta</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Etapa 3 Cucuta">Parques de Bolivar Etapa 3 Cucuta</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar La Sierra">Parques de Bolivar La Sierra</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Leandro Diaz Et 1">Parques de Bolivar Leandro Diaz Et 1</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Leandro Diaz Et 2">Parques de Bolivar Leandro Diaz Et 2</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Leandro Diaz Et 3">Parques de Bolivar Leandro Diaz Et 3</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Monteria MZ 1">Parques de Bolivar Monteria MZ 1</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Monteria MZ 2">Parques de Bolivar Monteria MZ 2</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Monteria MZ 3">Parques de Bolivar Monteria MZ 3</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Monteria MZ 4">Parques de Bolivar Monteria MZ 4</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Monteria MZ 6">Parques de Bolivar Monteria MZ 6</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Monteria MZ 7">Parques de Bolivar Monteria MZ 7</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Monteria MZ 8">Parques de Bolivar Monteria MZ 8</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Monteria MZ 9">Parques de Bolivar Monteria MZ 9</asp:ListItem>
						<asp:ListItem Value="Parques de Bolívar Santa Marta Et 1">Parques de Bolívar Santa Marta Et 1</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Santa Marta Et 2">Parques de Bolivar Santa Marta Et 2</asp:ListItem>
						<asp:ListItem Value="Parques de Bolívar Santa Marta Et 3">Parques de Bolívar Santa Marta Et 3</asp:ListItem>
						<asp:ListItem Value="Parques de Bolívar Santa Marta Et 4">Parques de Bolívar Santa Marta Et 4</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Soledad">Parques de Bolivar Soledad</asp:ListItem>
						<asp:ListItem Value="Parques de Bolivar Soledad 2">Parques de Bolivar Soledad 2</asp:ListItem>
						<asp:ListItem Value="Parques de Castilla 1">Parques de Castilla 1</asp:ListItem>
						<asp:ListItem Value="Parques de Castilla 2">Parques de Castilla 2</asp:ListItem>
						<asp:ListItem Value="Parques de Castilla 3">Parques de Castilla 3</asp:ListItem>
						<asp:ListItem Value="Parques de Castilla 4">Parques de Castilla 4</asp:ListItem>
						<asp:ListItem Value="Parques de Castilla 5">Parques de Castilla 5</asp:ListItem>
						<asp:ListItem Value="Parques de Castilla 6">Parques de Castilla 6</asp:ListItem>
						<asp:ListItem Value="Parques de Castilla 7">Parques de Castilla 7</asp:ListItem>
						<asp:ListItem Value="Parques de Castilla 8">Parques de Castilla 8</asp:ListItem>
						<asp:ListItem Value="Parques de Hatogrande">Parques de Hatogrande</asp:ListItem>
						<asp:ListItem Value="Parques de Porvenir Mosquera">Parques de Porvenir Mosquera</asp:ListItem>
						<asp:ListItem Value="Parques del Tunal Manzana 1">Parques del Tunal Manzana 1</asp:ListItem>
						<asp:ListItem Value="Parques del Tunal Manzana 4">Parques del Tunal Manzana 4</asp:ListItem>
						<asp:ListItem Value="Parques del Tunal Manzana 5">Parques del Tunal Manzana 5</asp:ListItem>
						<asp:ListItem Value="Parques del Tunal Manzana 6">Parques del Tunal Manzana 6</asp:ListItem>
						<asp:ListItem Value="Parques del Tunal Manzana 7">Parques del Tunal Manzana 7</asp:ListItem>
						<asp:ListItem Value="Payandé-Arboleda del Campestre">Payandé-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Pinar de la Fontana 1">Pinar de la Fontana 1</asp:ListItem>
						<asp:ListItem Value="Pinar de la Fontana 2">Pinar de la Fontana 2</asp:ListItem>
						<asp:ListItem Value="Pinar de la Fontana 3">Pinar de la Fontana 3</asp:ListItem>
						<asp:ListItem Value="Pinar de la Fontana 4">Pinar de la Fontana 4</asp:ListItem>
						<asp:ListItem Value="Pino-Parques de Bogota">Pino-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Plazuela de alamos Manzana 1">Plazuela de alamos Manzana 1</asp:ListItem>
						<asp:ListItem Value="Plazuela de alamos Manzana 2">Plazuela de alamos Manzana 2</asp:ListItem>
						<asp:ListItem Value="Poblado-Reserva de Curinca">Poblado-Reserva de Curinca</asp:ListItem>
						<asp:ListItem Value="Portal de Autopista">Portal de Autopista</asp:ListItem>
						<asp:ListItem Value="Portal de Madelena">Portal de Madelena</asp:ListItem>
						<asp:ListItem Value="Portal del Porvenir Etapa 1">Portal del Porvenir Etapa 1</asp:ListItem>
						<asp:ListItem Value="Portal del Porvenir Etapa 2">Portal del Porvenir Etapa 2</asp:ListItem>
						<asp:ListItem Value="Portal del Porvenir Etapa 3">Portal del Porvenir Etapa 3</asp:ListItem>
						<asp:ListItem Value="Portus-Alejandría">Portus-Alejandría</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 1">Porvenir Reservado 1</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 10">Porvenir Reservado 10</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 11">Porvenir Reservado 11</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 12">Porvenir Reservado 12</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 13">Porvenir Reservado 13</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 2">Porvenir Reservado 2</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 3">Porvenir Reservado 3</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 4">Porvenir Reservado 4</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 5">Porvenir Reservado 5</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 6">Porvenir Reservado 6</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 7">Porvenir Reservado 7</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 8">Porvenir Reservado 8</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado 9">Porvenir Reservado 9</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado Casas 1">Porvenir Reservado Casas 1</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado Casas 2">Porvenir Reservado Casas 2</asp:ListItem>
						<asp:ListItem Value="Porvenir Reservado Casas 3">Porvenir Reservado Casas 3</asp:ListItem>
						<asp:ListItem Value="Pradera de Fontibon 3">Pradera de Fontibon 3</asp:ListItem>
						<asp:ListItem Value="Pradera de Fontibon 4">Pradera de Fontibon 4</asp:ListItem>
						<asp:ListItem Value="Prado Park">Prado Park</asp:ListItem>
						<asp:ListItem Value="Prados de Sotavento Etapa 1">Prados de Sotavento Etapa 1</asp:ListItem>
						<asp:ListItem Value="Prados de Sotavento Etapa 3">Prados de Sotavento Etapa 3</asp:ListItem>
						<asp:ListItem Value="Puerto Acordeón-Ciudad del Puerto">Puerto Acordeón-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Armonica-Ciudad del Puerto">Puerto Armonica-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Bongoe-Ciudad del Puerto">Puerto Bongoe-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Campana-Ciudad del Puerto">Puerto Campana-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Celesta-Ciudad del Puerto">Puerto Celesta-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Cimbalo-Ciudad del Puerto">Puerto Cimbalo-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Clarinete-Ciudad del Puerto">Puerto Clarinete-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Conga-Ciudad del Puerto">Puerto Conga-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Cumbia-Ciudad del Puerto">Puerto Cumbia-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Flauta-Ciudad del Puerto">Puerto Flauta-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Gaita-Ciudad del Puerto">Puerto Gaita-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Guitarra-Ciudad del Puerto">Puerto Guitarra-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Lira-Ciudad del Puerto">Puerto Lira-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Millo-Ciudad del Puerto">Puerto Millo-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Tambora-Ciudad del Puerto">Puerto Tambora-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Puerto Timbal-Ciudad del Puerto">Puerto Timbal-Ciudad del Puerto</asp:ListItem>
						<asp:ListItem Value="Quintas de la 80">Quintas de la 80</asp:ListItem>
						<asp:ListItem Value="Quintas de la Autopista Etapa 1">Quintas de la Autopista Etapa 1</asp:ListItem>
						<asp:ListItem Value="Quintas de la Autopista Etapa 2">Quintas de la Autopista Etapa 2</asp:ListItem>
						<asp:ListItem Value="Recodo de Alsacia">Recodo de Alsacia</asp:ListItem>
						<asp:ListItem Value="Recreo Reservado Etapa 1">Recreo Reservado Etapa 1</asp:ListItem>
						<asp:ListItem Value="Recreo Reservado Etapa 2">Recreo Reservado Etapa 2</asp:ListItem>
						<asp:ListItem Value="Recreo Reservado Etapa 3">Recreo Reservado Etapa 3</asp:ListItem>
						<asp:ListItem Value="Recreo Reservado Etapa 4">Recreo Reservado Etapa 4</asp:ListItem>
						<asp:ListItem Value="Reserva de Lunaria">Reserva de Lunaria</asp:ListItem>
						<asp:ListItem Value="Reserva de San Agustin">Reserva de San Agustin</asp:ListItem>
						<asp:ListItem Value="Reserva de San Agustin II">Reserva de San Agustin II</asp:ListItem>
						<asp:ListItem Value="Reserva de San Agustin III">Reserva de San Agustin III</asp:ListItem>
						<asp:ListItem Value="Reserva de San Luis">Reserva de San Luis</asp:ListItem>
						<asp:ListItem Value="Ribera Alta-La Concepción">Ribera Alta-La Concepción</asp:ListItem>
						<asp:ListItem Value="Roble-Parques de Bogota">Roble-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Rosa Amatista-Ciudad Rosaleda">Rosa Amatista-Ciudad Rosaleda</asp:ListItem>
						<asp:ListItem Value="Rosa Celeste-Ciudad Rosaleda">Rosa Celeste-Ciudad Rosaleda</asp:ListItem>
						<asp:ListItem Value="Rosa Imperial-Ciudad Rosaleda">Rosa Imperial-Ciudad Rosaleda</asp:ListItem>
						<asp:ListItem Value="Rosa Turquesa-Ciudad Rosaleda">Rosa Turquesa-Ciudad Rosaleda</asp:ListItem>
						<asp:ListItem Value="Rosa Violeta-Ciudad Rosaleda">Rosa Violeta-Ciudad Rosaleda</asp:ListItem>
						<asp:ListItem Value="ROSALES-PARQUE CENTRAL CAJICÁ">ROSALES-PARQUE CENTRAL CAJICÁ</asp:ListItem>
						<asp:ListItem Value="Sabana Verde Etapa 1">Sabana Verde Etapa 1</asp:ListItem>
						<asp:ListItem Value="Sabana Verde Etapa 2">Sabana Verde Etapa 2</asp:ListItem>
						<asp:ListItem Value="Sabanagrande Reservado Etapa 1">Sabanagrande Reservado Etapa 1</asp:ListItem>
						<asp:ListItem Value="Sabanagrande Reservado Etapa 2">Sabanagrande Reservado Etapa 2</asp:ListItem>
						<asp:ListItem Value="Sabanagrande Reservado Etapa 3">Sabanagrande Reservado Etapa 3</asp:ListItem>
						<asp:ListItem Value="Sabanagrande Reservado Etapa 4">Sabanagrande Reservado Etapa 4</asp:ListItem>
						<asp:ListItem Value="Salitre Living">Salitre Living</asp:ListItem>
						<asp:ListItem Value="Saman-Arboleda del Campestre">Saman-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="San Diego Reservado">San Diego Reservado</asp:ListItem>
						<asp:ListItem Value="Sandalo">Sandalo</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 1">Santa Helena Etapa 1</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 10">Santa Helena Etapa 10</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 11">Santa Helena Etapa 11</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 2">Santa Helena Etapa 2</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 3">Santa Helena Etapa 3</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 4">Santa Helena Etapa 4</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 5">Santa Helena Etapa 5</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 6">Santa Helena Etapa 6</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 7">Santa Helena Etapa 7</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 8">Santa Helena Etapa 8</asp:ListItem>
						<asp:ListItem Value="Santa Helena Etapa 9">Santa Helena Etapa 9</asp:ListItem>
						<asp:ListItem Value="Santa Maria Reservado Etapa 1">Santa Maria Reservado Etapa 1</asp:ListItem>
						<asp:ListItem Value="Santa Maria Reservado Etapa 2">Santa Maria Reservado Etapa 2</asp:ListItem>
						<asp:ListItem Value="Santa Maria Reservado Etapa 3">Santa Maria Reservado Etapa 3</asp:ListItem>
						<asp:ListItem Value="Sauce-Parques de Bogota">Sauce-Parques de Bogota</asp:ListItem>
						<asp:ListItem Value="Sauco-Parques de Bogotá">Sauco-Parques de Bogotá</asp:ListItem>
						<asp:ListItem Value="Senderos de Fontibon">Senderos de Fontibon</asp:ListItem>
						<asp:ListItem Value="Senderos de Fontibon NO VIS">Senderos de Fontibon NO VIS</asp:ListItem>
						<asp:ListItem Value="Senderos de Fontibon VIS">Senderos de Fontibon VIS</asp:ListItem>
						<asp:ListItem Value="Senderos-Reserva de Curinca">Senderos-Reserva de Curinca</asp:ListItem>
						<asp:ListItem Value="Serraluna">Serraluna</asp:ListItem>
						<asp:ListItem Value="Sol de San Carlos">Sol de San Carlos</asp:ListItem>
						<asp:ListItem Value="Sol de San Carlos Etapa 2">Sol de San Carlos Etapa 2</asp:ListItem>
						<asp:ListItem Value="Tagua-Hacienda Peñalisa">Tagua-Hacienda Peñalisa</asp:ListItem>
						<asp:ListItem Value="Teca-Veramonte">Teca-Veramonte</asp:ListItem>
						<asp:ListItem Value="Tenerife-Alejandría">Tenerife-Alejandría</asp:ListItem>
						<asp:ListItem Value="Terragrande 1">Terragrande 1</asp:ListItem>
						<asp:ListItem Value="Terragrande 2 Etapa 1">Terragrande 2 Etapa 1</asp:ListItem>
						<asp:ListItem Value="Terragrande 2 Etapa 2">Terragrande 2 Etapa 2</asp:ListItem>
						<asp:ListItem Value="Terragrande 2 Etapa 3">Terragrande 2 Etapa 3</asp:ListItem>
						<asp:ListItem Value="Terragrande 2 Etapa 4">Terragrande 2 Etapa 4</asp:ListItem>
						<asp:ListItem Value="Terragrande 3 Etapa 1">Terragrande 3 Etapa 1</asp:ListItem>
						<asp:ListItem Value="Terragrande 3 Etapa 2">Terragrande 3 Etapa 2</asp:ListItem>
						<asp:ListItem Value="Terragrande 3 Etapa 3">Terragrande 3 Etapa 3</asp:ListItem>
						<asp:ListItem Value="Terragrande 4 Etapa 1">Terragrande 4 Etapa 1</asp:ListItem>
						<asp:ListItem Value="Terragrande 4 Etapa 2">Terragrande 4 Etapa 2</asp:ListItem>
						<asp:ListItem Value="Terragrande 4 Etapa 3">Terragrande 4 Etapa 3</asp:ListItem>
						<asp:ListItem Value="Terragrande 5 Etapa 4">Terragrande 5 Etapa 4</asp:ListItem>
						<asp:ListItem Value="Terrazas del Puerto">Terrazas del Puerto</asp:ListItem>
						<asp:ListItem Value="Tierra Buena del Porvenir Etapa 1">Tierra Buena del Porvenir Etapa 1</asp:ListItem>
						<asp:ListItem Value="Tierra Buena del Porvenir Etapa 2">Tierra Buena del Porvenir Etapa 2</asp:ListItem>
						<asp:ListItem Value="Tierra Buena Reservado Etapa 1">Tierra Buena Reservado Etapa 1</asp:ListItem>
						<asp:ListItem Value="Tierra Buena Reservado Etapa 2">Tierra Buena Reservado Etapa 2</asp:ListItem>
						<asp:ListItem Value="Torcaza-Alameda del Río">Torcaza-Alameda del Río</asp:ListItem>
						<asp:ListItem Value="Tórtola-Alameda del Río">Tórtola-Alameda del Río</asp:ListItem>
						<asp:ListItem Value="Totumo-Arboleda del Campestre">Totumo-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Tramonte Living NO VIS-Tramonte">Tramonte Living NO VIS-Tramonte</asp:ListItem>
						<asp:ListItem Value="Tramonte Living VIS-Tramonte">Tramonte Living VIS-Tramonte</asp:ListItem>
						<asp:ListItem Value="Tucán-Alameda del Río">Tucán-Alameda del Río</asp:ListItem>
						<asp:ListItem Value="Urapan-Parques de Bogotá">Urapan-Parques de Bogotá</asp:ListItem>
						<asp:ListItem Value="Urbana 30">Urbana 30</asp:ListItem>
						<asp:ListItem Value="Urbana 30 No Vis">Urbana 30 No Vis</asp:ListItem>
						<asp:ListItem Value="Urbanizacion La Gloria Manzana I">Urbanizacion La Gloria Manzana I</asp:ListItem>
						<asp:ListItem Value="Urbanizacion La Gloria Manzana II">Urbanizacion La Gloria Manzana II</asp:ListItem>
						<asp:ListItem Value="Urbanizacion La Gloria Manzana III">Urbanizacion La Gloria Manzana III</asp:ListItem>
						<asp:ListItem Value="Vainillo-Arboleda del Campestre">Vainillo-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Vento-Sotavento">Vento-Sotavento</asp:ListItem>
						<asp:ListItem Value="Veramonte Living">Veramonte Living</asp:ListItem>
						<asp:ListItem Value="Vibratto-Sotavento">Vibratto-Sotavento</asp:ListItem>
						<asp:ListItem Value="Victoria I">Victoria I</asp:ListItem>
						<asp:ListItem Value="Victoria II">Victoria II</asp:ListItem>
						<asp:ListItem Value="Villas de Alcala">Villas de Alcala</asp:ListItem>
						<asp:ListItem Value="Villas del Puerto">Villas del Puerto</asp:ListItem>
						<asp:ListItem Value="VIZCAINA-AROMANZZA">VIZCAINA-AROMANZZA</asp:ListItem>
						<asp:ListItem Value="Yarumo-Arboleda del Campestre">Yarumo-Arboleda del Campestre</asp:ListItem>
						<asp:ListItem Value="Zibal-Tramonte">Zibal-Tramonte</asp:ListItem>
</evo:DatosCliente_DropDownList> 
                 
                 
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="proyecto" 
                        ErrorMessage="Proyecto es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Proceso:<br />
                <evo:DatosCliente_DropDownList ID="proceso" runat="server" Clave="Proceso" 
                        EtiquetaAuto="False" ForeColor="Black" LabelStyle-Font-Bold="True" 
                        ValueStyle-Width="85%">
                        <asp:ListItem Selected="True"></asp:ListItem>
                        <asp:ListItem Value="1. Sheets Entregas">1. Sheets Entregas</asp:ListItem>
                        <asp:ListItem>2. Apoyo Reportes CEV</asp:ListItem>
                </evo:DatosCliente_DropDownList> 
                 
                 
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="proceso" 
                        ErrorMessage="Proceso es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Fecha de asignacion:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="Texto1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" TipoTextBox="Date" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DatosCliente_TextBox7" 
                        ErrorMessage="Fecha de asignacion es obligatorio" Font-Size="X-Small"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan = "3" 
                    style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; text-align:center; width: 201px; vertical-align: middle; font-weight: bold; font-size: 14px; color: #249e6b;">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Guardar Datos" />
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


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        DatoClienteComponentHelper.GuardaDatosCliente()       
        Response.Redirect("~/Crear_Cliente_Identificar.aspx?idsujeto=" + Gestion.Cliente.IdSujeto.ToString)
    End Sub
</script>
