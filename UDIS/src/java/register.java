/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author LENOVO
 */
@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

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
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
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
    void pfs(String s){
        System.out.println(s);
    }
    @Override
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String prog = request.getParameter("prog");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String gen = request.getParameter("sex");
        String gname = request.getParameter("gname");
        String mob = request.getParameter("mob");
        String bal = request.getParameter("bal");
        String addr = request.getParameter("addr");
        String s = prog+" "+fname+" "+lname+" "+gen+" "+gname+" "+mob+" "+bal+" "+addr;
        String rollNum = "";
        if(prog.equals("B.Tech"))
            rollNum += "1";
        else if(prog.equals("M.Tech"))
            rollNum += "2";
        else if(prog.equals("Phd"))
            rollNum += "3";
        else if(prog.equals("Dual Deg."))
            rollNum += "7";
        else
            rollNum += "4";
        int year = Calendar.getInstance().get(Calendar.YEAR);
        year = year%100;
        Random rand = new Random();
        rollNum += Integer.toString(year)+"CS";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            Statement query = conn.createStatement();
            ResultSet rs = query.executeQuery("SELECT Rand FROM student");
            int r1 = rand.nextInt(1000);
            while(true){
                boolean isValid = true;
                while(rs.next()){
                    String check = rs.getString("Rand");
                    if(Integer.toString(r1).equals(check)){
                        isValid = false;
                        break;
                    }
                }
                if(!isValid){
                    r1 = rand.nextInt(1000);
                }else{
                    break;
                }
            }
            rollNum += ""+r1;
            String sql = "Insert into student(FirstName,LastName,Address,Gender,GuardiansName,Mobile,Programme,RollNumber,Rand) Values('"+fname+"','"+lname+"','"+addr+"','"+gen+"','"+gname+"','"+mob+"','"+prog+"','"+rollNum+"','"+r1+"');";
            //System.out.println(sql);
            query.executeUpdate(sql);
            String stuAccount = rollNum + "_Account";
            sql =  "CREATE TABLE " + stuAccount +
                   "(Credit varchar(255), " +
                   "Expense varchar(255), " + 
                   "Details VARCHAR(255), " + 
                   "Amount int);";
            query.executeUpdate(sql);
            String hyphen = "-";
            String msg = "Credited during joining of Institute";
            sql = "insert into "+ stuAccount +
                  " (Credit,Expense,Details,Amount) values('"+bal+"','"+hyphen+"','"+msg+"','"+bal+"');";
            query.executeUpdate(sql);
            response.sendRedirect("continueToCourseReg.jsp?name="+rollNum);
        }catch(Exception e){
            
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
