/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
@WebServlet(urlPatterns = {"/course"})
public class course extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String ss = "1234";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet course</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet course at " + ss + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String[] subs = new String[10];
        subs[0] = request.getParameter("c");
        subs[1] = request.getParameter("c++");
        subs[2] = request.getParameter("dsa");
        subs[3] = request.getParameter("dbms");
        subs[4] = request.getParameter("de");
        subs[5] = request.getParameter("ae");
        subs[6] = request.getParameter("osd");
        subs[7] = request.getParameter("dc");
        subs[8] = request.getParameter("itc");
        subs[9] = request.getParameter("cg");
        String roll = request.getParameter("name");
        String sem = request.getParameter("sem");
        String tableName = roll + "_Sem" + sem;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            Statement query = conn.createStatement();
            String sql = "CREATE TABLE " + tableName +
                   "(Course varchar(255), " +
                   "Marks varchar(255), " + 
                   "Backlog VARCHAR(255), " + 
                   "Grade varchar(255));";
            query.executeUpdate(sql);
            for(int i=0;i<10;i++){
                String marks = "-";
                String back = "-";
                String grade = "-";
                if(subs[i]!=null){
                    sql = "insert into "+ tableName +
                  " (Course,Marks,Backlog,Grade) values('"+subs[i]+"','"+marks+"','"+back+"','"+grade+"');";
                    query.executeUpdate(sql);
                }
            }
            response.sendRedirect("regComplete.jsp?name="+roll);
        }catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
