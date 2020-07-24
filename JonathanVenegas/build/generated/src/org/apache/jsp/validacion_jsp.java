package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import modelos.vo.Usuario;
import modelos.dao.UsuarioDao;

public final class validacion_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Valida</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            
                String User = request.getParameter("usuario");
                String Pass = request.getParameter("clave");
                
                
                UsuarioDao dao = new UsuarioDao();
                List<Usuario> lista = dao.valida(new Usuario(1, User, Pass, 1, "user", 1));
                
                
                if(lista.size() > 0)
                {
                    request.getSession().setAttribute("web", "Ok");
                    request.getSession().setAttribute("usuario", User);
                    response.sendRedirect("planificaciones.jsp");
        
      out.write("\n");
      out.write("        \n");
      out.write("                <h1> Puede Ingresar </h1>\n");
      out.write("        ");

                }
                else
                {   
                     request.getSession().setAttribute("web", "Error");

        
      out.write("\n");
      out.write("        \n");
      out.write("                <h1> Error de Acceso </h1>\n");
      out.write("        ");

                
                }                
            
        
      out.write("\n");
      out.write("        \n");
      out.write("             <a href=\"index.jsp\">Volver a iniciar</a>\n");
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
