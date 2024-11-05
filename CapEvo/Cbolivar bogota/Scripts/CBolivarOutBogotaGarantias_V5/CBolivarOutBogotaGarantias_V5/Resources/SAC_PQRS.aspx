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
            width: 290px;
        }
        .style10
        {
            width: 290px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
     
    <table class="formulario" style="width:70%;">        
        <thead>
            <tr>
                <th style="border-color: #f8db66; border-style: hidden hidden solid hidden; border-width: 2px; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    colspan="3" align="center" class="style8">
                    &nbsp;</th>
            </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; font-weight: bold; " 
                    colspan="3" align="center" class="style8">
                    Constructora Bolivar Inbound<br />
                    Datos</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Numero de Documento:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox1" runat="server" 
                        AtributoCliente="IdOriginal" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style9">
                    Primer nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox2" runat="server" 
                        AtributoCliente="Nombre" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Segundo nombre:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox5" runat="server" 
                        AtributoCliente="NombreCompleto" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Numero de Telefono:<br />
                    <evo:DatosCliente_TextBox ID="DatosCliente_TextBox6" runat="server" 
                        AtributoCliente="Telefono" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style9">
                    Primer apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox3" runat="server" 
                        AtributoCliente="Apellido1" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                    <br />
                    </td>
                <td 
                    style="border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style3">
                    Segundo apellido:<evo:DatosCliente_TextBox ID="DatosCliente_TextBox4" runat="server" 
                        AtributoCliente="Apellido2" EtiquetaAuto="False" 
                        LabelStyle-Font-Bold="True" ValueStyle-ForeColor="#F8DB66" 
                        ValueStyle-Width="94%" Enabled="False" />
                </td>
            </tr>
            <tr>
                <th style="border: 2px solid #f8db66; text-align:center; background-color: #28a745; font-size: 20px; color: #f8db66; " 
                    colspan="3" align="center">
                    Finalizar Gestion</th>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; ">
                    <asp:DropDownList ID="t1" runat="server" ForeColor="Black" Width="250px" 
                        Enabled="False" Visible="False">
                        <asp:ListItem Value="ChatBot">ChatBot</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    class="style10">
                    ¿Cierre en primer contacto?<br />
                    <asp:DropDownList ID="t2" runat="server" Width="250px" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>SI</asp:ListItem>
                        <asp:ListItem Value="NO">NO</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t2" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; ">
                    Motivo:<br />
                    <asp:DropDownList ID="t3" runat="server" Height="25px" Width="250px" 
                        ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Felicitacion ">Felicitacion </asp:ListItem>
                        <asp:ListItem Value="Peticion ">Peticion </asp:ListItem>
                        <asp:ListItem Value="Queja">Queja</asp:ListItem>
                        <asp:ListItem Value="Reclamo ">Reclamo </asp:ListItem>

                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t3" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-size: 16px;" 
                    colspan="3">
                    Momento:<br />
                    <asp:DropDownList ID="t4" runat="server" Width="350px" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Cesiones, traslados y desistimientos">Cesiones, traslados y desistimientos </asp:ListItem>
                        <asp:ListItem Value="Escrituracion">Escrituracion </asp:ListItem>
                        <asp:ListItem Value="Inmueble Entregado">Inmueble Entregado </asp:ListItem>
                        <asp:ListItem Value="Promesa">Promesa </asp:ListItem>
                        <asp:ListItem Value="Separacion del Inmueble">Separacion del Inmueble </asp:ListItem>

                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t4" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="3">
                    Necesidad:<br />
                    <asp:DropDownList ID="t5" runat="server" Width="350px" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Bolivar Contigo">Bolivar Contigo </asp:ListItem>
<asp:ListItem Value="Cesantias o ahorros programados">Cesantias o ahorros programados </asp:ListItem>
<asp:ListItem Value="Cesion">Cesion </asp:ListItem>
<asp:ListItem Value="Creditos">Creditos </asp:ListItem>
<asp:ListItem Value="Desarrollo de la Obra">Desarrollo de la Obra </asp:ListItem>
<asp:ListItem Value="Desistimiento ( Terminacion del negocio)">Desistimiento ( Terminacion del negocio) </asp:ListItem>
<asp:ListItem Value="Documentos y certificaciones">Documentos y certificaciones </asp:ListItem>
<asp:ListItem Value="Escrituras">Escrituras </asp:ListItem>
<asp:ListItem Value="Pagos del inmueble">Pagos del inmueble </asp:ListItem>
<asp:ListItem Value="Posterior a la entrega">Posterior a la entrega </asp:ListItem>
<asp:ListItem Value="Promesa de Compraventa">Promesa de Compraventa </asp:ListItem>
<asp:ListItem Value="Separacion del inmueble">Separacion del inmueble </asp:ListItem>
<asp:ListItem Value="Sobre el cliente">Sobre el cliente </asp:ListItem>
<asp:ListItem Value="Sobre la entrega del inmueble">Sobre la entrega del inmueble </asp:ListItem>
<asp:ListItem Value="Sobre nuestra Asesoria">Sobre nuestra Asesoria </asp:ListItem>
<asp:ListItem Value="Subsidios">Subsidios </asp:ListItem>
<asp:ListItem Value="Traslado ( sobre mi negocio, Acerca del inmueble)">Traslado ( sobre mi negocio, Acerca del inmueble) </asp:ListItem>

                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t5" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="3">
                    Actividad (SAC):<br />
                    <asp:DropDownList ID="t7" runat="server" Width="700px" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                       <asp:ListItem Value="Acerca de los tramites de Cesantias o ahorros programados">Acerca de los tramites de Cesantias o ahorros programados </asp:ListItem>
<asp:ListItem Value="Acerca de los tramites de credito">Acerca de los tramites de credito </asp:ListItem>
<asp:ListItem Value="Acerca de los tramites de Subsidio">Acerca de los tramites de Subsidio </asp:ListItem>
<asp:ListItem Value="Asesoria Brindada (capacidad, infomacion y actitud)">Asesoria Brindada (capacidad, infomacion y actitud) </asp:ListItem>
<asp:ListItem Value="Cambio de Titular">Cambio de Titular </asp:ListItem>
<asp:ListItem Value="Cambios en el Subsidio">Cambios en el Subsidio </asp:ListItem>
<asp:ListItem Value="Datos Personales">Datos Personales </asp:ListItem>
<asp:ListItem Value="Desembolso de Credito">Desembolso de Credito </asp:ListItem>
<asp:ListItem Value="Diseño y planos ">Diseño y planos  </asp:ListItem>
<asp:ListItem Value="Eliminar Titular">Eliminar Titular </asp:ListItem>
<asp:ListItem Value="Entrega de documento por el cliente">Entrega de documento por el cliente </asp:ListItem>
<asp:ListItem Value="Escritura">Escritura </asp:ListItem>
<asp:ListItem Value="Incluir Titular">Incluir Titular </asp:ListItem>
<asp:ListItem Value="Informacion Bolivar contigo">Informacion Bolivar contigo </asp:ListItem>
<asp:ListItem Value="Informacion del estado de cuenta">Informacion del estado de cuenta </asp:ListItem>
<asp:ListItem Value="Informacion y requisito para terminar negociacion ">Informacion y requisito para terminar negociacion  </asp:ListItem>
<asp:ListItem Value="Legalizacion de Credito">Legalizacion de Credito </asp:ListItem>
<asp:ListItem Value="Modificacion plan de pagos ">Modificacion plan de pagos  </asp:ListItem>
<asp:ListItem Value="Promesa de compraventa">Promesa de compraventa </asp:ListItem>
<asp:ListItem Value="Servicios publicos del Inmueble">Servicios publicos del Inmueble </asp:ListItem>
<asp:ListItem Value="Sobre el documento ">Sobre el documento  </asp:ListItem>
<asp:ListItem Value="Sobre el proceso">Sobre el proceso </asp:ListItem>
<asp:ListItem Value="Sobre el Proyecto">Sobre el Proyecto </asp:ListItem>
<asp:ListItem Value="Sobre la entrega del inmueble">Sobre la entrega del inmueble </asp:ListItem>
<asp:ListItem Value="Solicitud de prorroga">Solicitud de prorroga </asp:ListItem>
<asp:ListItem Value="Solicitud de terminacion de la negociacion">Solicitud de terminacion de la negociacion </asp:ListItem>
<asp:ListItem Value="Solicitudes de certificado">Solicitudes de certificado </asp:ListItem>
<asp:ListItem Value="Traslado de proyectos e inmuebles">Traslado de proyectos e inmuebles </asp:ListItem>
<asp:ListItem Value="Venta Pactada">Venta Pactada </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t7" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="3">
                    Razon:<br />
                    <asp:DropDownList ID="t6" runat="server" Width="700px" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Actualizacion de datos">Actualizacion de datos </asp:ListItem>
<asp:ListItem Value="Adicionar/Incluir Titular ">Adicionar/Incluir Titular  </asp:ListItem>
<asp:ListItem Value="Afectacion fisica y/o economica por incumplimiento en la fecha de firma del documento">Afectacion fisica y/o economica por incumplimiento en la fecha de firma del documento </asp:ListItem>
<asp:ListItem Value="Ahorro programado">Ahorro programado </asp:ListItem>
<asp:ListItem Value="Ajuste de entidad finaciera o forma de pago">Ajuste de entidad finaciera o forma de pago </asp:ListItem>
<asp:ListItem Value="Ajuste de entidad subsidio o valor subsidio">Ajuste de entidad subsidio o valor subsidio </asp:ListItem>
<asp:ListItem Value="Ajuste en datos del cliente en el documento">Ajuste en datos del cliente en el documento </asp:ListItem>
<asp:ListItem Value="Ajuste en el valor pactado del inmueble">Ajuste en el valor pactado del inmueble </asp:ListItem>
<asp:ListItem Value="Ajustes en los kits de acabados">Ajustes en los kits de acabados </asp:ListItem>
<asp:ListItem Value="Aprobacion credito por menor valor">Aprobacion credito por menor valor </asp:ListItem>
<asp:ListItem Value="Aprobacion menor valor">Aprobacion menor valor </asp:ListItem>
<asp:ListItem Value="Ayuda para diligenciar el formato de Postulacion">Ayuda para diligenciar el formato de Postulacion </asp:ListItem>
<asp:ListItem Value="Calamidad domestica">Calamidad domestica </asp:ListItem>
<asp:ListItem Value="Calamidad Domestica">Calamidad Domestica </asp:ListItem>
<asp:ListItem Value="Calamidad problemas familiares">Calamidad problemas familiares </asp:ListItem>
<asp:ListItem Value="Cancelacion del proyecto">Cancelacion del proyecto </asp:ListItem>
<asp:ListItem Value="Ceder 100% del inmueble">Ceder 100% del inmueble </asp:ListItem>
<asp:ListItem Value="Certificado de Tradicion Libertad del Lote">Certificado de Tradicion Libertad del Lote </asp:ListItem>
<asp:ListItem Value="Certificado de Tradicion y Libertad del Inmueble">Certificado de Tradicion y Libertad del Inmueble </asp:ListItem>
<asp:ListItem Value="Cesantias">Cesantias </asp:ListItem>
<asp:ListItem Value="Cliente fuera de la Ciudad o fuera del pais">Cliente fuera de la Ciudad o fuera del pais </asp:ListItem>
<asp:ListItem Value="Constancia pagare firmado">Constancia pagare firmado </asp:ListItem>
<asp:ListItem Value="Consultas sobre vigencia del subsidio">Consultas sobre vigencia del subsidio </asp:ListItem>
<asp:ListItem Value="Continuar con la negociacion">Continuar con la negociacion </asp:ListItem>
<asp:ListItem Value="Contrato suspendido">Contrato suspendido </asp:ListItem>
<asp:ListItem Value="Copia del documento previo a firma">Copia del documento previo a firma </asp:ListItem>
<asp:ListItem Value="Copia firmada del documento">Copia firmada del documento </asp:ListItem>
<asp:ListItem Value="Copia Manual del propietario y/o acta de entrega">Copia Manual del propietario y/o acta de entrega </asp:ListItem>
<asp:ListItem Value="Credito sin tramitar">Credito sin tramitar </asp:ListItem>
<asp:ListItem Value="Devolucion Valor Separacion">Devolucion Valor Separacion </asp:ListItem>
<asp:ListItem Value="Disminucion de ingresos">Disminucion de ingresos </asp:ListItem>
<asp:ListItem Value="Documentos para la instalacion de servicios">Documentos para la instalacion de servicios </asp:ListItem>
<asp:ListItem Value="Eliminar titular del negocio ">Eliminar titular del negocio  </asp:ListItem>
<asp:ListItem Value="Entrega del documento">Entrega del documento </asp:ListItem>
<asp:ListItem Value="Envio soporte Titulos y Avaluo">Envio soporte Titulos y Avaluo </asp:ListItem>
<asp:ListItem Value="Error en el documento">Error en el documento </asp:ListItem>
<asp:ListItem Value="Estado de credito">Estado de credito </asp:ListItem>
<asp:ListItem Value="Estado del desembolso">Estado del desembolso </asp:ListItem>
<asp:ListItem Value="Explicacion o informacion contenida en el documento">Explicacion o informacion contenida en el documento </asp:ListItem>
<asp:ListItem Value="Fallecimiento del Titular">Fallecimiento del Titular </asp:ListItem>
<asp:ListItem Value="Felicitacion analistas de tramite y cartera">Felicitacion analistas de tramite y cartera </asp:ListItem>
<asp:ListItem Value="Felicitacion personal promesas">Felicitacion personal promesas </asp:ListItem>
<asp:ListItem Value="Gastos notariales">Gastos notariales </asp:ListItem>
<asp:ListItem Value="Incertidumbre ante la situacion">Incertidumbre ante la situacion </asp:ListItem>
<asp:ListItem Value="Inconformidad con clausula en el documento">Inconformidad con clausula en el documento </asp:ListItem>
<asp:ListItem Value="Inconformidad con el valor de gastos de escrituracion">Inconformidad con el valor de gastos de escrituracion </asp:ListItem>
<asp:ListItem Value="Inconformidad en la Venta">Inconformidad en la Venta </asp:ListItem>
<asp:ListItem Value="Incumplimiento en la entrega del documento">Incumplimiento en la entrega del documento </asp:ListItem>
<asp:ListItem Value="Incumplimiento en la fecha de firma">Incumplimiento en la fecha de firma </asp:ListItem>
<asp:ListItem Value="Incumplimiento en la fecha de firma del documento">Incumplimiento en la fecha de firma del documento </asp:ListItem>
<asp:ListItem Value="Informacion de consumos facturados previos a la entrega del inmueble">Informacion de consumos facturados previos a la entrega del inmueble </asp:ListItem>
<asp:ListItem Value="Informacion de gastos de escrituracion">Informacion de gastos de escrituracion </asp:ListItem>
<asp:ListItem Value="Informacion fecha de entrega de escritura">Informacion fecha de entrega de escritura </asp:ListItem>
<asp:ListItem Value="Informacion fecha de entrega del inmueble">Informacion fecha de entrega del inmueble </asp:ListItem>
<asp:ListItem Value="Informacion fecha de firma de escritura">Informacion fecha de firma de escritura </asp:ListItem>
<asp:ListItem Value="Informacion fecha entrega del documento">Informacion fecha entrega del documento </asp:ListItem>
<asp:ListItem Value="Informacion firma pagare">Informacion firma pagare </asp:ListItem>
<asp:ListItem Value="Informacion requisitos para un poder">Informacion requisitos para un poder </asp:ListItem>
<asp:ListItem Value="Informacion sobre el desembolso">Informacion sobre el desembolso </asp:ListItem>
<asp:ListItem Value="Informacion sobre la fecha de firma">Informacion sobre la fecha de firma </asp:ListItem>
<asp:ListItem Value="Levantamiento de hipoteca en mayor extension">Levantamiento de hipoteca en mayor extension </asp:ListItem>
<asp:ListItem Value="Migro a otro pais o Ciudad">Migro a otro pais o Ciudad </asp:ListItem>
<asp:ListItem Value="Modificacion Entidad Financiera">Modificacion Entidad Financiera </asp:ListItem>
<asp:ListItem Value="Modificacion Monto">Modificacion Monto </asp:ListItem>
<asp:ListItem Value="Negacion de Credito">Negacion de Credito </asp:ListItem>
<asp:ListItem Value="Negacion de Subsidio">Negacion de Subsidio </asp:ListItem>
<asp:ListItem Value="Negacion del Subsidio">Negacion del Subsidio </asp:ListItem>
<asp:ListItem Value="Pago de consumos facturados previos a la entrega del inmueble">Pago de consumos facturados previos a la entrega del inmueble </asp:ListItem>
<asp:ListItem Value="Pagos anticipados">Pagos anticipados </asp:ListItem>
<asp:ListItem Value="Paquete de entrega incompleto">Paquete de entrega incompleto </asp:ListItem>
<asp:ListItem Value="Pendientes en el credito">Pendientes en el credito </asp:ListItem>
<asp:ListItem Value="Perdida de empleo">Perdida de empleo </asp:ListItem>
<asp:ListItem Value="Por Ahorro Programado">Por Ahorro Programado </asp:ListItem>
<asp:ListItem Value="Por cuota de Cesantias ">Por cuota de Cesantias  </asp:ListItem>
<asp:ListItem Value="Problema Judicial">Problema Judicial </asp:ListItem>
<asp:ListItem Value="Problemas con la contraseña">Problemas con la contraseña </asp:ListItem>
<asp:ListItem Value="Proyecto reestructurado">Proyecto reestructurado </asp:ListItem>
<asp:ListItem Value="Queja analistas de tramite y cartera">Queja analistas de tramite y cartera </asp:ListItem>
<asp:ListItem Value="Queja personal escrituracion">Queja personal escrituracion </asp:ListItem>
<asp:ListItem Value="Queja personal recaudo">Queja personal recaudo </asp:ListItem>
<asp:ListItem Value="Requisitos de aprobacion del credito">Requisitos de aprobacion del credito </asp:ListItem>
<asp:ListItem Value="Revision de penalizacion">Revision de penalizacion </asp:ListItem>
<asp:ListItem Value="Solicitud cambio fecha para recibir el inmueble">Solicitud cambio fecha para recibir el inmueble </asp:ListItem>
<asp:ListItem Value="Solicitud de elaboracion de un poder">Solicitud de elaboracion de un poder </asp:ListItem>
<asp:ListItem Value="Solicitud de planos del inmueble">Solicitud de planos del inmueble </asp:ListItem>
<asp:ListItem Value="Solicitud de planos del proyecto">Solicitud de planos del proyecto </asp:ListItem>
<asp:ListItem Value="Solicitud de Subsidios">Solicitud de Subsidios </asp:ListItem>
<asp:ListItem Value="Solicitud del estado de cuenta">Solicitud del estado de cuenta </asp:ListItem>
<asp:ListItem Value="Solicitud del numero de matricula inmobiliaria">Solicitud del numero de matricula inmobiliaria </asp:ListItem>
<asp:ListItem Value="Solicitud documento proceso ahorro programado">Solicitud documento proceso ahorro programado </asp:ListItem>
<asp:ListItem Value="Solicitud documento proceso cesantias">Solicitud documento proceso cesantias </asp:ListItem>
<asp:ListItem Value="Solicitud Plazo para firma de Promesa/otro si">Solicitud Plazo para firma de Promesa/otro si </asp:ListItem>
<asp:ListItem Value="Solicitud Plazo para tramite de credito">Solicitud Plazo para tramite de credito </asp:ListItem>
<asp:ListItem Value="Solicitud Plazo para tramite de Subsidio">Solicitud Plazo para tramite de Subsidio </asp:ListItem>
<asp:ListItem Value="Soporte de postulacion Subsidio">Soporte de postulacion Subsidio </asp:ListItem>
<asp:ListItem Value="Terminacion unilateral de la constructora ">Terminacion unilateral de la constructora  </asp:ListItem>
                        <asp:ListItem>Transferido Chat Comercial</asp:ListItem>
<asp:ListItem Value="Traslado a otra ciudad">Traslado a otra ciudad </asp:ListItem>
<asp:ListItem Value="Traslado a otro proyecto">Traslado a otro proyecto </asp:ListItem>
<asp:ListItem Value="Traslado de Inmueble en el mismo proyecto">Traslado de Inmueble en el mismo proyecto </asp:ListItem>
<asp:ListItem Value="Traslado de Proyecto">Traslado de Proyecto </asp:ListItem>
<asp:ListItem Value="Valor a cancelar por Titulos y Avaluo">Valor a cancelar por Titulos y Avaluo </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t6" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="3">
                    Area:<br />
                    <asp:DropDownList ID="t8" runat="server" ForeColor="Black">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Gestion de Negocios Inmobiliarios Barranquilla">Gestion de Negocios Inmobiliarios Barranquilla </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Bogota D.C.">Gestion de Negocios Inmobiliarios Bogota D.C. </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Cajica">Gestion de Negocios Inmobiliarios Cajica </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Cartagena de Indias">Gestion de Negocios Inmobiliarios Cartagena de Indias </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Chia">Gestion de Negocios Inmobiliarios Chia </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Funza">Gestion de Negocios Inmobiliarios Funza </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Ibague">Gestion de Negocios Inmobiliarios Ibague </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Madrid">Gestion de Negocios Inmobiliarios Madrid </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Mosquera (CUND)">Gestion de Negocios Inmobiliarios Mosquera (CUND) </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Ricaurte (CUND)">Gestion de Negocios Inmobiliarios Ricaurte (CUND) </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Santa Marta">Gestion de Negocios Inmobiliarios Santa Marta </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Soacha">Gestion de Negocios Inmobiliarios Soacha </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Soledad">Gestion de Negocios Inmobiliarios Soledad </asp:ListItem>
<asp:ListItem Value="Gestion de Negocios Inmobiliarios Zipaquira">Gestion de Negocios Inmobiliarios Zipaquira </asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="t8" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; " 
                    colspan="2">
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
                    </asp:DropDownList>
                    <br />
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px; ">
                    Id Infobip:<br />
                    <asp:TextBox ID="idinfobip" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="idinfobip" ErrorMessage="Este campo no puede estar vacio" 
                        Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Proyecto:<br />
                    <asp:TextBox ID="Proyecto" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Proyecto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    class="style10">
                    Agrupacion:<br />
                    <asp:TextBox ID="Agrupacion" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Agrupacion" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;">
                    Producto:<br />
                    <asp:TextBox ID="Producto" runat="server" ForeColor="Black" Width="250px"></asp:TextBox>
                    <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                        ErrorMessage="Este campo no puede estar vacio" 
                        ControlToValidate="Producto" Font-Size="12px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="3">
                    Descripcion:<br />
                    <asp:TextBox ID="Descripcion" runat="server" Width="100%" Height="50px" 
                        ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="padding: 10px; border: 2px solid #f8db66; text-align:center; background-color: #28a745; color: #f8db66; font-weight: bold; font-size: 16px;" 
                    colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="FINALIZAR" 
                        OnClick ="insertsacpqrs" BackColor="#28A745" BorderColor="#F8DB66" 
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#F8DB66" 
                        Height="30px" Width="150px" />
                    &nbsp;<asp:Button ID="Button2" runat="server" Text="ATRAS" 
                        OnClick ="atras" BackColor="#28A745" BorderColor="#F8DB66" CausesValidation="false"
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#F8DB66" 
                        Height="30px" Width="150px" />
                    &nbsp;<asp:Button ID="Button3" runat="server" Text="ENCUESTA"  BackColor="#28A745" BorderColor="#F8DB66" 
                        BorderStyle="Solid" Font-Bold="True" Font-Size="16px" ForeColor="#F8DB66" 
                        Height="30px" Width="150px" OnClientClick="Transf_Encuesta()" />
                    <br />
                    <br />
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
        Dim proyect As String = ""
        Dim agrupacio As String = ""
        Dim product As String = ""
        Dim descripcio As String = ""
        Dim sede As String = ""
        Dim id_infobip As String = ""
        id_infobip = idinfobip.Text
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
        tip5 = t5.Text
        tip6 = t6.Text
        tip7 = t7.Text
        tip8 = t8.Text
        proyect = Proyecto.Text
        agrupacio = Agrupacion.Text
        product = Producto.Text
        descripcio = Descripcion.Text
        Response.Redirect("~/Inserttablepqrs.aspx?idoriginal=" + idoriginal + "&Nombre1=" + Nombre1 + "&Nombre2=" + Nombre2 + "&Apellido1=" + Apellido1 + "&Apellido2=" + Apellido2 + "&tip1=" + tip1 + "&tip2=" + tip2 + "&tip3=" + tip3 + "&tip4=" + tip4 + "&tip5=" + tip5 + "&tip6=" + tip6 + "&tip7=" + tip7 + "&tip8=" + tip8 + "&proyect=" + proyect + "&agrupacio=" + agrupacio + "&product=" + product + "&descripcio=" + descripcio + "&tipificacion=" + tipificacion + "&sede=" + sede + "&idinfobip=" + id_infobip)
    End Sub
    Protected Sub atras(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim idsujeto As Long = -1
        idsujeto = Gestion.Cliente.IdSujeto
        Dim newidsujeto As String = idsujeto.ToString()
        Response.Redirect("~/FinalesChat.aspx?newidsujeto=" + newidsujeto)
    End Sub

</script>
