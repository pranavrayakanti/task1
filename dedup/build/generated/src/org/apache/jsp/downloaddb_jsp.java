package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.FileInputStream;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class downloaddb_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
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
                                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dedup","dedup");



      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write('\n');



    String down1=request.getParameter("down1");

        
    String tablekey="";
    String tablename="";
    
    
    String path="";
    path=request.getRealPath("file");
    
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from fileuploads where skey='"+down1+"'");
        rs.next();
        
        
        tablekey=rs.getString("SKEY");
        tablename=rs.getString("UFILE");
        
        if(tablekey.equals(down1)){
        
                    response.setContentType("APPLICATION/OCTET-STREAM");
                            response.setHeader("Content-Disposition","attachment;"+"download");
                            
                            FileInputStream fis=new FileInputStream(path+"\\"+tablename);
                            
                            int i;
                            
                            while((i=fis.read())!=-1){
                            
                                        out.write(i);
                                        
                            }
                            fis.close();
        
        }
        
        
        

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
