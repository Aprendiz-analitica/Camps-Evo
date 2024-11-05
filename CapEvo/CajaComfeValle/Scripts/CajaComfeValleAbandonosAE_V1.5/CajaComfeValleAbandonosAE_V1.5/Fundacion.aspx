<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="Site.Master" %>

<%@ Register assembly="VisualEvolutionLibrary" namespace="Icr.Evolution.VisualEvolutionLibrary" tagprefix="evo" %><asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
       <script type="text/javascript" src="Resources/js/Transf_Conf.js"></script>
       <script type="text/javascript">
           function Transf_Encuesta() {
               agentapi.FastTransferActiveCall(6040)
            .done(function () {

            })
            .fail(function (code, cause) {
                alert('Error de transferencia, intente de nuevo');
            });
           }


       </script>
    <style type="text/css">
        .style1
        {
            width: 201px;
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
           text-align:center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <tr>
    <td colspan = "5">
    <table class="formulario" style="width:603px;">        
        <thead>
            <tr>
<th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203 ; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="3" align="center">
                    CONSTRUCTORA BOLIVAR 
                    -
                    DATOS CLIENTE</th>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Numero de Documento:<evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox7" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" ValidatorStyle-ForeColor="Red" Enabled="False" />
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox8" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td 
                    
                    style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style1">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox9" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox10" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Primer apellido:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox11" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox12" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    Fecha actualizacion de datos:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox13" runat="server" 
                        AtributoCliente="Texto3" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="161.5px" TipoTextBox="Date" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    IdOrigen:<br />
                    <evo:DatosCliente_TextBox 
                        ID="DatosCliente_TextBox14" runat="server" 
                        AtributoCliente="Texto1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="Black" 
                        ValueStyle-Width="85%" TipoTextBox="SingleLine" Enabled="False" />
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b ; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="style2">
                    &nbsp;</td>
            </tr>

        </thead>
    </table>
    <table class="formulario" style="width:603px;">        
        <thead>
        </thead>
        <tbody>            
            <tr>
                <th style="border-style: solid solid hidden solid; border-width: 1px; border-color: #ed7203; padding: 5px; text-align:center; background-color: #ed7203; font-size: 16px; color: #FFFFFF; font-weight: bold; height: 29px;" 
                    colspan="3" align="center">
                    FINALIZAR GESTIÓN</th>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti">
                    Origen caso:<br />
                    <asp:DropDownList ID="t1" runat="server" Width="160px" ForeColor="Black" 
                        Enabled="False">
                                            <asp:ListItem Selected="True" Value="Llamada">Llamada</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t1" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti">
                    Programa:<br />
                    <asp:DropDownList ID="t2" runat="server" Width="160px" ForeColor="Black">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem Value="Acceso a Capital">Acceso a Capital </asp:ListItem>
                                            <asp:ListItem Value="Aflora">Aflora </asp:ListItem>
                                            <asp:ListItem Value="Cultivarte">Cultivarte </asp:ListItem>
                                            <asp:ListItem Value="Emprende Pais">Emprende Pais </asp:ListItem>
                                            <asp:ListItem Value="Filarmonica Joven de Colombia">Filarmonica Joven de Colombia </asp:ListItem>
                                            <asp:ListItem Value="Fundacion Bolivar Davivienda">Fundacion Bolivar Davivienda </asp:ListItem>
                                            <asp:ListItem Value="Inversion Social">Inversion Social </asp:ListItem>
                                            <asp:ListItem Value="Mentorias">Mentorias </asp:ListItem>
                                            <asp:ListItem Value="Voluntariado">Voluntariado </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px; border-style: hidden solid solid solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti">
                    Tipo de llamada:<br />
                    <asp:DropDownList ID="t3" runat="server" Width="160px" ForeColor="Black">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Incidente">Incidente </asp:ListItem>
                    <asp:ListItem Value="Llamada entrante">Llamada entrante </asp:ListItem>
                    <asp:ListItem Value="Llamada saliente">Llamada saliente </asp:ListItem>
                    <asp:ListItem Value="Chat">Chat </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t3" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti" colspan="3">
                    Tema:<br />
                    <asp:DropDownList ID="t4" runat="server" ForeColor="Black" Width="160px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem Value="Comunidades">Comunidades </asp:ListItem>
                            <asp:ListItem Value="Convocatorias">Convocatorias </asp:ListItem>
                            <asp:ListItem Value="Eventos">Eventos </asp:ListItem>
                            <asp:ListItem Value="Formacion">Formacion </asp:ListItem>
                            <asp:ListItem Value="Gestion de accesos">Gestion de accesos </asp:ListItem>
                            <asp:ListItem Value="Gestion de Datos">Gestion de Datos </asp:ListItem>
                            <asp:ListItem Value="Informacion del programa">Informacion del programa </asp:ListItem>
                            <asp:ListItem Value="Informacion funcionarios">Informacion funcionarios </asp:ListItem>
                            <asp:ListItem Value="Inscripciones">Inscripciones </asp:ListItem>
                            <asp:ListItem Value="PQRS">PQRS </asp:ListItem>
                            <asp:ListItem Value="Proveedores">Proveedores </asp:ListItem>
                            <asp:ListItem Value="Talento humano">Talento humano </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t4" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;"
                    colspan= "3" class="campoti">
                    Detalle de la solicitud - Razon:<br />
                    <asp:DropDownList ID="t5" runat="server" Width="480px" ForeColor="Black">
                                            <asp:ListItem></asp:ListItem>
<asp:ListItem Value="Acompañamiento en la postulacion">Acompañamiento en la postulacion </asp:ListItem>
<asp:ListItem Value="Acompañamiento realizacion autodiagnostico">Acompañamiento realizacion autodiagnostico </asp:ListItem>
<asp:ListItem Value="Activacion de Usuario / Contactos">Activacion de Usuario / Contactos </asp:ListItem>
<asp:ListItem Value="Actualizacion / Modificacion datos">Actualizacion / Modificacion datos </asp:ListItem>
<asp:ListItem Value="Agendamiento Mentorias">Agendamiento Mentorias </asp:ListItem>
<asp:ListItem Value="Asignacion de un curso o recurso formativo">Asignacion de un curso o recurso formativo </asp:ListItem>
<asp:ListItem Value="Audiciones: Inquietudes del proceso musical, fragmentos, partituras, proceso de evaluacion, dudas tecnico-musicales para preparar la audicion">Audiciones: Inquietudes del proceso musical, fragmentos, partituras, proceso de evaluacion, dudas tecnico-musicales para preparar la audicion </asp:ListItem>
<asp:ListItem Value="Audiciones: Uso de la plataforma">Audiciones: Uso de la plataforma </asp:ListItem>
<asp:ListItem Value="Calificacion o certificacion de un curso">Calificacion o certificacion de un curso </asp:ListItem>
<asp:ListItem Value="Cambio de representante legal / Usuario lider">Cambio de representante legal / Usuario lider </asp:ListItem>
<asp:ListItem Value="Cancelacion Eventos">Cancelacion Eventos </asp:ListItem>
<asp:ListItem Value="Cancelacion menorias">Cancelacion menorias </asp:ListItem>
<asp:ListItem Value="Confirmacion asistencia Eventos">Confirmacion asistencia Eventos </asp:ListItem>
<asp:ListItem Value="Confirmacion de asistencias">Confirmacion de asistencias </asp:ListItem>
<asp:ListItem Value="Confirmacion de asistencias a las jornadas de acuerdo a la descripcion de la jornada que se encuentra en el sistema">Confirmacion de asistencias a las jornadas de acuerdo a la descripcion de la jornada que se encuentra en el sistema </asp:ListItem>
<asp:ListItem Value="Convocatorias">Convocatorias </asp:ListItem>
<asp:ListItem Value="Entrega de soportes de pagos y soportes de certificados tributarios">Entrega de soportes de pagos y soportes de certificados tributarios </asp:ListItem>
<asp:ListItem Value="Estado de la inscripcion">Estado de la inscripcion </asp:ListItem>
<asp:ListItem Value="Estado de la postulacion">Estado de la postulacion </asp:ListItem>
<asp:ListItem Value="Funcionalidad de material o actividad formativa">Funcionalidad de material o actividad formativa </asp:ListItem>
<asp:ListItem Value="Funcionalidad de material o actividad formativa virtual">Funcionalidad de material o actividad formativa virtual </asp:ListItem>
<asp:ListItem Value="Generacion de nota de pruebas de conocimento">Generacion de nota de pruebas de conocimento </asp:ListItem>
<asp:ListItem Value="Generacion y configuracion de certificado">Generacion y configuracion de certificado </asp:ListItem>
<asp:ListItem Value="Inactivacion de usuario / contacto">Inactivacion de usuario / contacto </asp:ListItem>
<asp:ListItem Value="Inactivacion y activacion de organizacion social">Inactivacion y activacion de organizacion social </asp:ListItem>
<asp:ListItem Value="Informacion Conquista Social">Informacion Conquista Social </asp:ListItem>
<asp:ListItem Value="Informacion Curso presencial">Informacion Curso presencial </asp:ListItem>
<asp:ListItem Value="Informacion Cursos Virtuales">Informacion Cursos Virtuales </asp:ListItem>
<asp:ListItem Value="Informacion de beneficios">Informacion de beneficios </asp:ListItem>
<asp:ListItem Value="Informacion de condiciones de facturacion electronica ">Informacion de condiciones de facturacion electronica  </asp:ListItem>
<asp:ListItem Value="Informacion de convocatorias de investigacion">Informacion de convocatorias de investigacion </asp:ListItem>
<asp:ListItem Value="Informacion de datos de contacto de funcionarios de la FBD o de compañias del Grupo Bolivar">Informacion de datos de contacto de funcionarios de la FBD o de compañias del Grupo Bolivar </asp:ListItem>
<asp:ListItem Value="Informacion de estado de pagos y retenciones efectuadas.">Informacion de estado de pagos y retenciones efectuadas. </asp:ListItem>
<asp:ListItem Value="Informacion de horarios y direccion centro de radicacion">Informacion de horarios y direccion centro de radicacion </asp:ListItem>
<asp:ListItem Value="Informacion de la convocatoria">Informacion de la convocatoria </asp:ListItem>
<asp:ListItem Value="Informacion de nivel">Informacion de nivel </asp:ListItem>
<asp:ListItem Value="Informacion de publicaciones">Informacion de publicaciones </asp:ListItem>
<asp:ListItem Value="Informacion de un mensaje que recibio de entrega de unos mercados. ">Informacion de un mensaje que recibio de entrega de unos mercados.  </asp:ListItem>
<asp:ListItem Value="Informacion de vacantes o envio de hojas de vida">Informacion de vacantes o envio de hojas de vida </asp:ListItem>
<asp:ListItem Value="Informacion Diplomado FFAA">Informacion Diplomado FFAA </asp:ListItem>
<asp:ListItem Value="Informacion Escuela de Directores">Informacion Escuela de Directores </asp:ListItem>
<asp:ListItem Value="Informacion eventos aliados">Informacion eventos aliados </asp:ListItem>
<asp:ListItem Value="Informacion general de la Fundacion">Informacion general de la Fundacion </asp:ListItem>
<asp:ListItem Value="Informacion general del programa">Informacion general del programa </asp:ListItem>
<asp:ListItem Value="Informacion general del programa: programas sociales, programa de estimulos, info general.">Informacion general del programa: programas sociales, programa de estimulos, info general. </asp:ListItem>
<asp:ListItem Value="Informacion ruta de desarrollo">Informacion ruta de desarrollo </asp:ListItem>
<asp:ListItem Value="Informacion webinars">Informacion webinars </asp:ListItem>
<asp:ListItem Value="Informes, investigaciones, boletines y rendicion de cuentas de terceros">Informes, investigaciones, boletines y rendicion de cuentas de terceros </asp:ListItem>
<asp:ListItem Value="Instalacion del aplicativo">Instalacion del aplicativo </asp:ListItem>
<asp:ListItem Value="Invitacion a paticipar de eventos">Invitacion a paticipar de eventos </asp:ListItem>
<asp:ListItem Value="Invitacion Eventos">Invitacion Eventos </asp:ListItem>
<asp:ListItem Value="Notificacion de resultados">Notificacion de resultados </asp:ListItem>
<asp:ListItem Value="Ofrecimiento de productos y servicios">Ofrecimiento de productos y servicios </asp:ListItem>
<asp:ListItem Value="Pagos Escuela de Directores">Pagos Escuela de Directores </asp:ListItem>
<asp:ListItem Value="Persona llama de parte de un municipio, alcaldia, entidad territorial, entre otros apedir apoyo para el municipio">Persona llama de parte de un municipio, alcaldia, entidad territorial, entre otros apedir apoyo para el municipio </asp:ListItem>
<asp:ListItem Value="Peticion">Peticion </asp:ListItem>
<asp:ListItem Value="Problemas con acceso a algun servicio de la comunidad">Problemas con acceso a algun servicio de la comunidad </asp:ListItem>
<asp:ListItem Value="Problemas con acceso a comunidades">Problemas con acceso a comunidades </asp:ListItem>
<asp:ListItem Value="Problemas con acceso a la plataforma de asistencia">Problemas con acceso a la plataforma de asistencia </asp:ListItem>
<asp:ListItem Value="Problemas con acceso a la plataforma de formacion">Problemas con acceso a la plataforma de formacion </asp:ListItem>
<asp:ListItem Value="Problemas con acceso a la plataforma de informes">Problemas con acceso a la plataforma de informes </asp:ListItem>
<asp:ListItem Value="Problemas con acceso al proceso de inscripcion">Problemas con acceso al proceso de inscripcion </asp:ListItem>
<asp:ListItem Value="Proceso de inscripciones">Proceso de inscripciones </asp:ListItem>
<asp:ListItem Value="Proceso de inscripciones de organizaciones formalizadas y no formalizadas">Proceso de inscripciones de organizaciones formalizadas y no formalizadas </asp:ListItem>
<asp:ListItem Value="Proceso de validacion de nivel">Proceso de validacion de nivel </asp:ListItem>
<asp:ListItem Value="Queja">Queja </asp:ListItem>
<asp:ListItem Value="Reagendamiento mentorias">Reagendamiento mentorias </asp:ListItem>
<asp:ListItem Value="Reclamo">Reclamo </asp:ListItem>
<asp:ListItem Value="Recoleccion de eval de impacto">Recoleccion de eval de impacto </asp:ListItem>
<asp:ListItem Value="Recordatorio de campañas">Recordatorio de campañas </asp:ListItem>
<asp:ListItem Value="Recordatorio de correccion de documentos y cargue de los mismos">Recordatorio de correccion de documentos y cargue de los mismos </asp:ListItem>
<asp:ListItem Value="Recordatorio finalizacion proceso de inscripcion">Recordatorio finalizacion proceso de inscripcion </asp:ListItem>
<asp:ListItem Value="Recordatorio finalizacion proceso de inscripcion de los seleccionados">Recordatorio finalizacion proceso de inscripcion de los seleccionados </asp:ListItem>
<asp:ListItem Value="Restablecimiento de accesos plataforma">Restablecimiento de accesos plataforma </asp:ListItem>
<asp:ListItem Value="Resultados de la convocatoria">Resultados de la convocatoria </asp:ListItem>
<asp:ListItem Value="Ruta de formalizacion No Formalizadas">Ruta de formalizacion No Formalizadas </asp:ListItem>
<asp:ListItem Value="Solicitud de informacion sobre el uso de la plataforma">Solicitud de informacion sobre el uso de la plataforma </asp:ListItem>
<asp:ListItem Value="Solicitud de revision de indicadores del informe">Solicitud de revision de indicadores del informe </asp:ListItem>
<asp:ListItem Value="Suspender inscripcion a la convocatoria">Suspender inscripcion a la convocatoria </asp:ListItem>

                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t5" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti">
                    Se escalaria a:<br />
                    <asp:DropDownList ID="t6" runat="server" Width="160px" ForeColor="Black">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Adriana Damato">Adriana Damato </asp:ListItem>
                    <asp:ListItem Value="Alejandra Cuellar">Alejandra Cuellar </asp:ListItem>
                    <asp:ListItem Value="Call center Davivienda">Call center Davivienda </asp:ListItem>
                    <asp:ListItem Value="Carlos Buitrago">Carlos Buitrago </asp:ListItem>
                    <asp:ListItem Value="Carlos Pinzon / Juanita Monsalve">Carlos Pinzon / Juanita Monsalve </asp:ListItem>
                    <asp:ListItem Value="Carmen Rosa Rodriguez">Carmen Rosa Rodriguez </asp:ListItem>
                    <asp:ListItem Value="Catalina Pallares">Catalina Pallares </asp:ListItem>
                    <asp:ListItem Value="Clara Jaeger">Clara Jaeger </asp:ListItem>
                    <asp:ListItem Value="Daniela Gaviria">Daniela Gaviria </asp:ListItem>
                    <asp:ListItem Value="Edison Zambrano">Edison Zambrano </asp:ListItem>
                    <asp:ListItem Value="Estefania Amaya">Estefania Amaya </asp:ListItem>
                    <asp:ListItem Value="Isabel Diaz">Isabel Diaz </asp:ListItem>
                    <asp:ListItem Value="Juan Manuel Platin">Juan Manuel Platin </asp:ListItem>
                    <asp:ListItem Value="Julia Clemencia Duque">Julia Clemencia Duque </asp:ListItem>
                    <asp:ListItem Value="Karen Peñuela">Karen Peñuela </asp:ListItem>
                    <asp:ListItem Value="Maria Fernanda Rodriguez">Maria Fernanda Rodriguez </asp:ListItem>
                    <asp:ListItem Value="Mariana Castaño">Mariana Castaño </asp:ListItem>
                    <asp:ListItem Value="Nathalia Pinilla">Nathalia Pinilla </asp:ListItem>
                    <asp:ListItem Value="Ofelia Coronado">Ofelia Coronado </asp:ListItem>
                    <asp:ListItem Value="Paula Cañon">Paula Cañon </asp:ListItem>
                    <asp:ListItem Value="Paula Ojeda">Paula Ojeda </asp:ListItem>
                    <asp:ListItem Value="Paula Perucho">Paula Perucho </asp:ListItem>
                    <asp:ListItem Value="Proveedor Amis - Mariana Castaño">Proveedor Amis - Mariana Castaño </asp:ListItem>
                    <asp:ListItem Value="Sandra Diaz">Sandra Diaz </asp:ListItem>
                    <asp:ListItem Value="Sofia Vasquez">Sofia Vasquez </asp:ListItem>
                    <asp:ListItem Value="YanebiTamayo">YanebiTamayo </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t6" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti">
                    Aplicativo:<br />
                    <asp:DropDownList ID="t7" runat="server" Width="160px" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="AMIS">AMIS </asp:ListItem>
                        <asp:ListItem Value="CAI">CAI </asp:ListItem>
                        <asp:ListItem Value="Elearning">Elearning </asp:ListItem>
                        <asp:ListItem Value="Google">Google </asp:ListItem>
                        <asp:ListItem Value="Informe del responsable">Informe del responsable </asp:ListItem>
                        <asp:ListItem Value="Pagina web">Pagina web </asp:ListItem>
                        <asp:ListItem Value="Salesforce">Salesforce </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t7" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti">
                    Nivel de servicio esperado:<br />
                    <asp:DropDownList ID="t8" runat="server" Width="160px" ForeColor="Black">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1 - 3 dias">1 - 3 dias </asp:ListItem>
                    <asp:ListItem Value="15 dias">15 dias </asp:ListItem>
                    <asp:ListItem Value="El mismo dia">El mismo dia </asp:ListItem>
                    <asp:ListItem Value="semana">semana </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t8" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 5px; border-style: solid; border-width: 1px; border-color: #ed7203; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;"
                    colspan="3" class="campoti">
                    Descripcion:<br />
                    <asp:TextBox ID="Descripcion" runat="server" Width="480px" Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border-style: solid; border-width: 1px; border-color: #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti">
                    <asp:Button ID="Button1" runat="server" Text="Finalizar" 
                        OnClick ="insertsacpqrs" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        Height="50px" Width="160px" BorderWidth="1px" style="white-space:normal;"/>
                </td>
                <td style="border-style: solid; border-width: 1px; border-color: #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti">
                    <asp:Button ID="Button4" runat="server" Text="Guardar y continuar" 
                        OnClick ="insertsacpqrs_gyc" ForeColor="White" BackColor="#2B8B4B" 
                        BorderColor="#2B8B4B" BorderStyle="Solid" Font-Bold="True" Font-Size="14px" 
                        Height="50px" Width="160px" BorderWidth="1px" 
                        style="white-space:normal;" />
                </td>
                <td style="border-style: solid; border-width: 1px; border-color: #ed7203; padding: 5px; color: #249e6b; font-weight: bold; font-size: 14px; width: 201px; vertical-align: middle;" 
                    class="campoti">
                    <input id="Button11" type="button" value="Encuesta" onclick="Transf_Encuesta()" 
                           style="border: 1px solid #2B8B4B; color: #FFFFFF; font-size: 14px; background-color: #2B8B4B; width: 160px; height: 50px; background-image: none; white-space: normal;"
                    onclick="return Button11_onclick()" /></td>
            </tr>
        </tbody>
    </table>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server"></asp:Content>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim newidsujeto As Long = Request.QueryString("newidsujeto")
        Gestion.CargaCliente(newidsujeto)
        
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
        Dim tip5 As String = ""
        Dim tip6 As String = ""
        Dim tip7 As String = ""
        Dim tip8 As String = ""
        Dim sede As String = ""
        Dim descripcio As String = ""
        idoriginal = DatosCliente_TextBox7.TextValue
        Nombre1 = DatosCliente_TextBox8.TextValue
        Apellido1 = DatosCliente_TextBox11.TextValue
        Apellido2 = DatosCliente_TextBox12.TextValue
        Nombre2 = DatosCliente_TextBox9.TextValue
        tip1 = t1.Text
        tip2 = t2.Text
        tip3 = t3.Text
        tip4 = t4.Text
        tip5 = t5.Text
        tip6 = t6.Text
        tip7 = t7.Text
        tip8 = t8.Text
        descripcio = Descripcion.Text
        Response.Redirect("~/Inserttablefund.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tip1=" + tip1 + "&tip2=" + tip2 + "&tip3=" + tip3 + "&tip4=" + tip4 + "&tip5=" + tip5 + "&tip6=" + tip6 + "&tip7=" + tip7 + "&tip8=" + tip8 + "&descripcio=" + descripcio + "&tipificacion=" + tipificacion)
    End Sub
    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/Finales.aspx?newidsujeto=" + newidsujeto)
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
        Dim tip5 As String = ""
        Dim tip6 As String = ""
        Dim tip7 As String = ""
        Dim tip8 As String = ""
        Dim sede As String = ""
        Dim descripcio As String = ""
        idoriginal = DatosCliente_TextBox7.TextValue
        Nombre1 = DatosCliente_TextBox8.TextValue
        Apellido1 = DatosCliente_TextBox11.TextValue
        Apellido2 = DatosCliente_TextBox12.TextValue
        Nombre2 = DatosCliente_TextBox9.TextValue
        tip1 = t1.Text
        tip2 = t2.Text
        tip3 = t3.Text
        tip4 = t4.Text
        tip5 = t5.Text
        tip6 = t6.Text
        tip7 = t7.Text
        tip8 = t8.Text
        descripcio = Descripcion.Text
        Response.Redirect("~/Inserttablefund_cyg.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tip1=" + tip1 + "&tip2=" + tip2 + "&tip3=" + tip3 + "&tip4=" + tip4 + "&tip5=" + tip5 + "&tip6=" + tip6 + "&tip7=" + tip7 + "&tip8=" + tip8 + "&descripcio=" + descripcio + "&tipificacion=" + tipificacion)

    End Sub
</script>
