package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import clases.BEstratoInferior;
import clases.Enfermedad;
import clases.Barrio;
import clases.BarrioN;
import clases.Joven;
import clases.Persona;
import java.util.ArrayList;
import clases.Modelo;

public final class barriosResidenciales_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/./header.jsp");
    _jspx_dependants.add("/./footer.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
  Modelo m = (Modelo) application.getAttribute("modelo");
    m.cargarTodosBarrio();

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <div class =\"container-fluid\">\n");
      out.write("\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel =\"stylesheet\" href=\"css/bootstrap.min.css\">\r\n");
      out.write("<link rel =\"stylesheet\" href=\"css/estilos.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <nav class=\"navbar navbar-expand-lg navbar-light  navbar-color\">\r\n");
      out.write("    <a class=\"navbar-brand\" href=\"index.jsp\">Poner logo de soflex</a>\r\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("    </button>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("      <ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("        \r\n");
      out.write("        <li class=\"nav-item dropdown\">\r\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("            Personas\r\n");
      out.write("          </a>\r\n");
      out.write("          <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"adulto.jsp\">Consultar adultos</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"menor.jsp\">Consultar menores</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"jovenes.jsp\">Consultar jovenes</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"insercionPersonas.jsp\">Agregar</a>\r\n");
      out.write("           <!--<div class=\"dropdown-divider\"></div>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">Something else here</a>-->\r\n");
      out.write("          </div>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item dropdown\">\r\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("            Familias\r\n");
      out.write("          </a>\r\n");
      out.write("          <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"Familia.jsp\">Consultar</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"InsertarPersonaFamilia.jsp\">Asignar integrante familiar</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"InsersionFamilia.jsp\">Agregar</a>\r\n");
      out.write("           <!--<div class=\"dropdown-divider\"></div>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">Something else here</a>-->\r\n");
      out.write("          </div>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item dropdown\">\r\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("            Instituciones\r\n");
      out.write("          </a>\r\n");
      out.write("          <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"Empresa.jsp\">Consultar Empresas</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"Guarderia.jsp\">Consultar Guarderias</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"Planteles.jsp\">Consultar Planteles</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"InsercionInstituciones.jsp\">Agregar</a>\r\n");
      out.write("           <!--<div class=\"dropdown-divider\"></div>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">Something else here</a>-->\r\n");
      out.write("          </div>\r\n");
      out.write("        </li>\r\n");
      out.write("        <li class=\"nav-item dropdown\">\r\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("            Barrios\r\n");
      out.write("          </a>\r\n");
      out.write("          <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"barriosComerciales.jsp\">comerciales</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"barriosIndustriales.jsp\">industriales</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"barriosResidenciales.jsp\">residenciales</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"barriosEstratos12.jsp\">estrato 1 y 2</a>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"insercionBarrios.jsp\">Agregar</a>\r\n");
      out.write("           <!--<div class=\"dropdown-divider\"></div>\r\n");
      out.write("            <a class=\"dropdown-item\" href=\"#\">Something else here</a>-->\r\n");
      out.write("          </div>\r\n");
      out.write("        </li>\r\n");
      out.write("      </ul>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("</nav>\r\n");
      out.write("    <header class=\"header\">\r\n");
      out.write("        <div class =\"titulo\"> Prototipo de gestion de alcaldias </div>\r\n");
      out.write("        <div class = \"subtitulo\"><i>Universidad Distrital Francisco Jose de Caldas</i> </div>\r\n");
      out.write("    </header>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\n");
      out.write("        <div class =\"m-3\">\n");
      out.write("            <h2 >Listado de  los barrios en el sistema </h2>\n");
      out.write("\n");
      out.write("            <table class=\"table table-responsive\">\n");
      out.write("                <thead>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"col\">#</th>\n");
      out.write("                        <th scope=\"col\">Nombre</th>\n");
      out.write("                        <th scope=\"col\">Estrato</th>\n");
      out.write("                        <th scope=\"col\">Tipo</th>\n");
      out.write("                        <th scope=\"col\">Area</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    ");

                        ArrayList<Barrio> p = m.getBarrios();
                        int cont = 0;
                        for (Barrio per : p) {
                            if (per instanceof BarrioN) {
                                BarrioN temp = (BarrioN) per;
                                if (temp.getTipoBarrio().equals("Residencial")) {
                                    cont++;
                                    out.print("<tr>");
                                    out.print("<th scope='row'>" + cont + "</th>");
                                    out.print("<td>" + temp.getNombre() + "</td>");
                                    out.print("<td>" + temp.getEstrato() + "</td>");
                                    out.print("<td>" + temp.getTipoBarrio() + "</td>");
                                    out.print("<td>" + temp.getArea() + "</td>");
                                    out.print("</tr>");
                                }
                            } else if (per instanceof BEstratoInferior) {
                                BEstratoInferior temp = (BEstratoInferior) per;
                                if (temp.getTipoBarrio().equals("Residencial")) {
                                    cont++;
                                    out.print("<tr>");
                                    out.print("<th scope='row'>" + cont + "</th>");
                                    out.print("<td>" + temp.getNombre() + "</td>");
                                    out.print("<td>" + temp.getEstrato() + "</td>");
                                    out.print("<td>" + temp.getTipoBarrio() + "</td>");
                                    out.print("<td>" + temp.getArea() + "</td>");
                                    out.print("</tr>");
                                }
                            }

                        }
                    
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class =\"footer\">\r\n");
      out.write("  \r\n");
      out.write("  \r\n");
      out.write("  <ul >\r\n");
      out.write("      <li> <strong>Realizado por</strong></li>\r\n");
      out.write("      <li>Fabian Herrera</li>\r\n");
      out.write("      <li> Rodrigo niño</li>\r\n");
      out.write("      <li>luis Mendez </li>\r\n");
      out.write("      <li>Universidad Distrital.</li>\r\n");
      out.write("  </ul>\r\n");
      out.write(" \r\n");
      out.write("</div>");
      out.write("\n");
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
