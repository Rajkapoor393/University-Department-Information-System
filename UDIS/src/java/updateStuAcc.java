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
@WebServlet(urlPatterns = {"/updateStuAcc"})
public class updateStuAcc extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateStuAcc</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet updateStuAcc at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        String type = request.getParameter("type");
        String amt = request.getParameter("amt");
        String details = request.getParameter("details");
        String roll = request.getParameter("name");
        String tableName = roll+"_account";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            Statement query = conn.createStatement();
            String sql = "SELECT * FROM "+tableName+ " ORDER BY Amount DESC LIMIT 1";
            ResultSet rs = query.executeQuery(sql);
            int Amt = -1;
            while(rs.next()){
                Amt = Integer.parseInt(rs.getString(4));
            }
            String hyphen = "-";
            if(type.equals("deb")){
                Amt -= Integer.parseInt(amt);
                sql = "Insert into "+ tableName +"(Credit,Expense,Details,Amount) Values('"+hyphen+"','"+amt+"','"+details+"','"+Amt+"');";
            
            }else if(type.equals("cre")){
                Amt += Integer.parseInt(amt);
                sql = "Insert into "+ tableName +"(Credit,Expense,Details,Amount) Values('"+amt+"','"+hyphen+"','"+details+"','"+Amt+"');";
            }
            //" (Credit,Expense,Details,Amount) values('"+bal+"','"+hyphen+"','"+msg+"','"+bal+"');"
            query.executeUpdate(sql);
            /**/
            conn.close();
            response.sendRedirect("completeUpdate.jsp?name="+roll);
        }catch (SQLException e) {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(detailsToBeUpdated.class.getName()).log(Level.SEVERE, null, ex);
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
