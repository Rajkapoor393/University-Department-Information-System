/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
@WebServlet(urlPatterns = {"/assignMarks"})
public class assignMarks extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String xxx = "12";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet assignMarks</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet assignMarks at " +xxx+ "</h1>");
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
        String[] courseName = new String[5];
        String roll = request.getParameter("name");
        String tableName = roll + "_Sem";
        int sem = -1;
        String sql = "";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            DatabaseMetaData dbm = conn.getMetaData();
            sem = 1;
            while(sem<=8){
                ResultSet tables = dbm.getTables(null, null, tableName, null);
                if(tables.next()){
                    sem++;
                }else{
                    break;
                }
            }
            tableName = tableName+ "" +sem;
            Statement query = conn.createStatement();
            sql = "SELECT Course FROM "+tableName+";";
            ResultSet rs = query.executeQuery(sql);
            int it = 0;
            while(rs.next()){
                courseName[it] = rs.getString(1);
                it++;
            }
         String[] marks = new String[5];
         String[] backlog = new String[5];
         String[] grade = new String[5];
         for(int i=0;i<5;i++){
            marks[i] = request.getParameter("m"+(i+1));
            int m = Integer.parseInt(marks[i]);
            if(m<34){
                backlog[i] = "Yes";
            }else{
                backlog[i] = "No";
            }
            if(m>90)
                grade[i] = "Ex";
            else if(m>80)
                grade[i] = "A";
            else if(m>70)
                grade[i] = "B";
            else if(m>60)
                grade[i] = "C";
            else if(m>50)
                grade[i] = "D";
            else if(m>=34)
                grade[i] = "P";
            else
                grade[i] = "F";
         }
            for(int i=0;i<5;i++){
                sql = "UPDATE "+tableName+" SET Marks='"+marks[i]+"',Backlog='"+backlog[i]+"',Grade='"+grade[i]+"' WHERE Course='"+courseName[i]+"';";
                query.executeUpdate(sql);
            }
           
            request.setAttribute("sem",sem);
            request.setAttribute("name", roll);
            response.sendRedirect("updatedMsg.jsp?name="+roll+"&sem="+sem);
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
