package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.Random;
import java.util.Date;

public final class upload_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
      out.write("<meta http-equiv=\"\" content=\"multipart/form-data\">\n");
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
      out.write("    \n");
      out.write("    ");

    

        String v=request.getParameter("val1");
        if(v!=null){
        
                        out.println("<script>alert('You Have Uploaded File SuccessFully..')</script>");
        
        }


      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div id=\"tooplate_wrapper\">\n");
      out.write("\n");
      out.write("\t<div id=\"tooplate_header\">\n");
      out.write("        <div id=\"site_title\">\n");
      out.write("        \t<h1><a href=\"#\">Brown Field</a></h1>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"tooplate_menu\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"userhome.jsp\" class=\"current\">Home</a></li>\n");
      out.write("                <li><a href=\"upload.jsp\">Upload</a></li>\n");
      out.write("                <li><a href=\"feedback.jsp\">FeedBack</a></li>\n");
      out.write("                <li><a href=\"download.jsp\">Download</a></li>\n");
      out.write("                <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("            </ul>    \t\n");
      out.write("        </div> <!-- end of tooplate_menu -->\n");
      out.write("    </div> <!-- end of forever header -->\n");
      out.write("    \n");
      out.write("                  ");

        

                String na=(String)session.getAttribute("uname");


      out.write('\n');

                
                    
                    DateFormat df=new SimpleDateFormat();
                    Date d=new Date();
                    String tdate=(String)df.format(d);




                    String ss="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                    
                    String key="";
                    int i=0;
                    
                    Random r=new Random();
                   
                    for(i=0;i<6;i++){
                    
                            key=key+ss.charAt(r.nextInt(ss.length()));
                    }
                    

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("\n");
      out.write("\n");
      out.write("    <div id=\"tooplate_middle\">\n");
      out.write("    \t<div id=\"mid_slider\">\n");
      out.write("        \t    <marquee>\n");
      out.write("                        <font color=\"#FFB8FF\" face=\"Monotype corsiva\" size=\"5\">\n");
      out.write("                            Hello&nbsp;<font color=\"#6666FF\"> ");
      out.print(na);
      out.write(" </font> &nbsp; You Can Upload Files From Here..\n");
      out.write("                        </font>\n");
      out.write("                   </marquee>\n");
      out.write("                   \n");
      out.write("                   <br></br>\n");
      out.write("                   \n");
      out.write("                   <form name=\"f\" action=\"uploaddb.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                   <table border=\"4\">\n");
      out.write("                       <tr><th><font color=\"white\">User Name</font></th><td><input type=\"text\" name=\"un\" value=\"");
      out.print(na);
      out.write("\" readonly></input></td></tr>\n");
      out.write("                       <tr><th><font color=\"white\">Security Key</font></th><td><input type=\"text\" name=\"skey\" value=\"");
      out.print(key);
      out.write("\" readonly></input></td></tr>\n");
      out.write("                       <tr><th><font color=\"white\">Date & Time</font></th><td><input type=\"text\" name=\"date\" value=\"");
      out.print(tdate);
      out.write("\" readonly></input></td></tr>\n");
      out.write("                       <tr><th><font color=\"white\">File</font></th><td><input type=\"file\" name=\"file\"></input></td></tr>\n");
      out.write("                       <tr><td><input type=\"submit\" value=\"Upload\"></input></td>\n");
      out.write("                           <td><input type=\"reset\" value=\"Cancel\"></td>\n");
      out.write("                       </tr>\n");
      out.write("                   </table>\n");
      out.write("                   \n");
      out.write("                   </form>\n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("        <div id=\"mid_left\">\n");
      out.write("            <div id=\"mid_title\">\n");
      out.write("                    Hello:");
      out.print(na);
      out.write("\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        \n");
      out.write("    \n");
      out.write("        \n");
      out.write("  \n");
      out.write("        \n");
      out.write("      \n");
      out.write("    \t\n");
      out.write("        \n");
      out.write("                \n");
      out.write("                  \n");
      out.write("   \n");
      out.write("                \n");
      out.write("\n");
      out.write("                \n");
      out.write("                <center>\n");
      out.write("       \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </center>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <br></br>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <br></br>\n");
      out.write("            \n");
      out.write("              <div class=\"cleaner\"></div>\n");
      out.write("              </div>\n");
      out.write("    \n");
      out.write("    \t\t\n");
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
