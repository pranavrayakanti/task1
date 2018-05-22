package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<!-- \r\n");
      out.write("\tTemplate 2047 Brown Field\r\n");
      out.write("\tby www.tooplate.com \r\n");
      out.write("-->\r\n");
      out.write("<title>Brown Field Template</title>\r\n");
      out.write("<meta name=\"keywords\" content=\"\" />\r\n");
      out.write("<meta name=\"description\" content=\"\" />\r\n");
      out.write("<link href=\"css/tooplate_style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/swfobject.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\tvar flashvars = {};\r\n");
      out.write("\t\t\tflashvars.xml_file = \"photo_list.xml\";\r\n");
      out.write("\t\t\tvar params = {};\r\n");
      out.write("\t\t\tparams.wmode = \"transparent\";\r\n");
      out.write("\t\t\tvar attributes = {};\r\n");
      out.write("\t\t\tattributes.id = \"slider\";\r\n");
      out.write("\t\t\tswfobject.embedSWF(\"flash_slider.swf\", \"flash_grid_slider\", \"440\", \"220\", \"9.0.0\", false, flashvars, params, attributes);\r\n");
      out.write("\t\t</script>    \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"tooplate_wrapper\">\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"tooplate_header\">\r\n");
      out.write("        <div id=\"site_title\">\r\n");
      out.write("            <h1><font color=\"white\" face=\"Mototypecorsiva\" size=\"10\">ADMIN</font><h1>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"tooplate_menu\">\r\n");
      out.write("            <ul>\r\n");
      out.write("                <li><a href=\"viewfiles.jsp\">view files</a></li>\r\n");
      out.write("                <li><a href=\"viewusers.jsp\">view users</a></li>\r\n");
      out.write("                <li><a href =\"viewfeedback.jsp\">View feedback</a></li>\r\n");
      out.write("              <li><a href=\"logout.jsp\">Logout</a></li>\r\n");
      out.write("            </ul>    \t\r\n");
      out.write("        </div> <!-- end of tooplate_menu -->\r\n");
      out.write("    </div> <!-- end of forever header -->\r\n");
      out.write("    \r\n");
      out.write("    <form action=\"adminhome.jsp\"method=\"post\">\r\n");
      out.write("       \r\n");
      out.write("    </form>");
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
