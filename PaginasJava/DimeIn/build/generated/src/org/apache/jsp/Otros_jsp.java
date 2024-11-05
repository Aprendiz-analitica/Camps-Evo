package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Otros_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <table class=\"formulario\" style=\"width:100%;\">        \n");
      out.write("        <thead>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdn.datatables.net/buttons/1.5.6/css/buttons.bootstrap4.min.css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"https://code.jquery.com/jquery-3.6.0.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"https://cdn.datatables.net/buttons/1.5.6/js/buttons.colVis.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("        <link href=\"css/Listas.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script>\n");
      out.write("            var token;\n");
      out.write("            var idfinal;\n");
      out.write("            var desfinal;\n");
      out.write("            var url = \"https://api.fenalcovalle.com\";\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                var temp;\n");
      out.write("                var settings = {\n");
      out.write("                    \"url\": url + \"/auth/login\",\n");
      out.write("                    \"method\": \"POST\",\n");
      out.write("                    \"timeout\": 0,\n");
      out.write("                    \"headers\": {\n");
      out.write("                        \"username\": \"UsrCBolivarBgta\",\n");
      out.write("                        \"password\": \"*CB0L1b4RB0Gt4-O22.\"\n");
      out.write("                    },\n");
      out.write("                };\n");
      out.write("                $.ajax(settings).done(function (response) {\n");
      out.write("                    token = response.token;\n");
      out.write("\n");
      out.write("\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("            function actualizar() {\n");
      out.write("                idfinal = $('input:radio[name=Otros]:checked').val();\n");
      out.write("                var idcall = $('input:hidden[name=idllamada]').val();\n");
      out.write("                if (idfinal == 0) {\n");
      out.write("                    Swal.fire({\n");
      out.write("                        icon: 'error',\n");
      out.write("                        title: 'Seleccione un final',\n");
      out.write("                        showConfirmButton: false,\n");
      out.write("                        timer: 1500\n");
      out.write("                    });\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                desfinal = document.querySelector(`label[for=\"` + idfinal + `\"]`).textContent;\n");
      out.write("                //Borrar el consol cuando se vaya a entregar\n");
      out.write("                console.log(\"desfinal: \" + desfinal.textContent + \" idfinal: \" + idfinal);\n");
      out.write("                \n");
      out.write("                $('input:button[id=btnfinalizar]').prop('disabled', true);\n");
      out.write("                var updatefinal = {\n");
      out.write("                    \"url\": url + \"/webservicefenalco/cbolivarbgta/actualizarpqrsOra\",\n");
      out.write("                    \"method\": \"POST\",\n");
      out.write("                    \"timeout\": 0,\n");
      out.write("                    \"headers\": {\n");
      out.write("                        \"Authorization\": \"Bearer \" + token,\n");
      out.write("                        \"Content-Type\": \"application/json\"\n");
      out.write("                    },\n");
      out.write("                    \"data\": JSON.stringify({\n");
      out.write("                        \"idtipificacion\": idfinal,\n");
      out.write("                        \"idcall\": idcall,\n");
      out.write("                        \"destipificacion\": desfinal\n");
      out.write("                    }),\n");
      out.write("\n");
      out.write("                };\n");
      out.write("\n");
      out.write("                $.ajax(updatefinal).done(function (response) {\n");
      out.write("                    Swal.fire({\n");
      out.write("                        icon: 'success',\n");
      out.write("                        title: 'Tipificacion actualizada',\n");
      out.write("                        showConfirmButton: false,\n");
      out.write("                        timer: 1500\n");
      out.write("                    });\n");
      out.write("                    location.reload();\n");
      out.write("                });\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <tr style=\"font-weight: bold; font-family: Lato; color: white; background-color: #ed7203;font-size: 18px; border : 1px solid #ed7203; width: 100% ;height: 50px\">\n");
      out.write("            <th colspan=\"3\">FINALES - OTROS</th>\n");
      out.write("        </tr>\n");
      out.write("\n");
      out.write("    </thead>\n");
      out.write("    <tbody>\n");
      out.write("        ");

            String idcall = request.getParameter("id");
        
      out.write("\n");
      out.write("        <tr>\n");
      out.write("    <input id=\"idllamada\" type=\"hidden\" name=\"idllamada\"  value=\"");
      out.print(idcall);
      out.write("\">\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("        <input type=\"radio\" id=\"0\" name=\"Otros\" value=\"0\" hidden = \"true\" checked > \n");
      out.write("        <input type=\"radio\" id=\"1601\" name=\"Otros\" value=\"1601\">\n");
      out.write("          <label for=\"1601\">FALLAS EQUIPO EN MANTENIMIENTO</label><br> \n");
      out.write("    </td>\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("        <input type=\"radio\" id=\"1602\" name=\"Otros\" value=\"1602\">\n");
      out.write("          <label for=\"1602\">FALLA EN EL SISTEMA</label>     \n");
      out.write("    </td>\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("        <input type=\"radio\" id=\"1605\" name=\"Otros\" value=\"1605\">\n");
      out.write("          <label for=\"1605\">LLAMADA CAIDA</label>     \n");
      out.write("    </td>\n");
      out.write("\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("        <input type=\"radio\" id=\"1606\" name=\"Otros\" value=\"1606\">\n");
      out.write("          <label for=\"1606\">LLAMADA MUDA</label>     \n");
      out.write("    </td>\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("        <input type=\"radio\" id=\"1607\" name=\"Otros\" value=\"1607\">\n");
      out.write("          <label for=\"1607\">NO SE PRESTA SERVICIO EN DIME</label>     \n");
      out.write("    </td>\n");
      out.write("\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("        <input type=\"radio\" id=\"1608\" name=\"Otros\" value=\"1608\">\n");
      out.write("          <label for=\"1608\">SOPORTE DESCARGA DE RESULTADOS</label>     \n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("\n");
      out.write("        <input type=\"radio\" id=\"1609\" name=\"Otros\" value=\"1609\">\n");
      out.write("          <label for=\"1609\">LLAMADA DE PRUEBA</label><br>\n");
      out.write("    </td>\n");
      out.write("\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("        <input type=\"radio\" id=\"1610\" name=\"Otros\" value=\"1610\">\n");
      out.write("          <label for=\"1610\">LLAMADA EQUIVOCADA</label>     \n");
      out.write("    </td>\n");
      out.write("\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("        <input type=\"radio\" id=\"1622\" name=\"Otros\" value=\"1622\">\n");
      out.write("          <label for=\"1622\">NO HAY CONVENIO</label> \n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("\n");
      out.write("        <input type=\"radio\" id=\"1623\" name=\"Otros\" value=\"1623\">\n");
      out.write("          <label for=\"1623\">FALLA EN APLICATIVOS</label><br>\n");
      out.write("    </td>\n");
      out.write("\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("        <input type=\"radio\" id=\"1624\" name=\"Otros\" value=\"1624\">\n");
      out.write("          <label for=\"1624\">LLAMADA PARA OTRA ENTIDAD</label>     \n");
      out.write("    </td>\n");
      out.write("\n");
      out.write("    <td style=\"text-align: center; font-weight: bold; font-family: Lato; color: grey; border : 1px solid #ed7203; height: 50px; width: 259px\">\n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("    <td colspan=\"3\"  style=\"text-align: center; font-weight: bold; font-family: Roboto; color: grey; border : 1px solid #ed7203; height: 50px;padding: 5px\">\n");
      out.write("        <input type=\"button\" id=\"btnfinalizar\"  value=\"FINALIZAR\" onclick=\"actualizar()\">                      \n");
      out.write("    </td>\n");
      out.write("</tr>\n");
      out.write("</tbody>\n");
      out.write("</table>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
