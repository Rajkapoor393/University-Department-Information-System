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

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Register New Student</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        body{\n");
      out.write("            background-color: #132239;\n");
      out.write("            font-family: Lucida Console, Monaco, monospace;\n");
      out.write("        }\n");
      out.write("       h1 {\n");
      out.write("        text-align: center;\n");
      out.write("        color: #ffffff;\n");
      out.write("        font-size:40px;\n");
      out.write("        opacity:1;\n");
      out.write("        text-shadow: 0px 3px 5px #ffffff;\n");
      out.write("        align: center;\n");
      out.write("        text-decoration:underline;\n");
      out.write("    }\n");
      out.write("    input[type=text],input[type=number] {\n");
      out.write("        width: 20%;\n");
      out.write("        padding: 12px 20px;\n");
      out.write("        margin: 8px 0;\n");
      out.write("        box-sizing: border-box;\n");
      out.write("        border: 3px solid black;\n");
      out.write("        -webkit-transition: 0.5s;\n");
      out.write("        transition: 0.5s;\n");
      out.write("        outline: none;\n");
      out.write("        display:inline-block;\n");
      out.write("        font-family: Lucida Console, Monaco, monospace;\n");
      out.write("}\n");
      out.write("select{\n");
      out.write("    width: 20%;\n");
      out.write("         padding: 12px 20px;\n");
      out.write("        margin: 8px 0;\n");
      out.write("        box-sizing: border-box;\n");
      out.write("        border: 3px solid black;\n");
      out.write("        -webkit-transition: 0.5s;\n");
      out.write("        transition: 0.5s;\n");
      out.write("        outline: none;\n");
      out.write("        display:inline-block;\n");
      out.write("            font-family: Lucida Console, Monaco, monospace;\n");
      out.write("}\n");
      out.write("option{\n");
      out.write("    width: 12.5%;\n");
      out.write("    background-color: #f1f1f1;\n");
      out.write("    padding: 12px 20px;\n");
      out.write("   margin: 8px 0;\n");
      out.write("   box-sizing: border-box;\n");
      out.write("   border: 3px solid black;\n");
      out.write("   -webkit-transition: 0.5s;\n");
      out.write("   transition: 0.5s;\n");
      out.write("   outline: none;\n");
      out.write("   display:block;\n");
      out.write("}\n");
      out.write("option:hover{\n");
      out.write("    background-color: #ddd;\n");
      out.write("    display: block;\n");
      out.write("}\n");
      out.write("::-webkit-input-placeholder {\n");
      out.write("  font-family: Lucida Console, Monaco, monospace;\n");
      out.write("}\n");
      out.write("input[type=text]:focus {\n");
      out.write("  border: 3px solid white;\n");
      out.write("}\n");
      out.write("button {\n");
      out.write("  background-color: #4CAF50;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  cursor: pointer;\n");
      out.write("  position:fixed;\n");
      out.write("  right:150px;\n");
      out.write("  top:625px;\n");
      out.write("  width:20%;\n");
      out.write("  font-family: Lucida Console, Monaco, monospace;\n");
      out.write("}\n");
      out.write("\n");
      out.write("button:hover {\n");
      out.write("  opacity: 0.95;\n");
      out.write("}\n");
      out.write(".lab1{\n");
      out.write("    margin: 10px 10px 10px 10px;\n");
      out.write("    position: fixed;\n");
      out.write("    left:70px;\n");
      out.write("    top:150px;\n");
      out.write("}\n");
      out.write(".lab2{\n");
      out.write("    margin: 10px 10px 10px 10px;\n");
      out.write("    position: fixed;\n");
      out.write("    left:290px;\n");
      out.write("    top:130px;\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <h1>Student Registration</h1>\n");
      out.write("        <form method=\"post\" action=\"register\">\n");
      out.write("            <label class=\"lab1\" style=\"color:white;\"><b>Programme:</b></label>\n");
      out.write("            <select name=\"prog\" class=\"lab2\" required>\n");
      out.write("                <option value=\"SelProg\">Select Programme</option>\n");
      out.write("                <option value=\"B.Tech\">Bacherlor's Of Technology</option>\n");
      out.write("                <option value=\"M.Tech\">Master's Of Technology</option>\n");
      out.write("                <option value=\"Phd\">Doctor Of Philosophy</option>\n");
      out.write("                <option value=\"Msc\">Master's In Science</option>\n");
      out.write("                <option value=\"Dual Deg.\">Dual Degree</option>\n");
      out.write("          </select>\n");
      out.write("            <label class=\"lab\" style=\"color:white; position: fixed; left:70px;top:250px;\"><b>First Name:</b></label>\n");
      out.write("            <input style=\" position: fixed; left:300px;top:228px;\"type=\"text\" id=\"fname\" required name=\"fname\" placeholder=\"First Name\">\n");
      out.write("            <label class=\"lab\" style=\"color:white;position: fixed; left:70px;top:350px;\"><b>Last Name:</b></label>\n");
      out.write("            <input style=\" position: fixed; left:300px;top:328px;\"type=\"text\" id=\"lname\" required name=\"lname\" placeholder=\"Last Name\" >\n");
      out.write("            <label class=\"lab\" style=\"color:white;position: fixed; left:70px;top:450px;\"><b>Address:</b></label>\n");
      out.write("            <input style=\" position: fixed; left:300px;top:428px;\"type=\"text\" id=\"lname\" required name=\"addr\" placeholder=\"Address\">\n");
      out.write("            <label class=\"lab\" style=\"color:white;position: fixed; left:70px;top:550px;\"><b>Gender:</b></label>\n");
      out.write("            <select name=\"sex\" class=\"lab4\" style=\"position:fixed;left:300px;top:525px;\" required>\n");
      out.write("                <option value=\"Sg\">Select Gender</option>\n");
      out.write("                <option value=\"Male\">Male</option>\n");
      out.write("                <option value=\"Female\">Female</option>\n");
      out.write("                <option value=\"Others\" >Other</option>\n");
      out.write("            </select>\n");
      out.write("            <label class=\"lab\" style=\"color:white;position: fixed; left:70px;top:650px;\"><b>Guardian's Name:</b></label>\n");
      out.write("            <input required style=\" position: fixed; left:300px;top:625px;\" type=\"text\" id=\"lname\" name=\"gname\" placeholder=\"Guardian Name\">\n");
      out.write("            <label class=\"lab\" style=\"color:white;position: fixed; right:570px;top:250px;\"><b>Mobile:</b></label>\n");
      out.write("            <input required style=\" position: fixed; right:150px;top:228px;\" type=\"number\" id=\"lname\" name=\"mob\" placeholder=\"Mobile\">\n");
      out.write("            <label class=\"lab\" style=\"color:white;position: fixed; right:570px;top:350px;\"><b>Initial Account Balance:</b></label>\n");
      out.write("            <input required style=\" position: fixed; right:150px;top:328px;\" type=\"number\" id=\"lname\" name=\"bal\" placeholder=\"Account\">\n");
      out.write("            <button type=\"submit\">Submit</button>\n");
      out.write("        </form>\n");
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
