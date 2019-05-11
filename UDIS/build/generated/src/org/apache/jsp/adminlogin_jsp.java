package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.File;
import java.io.IOException;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import javax.xml.bind.DatatypeConverter;
import java.awt.image.BufferedImage;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<title>Administrator Login | Hogwarts University</title>\n");
      out.write("<style>\n");
      out.write("    ");

    //write image
    try{
      String imgName="D:\\hogwarts.jpg";
      BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write( bImage, "jpg", baos );
        baos.flush();
        byte[] imageInByteArray = baos.toByteArray();
        baos.close();                                   
        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        
      out.write("\n");
      out.write("    body {font-family: Lucida Console, Monaco, monospace;\n");
      out.write("         background-color: #cccccc;\n");
      out.write("         background-image: url(\"data:image/jpg;base64, ");
      out.print(b64);
      out.write("\");\n");
      out.write("    }  \n");
      out.write("        ");
 
    }catch(IOException e){
      System.out.println("Error: "+e);
    } 


    
      out.write("\n");
      out.write("\n");
      out.write("form {border: 3px solid #f1f1f1;\n");
      out.write("    margin:0px 300px 20px 300px;}\n");
      out.write("h2,h3{\n");
      out.write("    text-align: center;\n");
      out.write("    color: #ffffff;\n");
      out.write("    font-size:40px;\n");
      out.write("    opacity:1;\n");
      out.write("    text-shadow: 0px 3px 5px #ffffff;\n");
      out.write("}\n");
      out.write("h2:hover {\n");
      out.write("    color: #ffffff;\n");
      out.write("    opacity:1;\n");
      out.write("    \n");
      out.write("}\n");
      out.write("input[type=text], input[type=password] {\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 12px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  border: 1px solid #ccc;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  font-family: Lucida Console, Monaco, monospace;\n");
      out.write("}\n");
      out.write("\n");
      out.write("button {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 100%;\n");
      out.write("  font-family: Lucida Console, Monaco, monospace;\n");
      out.write("}\n");
      out.write("\n");
      out.write("button:hover {\n");
      out.write("  opacity: 0.95;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".cancelbtn {\n");
      out.write("  width: auto;\n");
      out.write("  padding: 10px 18px;\n");
      out.write("  background-color: #f44336;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".imgcontainer {\n");
      out.write("  text-align: center;\n");
      out.write("  margin: 24px 0 12px 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("img.avatar {\n");
      out.write("  width: 40%;\n");
      out.write("  border-radius: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container {\n");
      out.write("  padding: 16px;\n");
      out.write("  width:50%;\n");
      out.write("  margin:auto;\n");
      out.write("}\n");
      out.write("\n");
      out.write("span.psw {\n");
      out.write("  float: right;\n");
      out.write("  padding-top: 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Change styles for span and cancel button on extra small screens */\n");
      out.write("@media screen and (max-width: 300px) {\n");
      out.write("  span.psw {\n");
      out.write("     display: block;\n");
      out.write("     float: none;\n");
      out.write("  }\n");
      out.write("  .cancelbtn {\n");
      out.write("     width: 100%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<h2>Hogwarts University Of Science, Magic And Engineering</h2>\n");
      out.write("<h3>Administrator Login</h3>\n");
      out.write("\n");
      out.write("<form action=\"adminlogin\" method=\"POST\">\n");
      out.write("  <div class=\"imgcontainer\">\n");
      out.write("    ");

    //write image
    try{
      String imgName="D:\\admin.jpg";
      BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write( bImage, "jpg", baos );
        baos.flush();
        byte[] imageInByteArray = baos.toByteArray();
        baos.close();                                   
        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        
      out.write("\n");
      out.write("        <img  class=\"img-responsive\" src=\"data:image/jpg;base64, ");
      out.print(b64);
      out.write("\"/>                            \n");
      out.write("        ");
 
    }catch(IOException e){
      System.out.println("Error: "+e);
    } 


    
      out.write("\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"container\">\n");
      out.write("      <label for=\"uname\" style=\"color:white;\"><b>Username</b></label>\n");
      out.write("    <input type=\"text\" placeholder=\"Enter Username\" name=\"uname\" required>\n");
      out.write("\n");
      out.write("    <label for=\"psw\" style=\"color:white;\"><b>Password</b></label>\n");
      out.write("    <input type=\"password\" placeholder=\"Enter Password\" name=\"pswd\" required>\n");
      out.write("        \n");
      out.write("    <button type=\"submit\">Login</button>\n");
      out.write("    ");
 
        String reply = "";
        if(null!=request.getAttribute("errorMessage"))
            reply = request.getAttribute("errorMessage").toString();
    
      out.write("\n");
      out.write("    <label style=\"color:white;\"><b>");
      out.print(reply);
      out.write("</b></label>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  \n");
      out.write("</form>\n");
      out.write("\n");
      out.write("</body>\n");
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
