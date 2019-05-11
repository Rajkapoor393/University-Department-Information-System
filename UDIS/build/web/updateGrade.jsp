<%-- 
    Document   : updateGrade
    Created on : 20-Apr-2019, 22:20:04
    Author     : LENOVO
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Grading Info</title>
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
        String[] range = new String[7];
        String[] marks = new String[7];
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            Statement query = conn.createStatement();
            ResultSet rs = query.executeQuery("SELECT * FROM gradeinfo;");
            int i = 0;
            while(rs.next()){
                range[i] = rs.getString(1);
                marks[i] = rs.getString(2);
                i++;
            }
            conn.close();
        }catch(Exception e){
        }
        %>
    <body>
        <h1>Update the details you want</h1>
        <form method="post" action="updateGrade" >
            <label class="lab" style="color:white; position: fixed; left:530px;top:200px;"><b>Marks Range:</b></label>
            <label class="lab" style="color:white; position: fixed; left:960px;top:200px;"><b>Grade Assigned:</b></label>
            <input value=<%=range[0]%> required style=" position: fixed; left:430px;top:250px;" type="text" id="fname" required name="r1" placeholder="90-100">
            <input value=<%=range[1]%> required style=" position: fixed; left:430px;top:300px;" type="text" id="fname" required name="r2" placeholder="80-89">
            <input value=<%=range[2]%> required style=" position: fixed; left:430px;top:350px;" type="text" id="fname" required name="r3" placeholder="70-79">
            <input value=<%=range[3]%> required style=" position: fixed; left:430px;top:400px;" type="text" id="fname" required name="r4" placeholder="60-69">
            <input value=<%=range[4]%> required style=" position: fixed; left:430px;top:450px;" type="text" id="fname" required name="r5" placeholder="50-59">
            <input value=<%=range[5]%> required style=" position: fixed; left:430px;top:500px;" type="text" id="fname" required name="r6" placeholder="40-49">
            <input value=<%=range[6]%> required style=" position: fixed; left:430px;top:550px;" type="text" id="fname" required name="r7" placeholder="0-39">
            
            <input value=<%=marks[0]%> required style=" position: fixed; left:870px;top:250px;" type="text" id="fname" required name="m1" placeholder="90-100">
            <input value=<%=marks[1]%> required style=" position: fixed; left:870px;top:300px;" type="text" id="fname" required name="m2" placeholder="80-89">
            <input value=<%=marks[2]%> required style=" position: fixed; left:870px;top:350px;" type="text" id="fname" required name="m3" placeholder="70-79">
            <input value=<%=marks[3]%> required style=" position: fixed; left:870px;top:400px;" type="text" id="fname" required name="m4" placeholder="60-69">
            <input value=<%=marks[4]%> required style=" position: fixed; left:870px;top:450px;" type="text" id="fname" required name="m5" placeholder="50-59">
            <input value=<%=marks[5]%> required style=" position: fixed; left:870px;top:500px;" type="text" id="fname" required name="m6" placeholder="40-49">
            <input value=<%=marks[6]%> required style=" position: fixed; left:870px;top:550px;" type="text" id="fname" required name="m7" placeholder="0-39">
     
            <button type="submit">Update</button>
        </form>
    </body>
</html>