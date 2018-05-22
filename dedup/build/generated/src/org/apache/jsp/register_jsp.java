package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<!-- \n");
      out.write("\tTemplate 2047 Brown Field\n");
      out.write("\tby www.tooplate.com \n");
      out.write("-->\n");
      out.write("<title>CLOUD</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"css/tooplate_style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\" src=\"js/swfobject.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("        var flashvars = {};\n");
      out.write("        flashvars.xml_file = \"photo_list.xml\";\n");
      out.write("        var params = {};\n");
      out.write("        params.wmode = \"transparent\";\n");
      out.write("        var attributes = {};\n");
      out.write("        attributes.id = \"slider\";\n");
      out.write("        swfobject.embedSWF(\"flash_slider.swf\", \"flash_grid_slider\", \"440\", \"220\", \"9.0.0\", false, flashvars, params, attributes);\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div id=\"tooplate_wrapper\">\n");
      out.write("\n");
      out.write("\t<div id=\"tooplate_header\">\n");
      out.write("        <div id=\"site_title\">\n");
      out.write("          <font face=\"Antique Olive\" color=\"white\" size=\"6em\">REGISTRATION</font>\n");
      out.write("                \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div id=\"tooplate_menu\">\n");
      out.write("            <ul>\n");
      out.write("                 <li><a href=\"index.jsp\" class=\"current\">Home</a></li>\n");
      out.write("                <li><a href=\"register.jsp\">Register</a></li>\n");
      out.write("                <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("               \n");
      out.write("            </ul>    \t\n");
      out.write("        </div> <!-- end of tooplate_menu -->\n");
      out.write("    </div> <!-- end of forever header -->\n");
      out.write("    \n");
      out.write("  \n");
      out.write("        <br></br>\n");
      out.write("    \t<center>\n");
      out.write("        <form name=\"f\" action=\"registerdb.jsp\" method=\"post\">\n");
      out.write("                    \n");
      out.write("                   <table border=\"0\">\n");
      out.write("                      \n");
      out.write("                         <tr><th><font color=\"white\">User ID</font></th><td><input type=\"text\" name=\"ui\" required=\"required\"></input></td></tr>\n");
      out.write("                         <tr><th><font color=\"white\">User Name</font></th><td><input type=\"text\" name=\"un\"required=\"required\"></input></td></tr>\n");
      out.write("                         <tr><th><font color=\"white\">Password</font></th><td><input type=\"password\" name=\"pwd\"required=\"required\"></input></td></tr>\n");
      out.write("                         <tr><th><font color=\"white\">Confirm-Password</font></th><td><input type=\"password\" name=\"cpwd\"required=\"required\"></input></td></tr>\n");
      out.write("                         <tr><th><font color=\"white\">Email</font></th><td><input type=\"email\" name=\"mail\"required=\"required\"></input></td></tr>\n");
      out.write("                         <tr><th><font color=\"white\">Date of birth</font></th><td><input type=\"date\" name=\"dob\"required=\"required\"></input></td></tr>\n");
      out.write("                         <tr><th><font color=\"white\">Mobile no</font></th><td><input type=\"number\" name=\"mn\"required=\"required\"></input></td></tr>\n");
      out.write("                         <tr><th><font color=\"white\">Security Question </font></th><td><select name=\"que\" required=\"true\">\n");
      out.write("                             <option value=\"what is your fav color\">><font color=\"white\"> what is your fav color</font></option>\n");
      out.write("                             <option value=\"what is your lucky number\"><font color=\"white\"> what is your lucky number</font></option>\n");
      out.write("                             <option value=\"what is your fav bike\"><font color=\"white\"> what is your fav bike</font></option>\n");
      out.write("                             </td>\n");
      out.write("                                              \n");
      out.write("                         </tr>\n");
      out.write("                         <tr><th><font color=\"white\">Answer</font></th><td><input type=\"text\" name=\"ans\"required=\"required\"></td></tr>\n");
      out.write("                         <tr><th><font color=\"white\">Gender</font></th><td><input type=\"radio\" name=\"g\" value=\"male\"><font color=\"white\">Male</font>\n");
      out.write("                                                                           <input type=\"radio\" name=\"g\" value=\"female\"><font color=\"white\"> Female</font>\n");
      out.write("                             </td></tr>\n");
      out.write("                         \n");
      out.write("                         \n");
      out.write("                         <tr><td>  <input type=\"submit\" value=\"Register\"></input> </td><td>&nbsp;&nbsp; <input type=\"reset\" value=\"Cancel\"></input></td></tr>\n");
      out.write("                    </table>\n");
      out.write("                                     \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </form>\n");
      out.write("                </center>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("                \n");
      out.write("               \n");
      out.write("            \n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("                    \n");
      out.write("       \n");
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
