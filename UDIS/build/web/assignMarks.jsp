<%-- 
    Document   : assignMarks
    Created on : 20-Apr-2019, 23:53:17
    Author     : LENOVO
--%>

<%@page import="java.sql.DatabaseMetaData"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter Marks | <%=request.getParameter("name")%></title>
    </head>
    <style>
        body{
            background-color: #132239;
            font-family: Lucida Console, Monaco, monospace;
        }
       h1 {
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
            int i = 0;
            while(rs.next()){
                courseName[i] = rs.getString(1);
                i++;
            }
        }catch(Exception e){
        }
        %>
    <body>
        <h1>Enter Marks(Semester:<%=sem%>)</h1>
        <form method="post" action="assignMarks?name=<%=roll%>" >
            <label class="lab" style="color:white; position: fixed; left:530px;top:200px;"><b>Subject Name:</b></label>
            <label class="lab" style="color:white; position: fixed; left:960px;top:200px;"><b>Marks Assigned:</b></label>
            <%
                String top = "275px";
                for(int i=0;i<5;i++){
                int num = Integer.parseInt(top.substring(0,3));
                
            %>
            <label class="lab" style="color:white;position:fixed; left:500px;top:<%=top%>"><b><%=courseName[i]%>:</b></label>
            <%
                num += 50;
                top = Integer.toString(num)+"px";
                }
            %>
            <input  required style=" position: fixed; left:870px;top:250px;" type="text" id="fname" required name="m1">
            <input  required style=" position: fixed; left:870px;top:300px;" type="text" id="fname" required name="m2">
            <input  required style=" position: fixed; left:870px;top:350px;" type="text" id="fname" required name="m3">
            <input  required style=" position: fixed; left:870px;top:400px;" type="text" id="fname" required name="m4">
            <input  required style=" position: fixed; left:870px;top:450px;" type="text" id="fname" required name="m5">
            
            <button type="submit">Update</button>
        </form>
    </body>
</html>
