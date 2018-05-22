package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class checkindivudalusers_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(1);
    _jspx_dependants.add("/db.jsp");
  }

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
      out.write("        \t<h1><a href=\"#\">Brown Field</a></h1>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"tooplate_menu\">\n");
      out.write("            <ul>\n");
      out.write("                   <li><a href =\"viewfeedback.jsp\">View feedback</a></li>\n");
      out.write("                <li><a href =\"viewusers.jsp\">Viewusers</a></li>\n");
      out.write("              <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("            </ul>    \t\n");
      out.write("        </div> <!-- end of tooplate_menu -->\n");
      out.write("    </div> <!-- end of forever header -->\n");
      out.write("    \n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                        ");

                        

                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","manu","123456");



      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("       \n");
      out.write("        <!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("            <title>View users</title>\n");
      out.write("    </head>\n");
      out.write("    </body>\n");
      out.write("    <center>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("        <form name=\"f\" action=\"checkindivudalusers.jsp\" method=\"post\">\n");
      out.write("                           \n");
      out.write("            <tr><td> <input type=\"text\" name=\"search\"  value=\"\"></input>\n");
      out.write("            <tr> <td> <input type=\"submit\" value=\"search\"></input>          \n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <br></br>\n");
      out.write("        \n");
      out.write("        <table border=\"5\">\n");
      out.write("            <tr><th><font color=\"white\">User ID</font></th>\n");
      out.write("                <th><font color=\"white\">username</font></th>\n");
      out.write("                <th><font color=\"white\"> email</font></th>                  \n");
      out.write("                <th><font color=\"white\">mobileno</font></th>\n");
      out.write("                <th><font color=\"white\">DOB</font></th>\n");
      out.write("                <th><font color=\"white\">gender</font></th>\n");
      out.write("            \n");
      out.write("            </tr>\n");
      out.write("        ");

        
                String search=request.getParameter("search");
                if(search!=" "){
                
                
                                Statement st=con.createStatement();
                                ResultSet rs=st.executeQuery("select * from REGISTRATION where USER_ID='"+search+"'");
                                if(rs.next()){
                                    
                                    
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("                                    <tr><td><font color=\"white\"> ");
      out.print(rs.getString(1));
      out.write("</font></td>\n");
      out.write("                                        <td><font color=\"white\"> ");
      out.print(rs.getString(2));
      out.write("</font></td>\n");
      out.write("                                        <td><font color=\"white\"> ");
      out.print(rs.getString(5));
      out.write("</font></td>\n");
      out.write("                                        <td><font color=\"white\">");
      out.print(rs.getString(7));
      out.write("</font></td>\n");
      out.write("                                        <td><font color=\"white\">");
      out.print(rs.getString(6));
      out.write("</font></td>\n");
      out.write("                                        <td><font color=\"white\">");
      out.print(rs.getString(10));
      out.write("</font></td>\n");
      out.write("                                    </tr>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");

                                    
                                
                                }
                
                }




      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </center>\n");
      out.write("  ");
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
