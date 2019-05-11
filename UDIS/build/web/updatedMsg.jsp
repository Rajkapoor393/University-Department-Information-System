<%-- 
    Document   : updatedMsg
    Created on : 26-Apr-2019, 20:35:59
    Author     : LENOVO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DatabaseMetaData"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grade Sheet</title>
    </head>
        <style>
        body{
            background-color: #132239;
            font-family: Lucida Console, Monaco, monospace;
        }
       h1,h2 {
        text-align: center;
        color: #ffffff;
        font-size:40px;
        opacity:1;
        text-shadow: 0px 3px 5px #ffffff;
        align: center;
        text-decoration:underline;
    }
    input[type=text],input[type=number] {
        width: 20%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: 3px solid black;
        -webkit-transition: 0.5s;
        transition: 0.5s;
        outline: none;
        display:inline-block;
        font-family: Lucida Console, Monaco, monospace;
}
select{
    width: 20%;
         padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        border: 3px solid black;
        -webkit-transition: 0.5s;
        transition: 0.5s;
        outline: none;
        display:inline-block;
            font-family: Lucida Console, Monaco, monospace;
}
option{
    width: 12.5%;
    background-color: #f1f1f1;
    padding: 12px 20px;
   margin: 8px 0;
   box-sizing: border-box;
   border: 3px solid black;
   -webkit-transition: 0.5s;
   transition: 0.5s;
   outline: none;
   display:block;
}
option:hover{
    background-color: #ddd;
    display: block;
}
::-webkit-input-placeholder {
  font-family: Lucida Console, Monaco, monospace;
}
input[type=text]:focus {
  border: 3px solid white;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  cursor: pointer;
  position:fixed;
  right:700px;
  top:688px;
  width:20%;
  font-family: Lucida Console, Monaco, monospace;
}

button:hover {
  opacity: 0.95;
}
.lab1{
    margin: 10px 10px 10px 10px;
    position: fixed;
    left:70px;
    top:150px;
}
.lab2{
    margin: 10px 10px 10px 10px;
    position: fixed;
    left:290px;
    top:130px;
}
    </style>
    <%
        double per = 0;
        String roll = request.getParameter("name");
        String sem = request.getParameter("sem");
        String name = "";
        String tableName = ""+roll+"_Sem"+sem;
        String[] courseName = new String[5];
        String[] marks = new String[5];
        String[] backlog = new String[5];
        String[] grade = new String[5];
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            DatabaseMetaData dbm = conn.getMetaData();
            Statement query = conn.createStatement();
            String sql = "SELECT FirstName,LastName FROM student WHERE RollNumber='"+roll+"';";
            ResultSet rs = query.executeQuery(sql);
            while(rs.next()){
                name = rs.getString(1)+" "+rs.getString(2);
            }
            sql = "SELECT * FROM "+tableName+";";
            rs = query.executeQuery(sql);
            int i = 0;
            while(rs.next()){
                courseName[i] = rs.getString(1);
                marks[i] = rs.getString(2);
                backlog[i] = rs.getString(3);
                grade[i] = rs.getString(4);
                per += Double.parseDouble(marks[i]);
                i++;
            }
            per = (per*100)/500.0;
            per = per/10.0 + 0.5;
        }catch(Exception e){
            
        }
    %>
    <body>
        <h1>Grade Sheet</h1>
        <h2>Name:<%=name%> | Roll Number:<%=roll%> | Semester:<%=sem%></h2>
        <form method="post" action="inventory.jsp" >
            <label class="lab" style="color:white; position: fixed; left:400px;top:200px;"><b>Subject Name:</b></label>
            <label class="lab" style="color:white; position: fixed; left:800px;top:200px;"><b>Marks Assigned:</b></label>
            <label class="lab" style="color:white; position: fixed; left:1000px;top:200px;"><b>Backlog:</b></label>
            <label class="lab" style="color:white; position: fixed; left:1200px;top:200px;"><b>Grade:</b></label>
            <%
                String top = "275px";
                for(int i=0;i<5;i++){
                int num = Integer.parseInt(top.substring(0,3));
                
            %>
            <label class="lab" style="color:white;position:fixed; left:400px;top:<%=top%>"><b><%=courseName[i]%></b></label>
            <label class="lab" style="color:white;position:fixed; left:800px;top:<%=top%>"><b><%=marks[i]%></b></label>
            <label class="lab" style="color:white;position:fixed; left:1000px;top:<%=top%>"><b><%=backlog[i]%></b></label>
            <label class="lab" style="color:white;position:fixed; left:1200px;top:<%=top%>"><b><%=grade[i]%></b></label>
            
            <%
                num += 50;
                top = Integer.toString(num)+"px";
                }
            %>
            <label class="lab" style="color:white;position:fixed; left:1200px;top:<%=top%>"><b>GPA: <%=per%></b></label>
            <button type="submit">Home</button>
        </form>
    </body>
</html>
