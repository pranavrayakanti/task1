package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<title>Brown Field Template</title>\n");
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
      out.write("        \t  <font  color=\"pink\" face=\"monotype corsiva\"size=\"6\">CLOUD TECHNOLOGY</font>\n");
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
      out.write("    \t<div id=\"mid_slider\">\n");
      out.write("        \t<div id=\"flash_grid_slider\">\n");
      out.write("                <a rel=\"nofollow\" href=\"http://www.adobe.com/go/getflashplayer\">\n");
      out.write("                    <img src=\"http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif\" alt=\"Get Adobe Flash player\" />\n");
      out.write("                </a>\n");
      out.write("\t\t\t</div>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"mid_left\">\n");
      out.write("            <div id=\"mid_title\">\n");
      out.write("               Welcome to latest cloud \t\n");
      out.write("            </div>\n");
      out.write("            <p><font color =\"white\" size=\"4\">Here is the cloud storage with deduplication where you can save storage space</font></p>\n");
      out.write("           \t  \t</div>\n");
      out.write("        <div class=\"cleaner\"></div>\n");
      out.write("\t</div> <!-- end of middle -->\n");
      out.write("    \n");
      out.write("    <div id=\"tooplate_main_top\"></div>\n");
      out.write("    <div id=\"tooplate_main\">\n");
      out.write("    \t\n");
      out.write("        <div class=\"col_w900\">\n");
      out.write("            \t<div class=\"con_tit_01\">Secure Download</div>\n");
      out.write("                <img src=\"images/tooplate_image_01.png\" alt=\"Image 01\" class=\"image_wrapper image_fl\" />\n");
      out.write("                <p><em>Cloud computing aims to apply that kind of power?measured in the tens of trillions of computations per second? to .problems like analyzing risk in financial portfolios, delivering personalized medical information, even powering immersive omputer games, in a way that users can tap through the Web. . </em></p>\n");
      out.write("              <div class=\"cleaner\"></div>\n");
      out.write("            </div>\n");
      out.write("    \n");
      out.write("    \t\n");
      out.write("    \t<div class=\"cleaner\"></div>\n");
      out.write("    </div> <!-- end of main -->\n");
      out.write("    <div id=\"tooplate_main_bottom\"></div>\n");
      out.write("\n");
      out.write("</div> <!-- wrapper -->\n");
      out.write("\n");
      out.write("<div id=\"tooplate_footer_wrapper\">\n");
      out.write("\t<div id=\"tooplate_footer\">\n");
      out.write("        Copyright © 2048 <a href=\"#\">Company Name</a> \n");
      out.write("        | Design: <a href=\"http://www.tooplate.com\">tooplate</a>\n");
      out.write("\t</div>\n");
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
