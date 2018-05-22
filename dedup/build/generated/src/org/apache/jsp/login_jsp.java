package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<!-- \n");
      out.write("\tTemplate 2047 Brown Field\n");
      out.write("\tby www.tooplate.com \n");
      out.write("-->\n");
      out.write("<title>Brown Field</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"css/tooplate_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"js/swfobject.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\tvar flashvars = {};\n");
      out.write("\t\t\tflashvars.xml_file = \"photo_list.xml\";\n");
      out.write("\t\t\tvar params = {};\n");
      out.write("\t\t\tparams.wmode = \"transparent\";\n");
      out.write("\t\t\tvar attributes = {};\n");
      out.write("\t\t\tattributes.id = \"slider\";\n");
      out.write("\t\t\tswfobject.embedSWF(\"flash_slider.swf\", \"flash_grid_slider\", \"440\", \"220\", \"9.0.0\", false, flashvars, params, attributes);\n");
      out.write("\t\t</script>    \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div id=\"tooplate_wrapper\">\n");
      out.write("\n");
      out.write("\t<div id=\"tooplate_header\">\n");
      out.write("        <div id=\"site_title\">\n");
      out.write("        \t  \n");
      out.write("        </div>\n");
      out.write("        <div id=\"tooplate_menu\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"index.jsp\" class=\"current\">Home</a></li>\n");
      out.write("                <li><a href=\"register.jsp\">Register</a></li>\n");
      out.write("                <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                <li><a href=\"gallery.html\">Gallery</a></li>\n");
      out.write("                <li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("            </ul>    \t\n");
      out.write("        </div> <!-- end of tooplate_menu -->\n");
      out.write("    </div> <!-- end of forever header -->\n");
      out.write("    \n");
      out.write("    <div id=\"tooplate_middle\">\n");
      out.write("        <br></br>\n");
      out.write("    \t<center>\n");
      out.write("                <form name=\"f\" action=\"logindb.jsp\" method=\"post\">\n");
      out.write("                    <font face=\"Comic Sans MS\" color=\"#FFFFFF\" size=\"05em\">LOGIN</font>\n");
      out.write("                    <table border=\"0\">   \n");
      out.write("                         \n");
      out.write("                        <tr><th><font color=\"white\">User Name</font></th><td><input type=\"text\" name=\"un\"></input></td></tr>\n");
      out.write("                        <tr><th><font color=\"white\">Password</font></th><td><input type=\"password\" name=\"pwd\"></input></td></tr>\n");
      out.write("                        <tr><th><font color=\"white\">Type Of Login</font></th><td><input type=\"radio\" name=\"type\" value=\"user\"><font color=\"white\"> User</font>\n");
      out.write("                                     <input type=\"radio\" name=\"type\" value=\"admin\"> <font color=\"white\">Admin</font>\n");
      out.write("                                         </td></tr><br>\n");
      out.write("                                                            \n");
      out.write("                         <tr><td>  <input type=\"submit\" value=\"Login\"></input> </td><td>&nbsp;&nbsp; <input type=\"reset\" value=\"Cancel\"></input></td></tr>\n");
      out.write("                    </table>\n");
      out.write("                                     \n");
      out.write("                    <a href=\"forgotpassword.jsp\"><font color=\"white\">Forgotpassword</font></a> &nbsp;&nbsp;<a href=\"chngpwd.jsp\"><font color=\"white\">ChangePassword</font></a>\n");
      out.write("                    \n");
      out.write("                </form>\n");
      out.write("        </center>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    \n");
      out.write("    \t\n");
      out.write("        \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <center>\n");
      out.write("        \n");
      out.write("                </center>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("         \n");
      out.write("            \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
