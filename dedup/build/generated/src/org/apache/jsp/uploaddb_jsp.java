package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.FileInputStream;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.io.File;
import org.apache.tomcat.util.http.fileupload.FileItem;
import java.util.List;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import java.sql.DriverManager;
import java.sql.Connection;

public final class uploaddb_jsp extends org.apache.jasper.runtime.HttpJspBase
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
                                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","manu","123456");



      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("                ");

                

                            try{
                                
                                String readfile="";
                                String getpath="";
                                
                                
                                
                                String s4="";
                                
                                DiskFileItemFactory dfif=new DiskFileItemFactory();
                                ServletFileUpload sfu=new ServletFileUpload(dfif);
                                List l=sfu.parseRequest(request);
                                
                                FileItem fi=(FileItem)l.get(0);
                                FileItem fi1=(FileItem)l.get(1);
                                FileItem fi2=(FileItem)l.get(2);
                                FileItem fi3=(FileItem)l.get(3);
                                
                                System.out.println("File Written");
                                
                                
                                String s=fi.getString();// name
                                
                                String s1=fi1.getString();// key
                                String s2=fi2.getString(); // date & time
                                
                                String s3=fi3.getName(); // file
                                
                                // current file data in string format
                                
                                byte[] b=fi3.get();
                                String string=new String(b);
                                System.out.println("values is:"+string);
                                
                                // datebase file retriving
                                
                                Statement st=con.createStatement();
                                ResultSet rs=st.executeQuery("select * from FILEUPLOADS");
                                rs.next();
                                
                                readfile=rs.getString(4);
                                
                                getpath="C:\\Users\\Manusai\\Documents\\NetBeansProjects\\Cloud\\build\\web\\file\\";
                                FileInputStream fis=new FileInputStream(getpath + readfile );
                                int size=fis.available();
                                System.out.println("file size:"+size);
                                System.out.println("readfile is:"+readfile);
                                
                                //FileInputStream fis=new FileInputStream("path");
                                
                                String path=request.getRealPath("file")+"\\"+s3;
                                fi3.write(new File(path));
                                File f=new File(path);
                                
                                PreparedStatement ps=con.prepareStatement("insert into fileuploads values(?,?,?,?)");
                                ps.setString(1, s);
                                ps.setString(2, s1);
                                ps.setString(3, s2);
                                ps.setString(4, s3);
                                
                                int i=ps.executeUpdate();
                                
                                if(i>0){
                                
                                        response.sendRedirect("fileuploaded.jsp");
                                }
                                                               else{
                                                               
                                                                        response.sendRedirect("upload.jsp");
                                                               
                                                               }
                                
                                
                                        
                                        
                                
                                
                            }
                            catch(Exception e)
                                                                       {
                            
                                                                       e.printStackTrace();
                                                                       
                            }




      out.write("\n");
      out.write("    </body>\n");
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
