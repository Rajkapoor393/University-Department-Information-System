<%-- 
    Document   : updateStuAcc
    Created on : 20-Apr-2019, 16:18:55
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
        <title>Update Details</title>
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
  right:580px;
  top:525px;
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
    left:770px;
    top:220px;
}
    </style>
    <%
        String roll = request.getParameter("name");
        
        %>
    <body>
        <h1>Update the details you want</h1>
        <form method="post" action="updateStuAcc?name=<%=roll%>" >
            <label class="lab" style="color:white; position: fixed; left:570px;top:250px;"><b>Type:</b></label>
            <select name="type" class="lab2" required>
                <option value="deb">Debit</option>
                <option value="cre">Credit</option>
            </select>
            <label class="lab" style="color:white;position: fixed; left:550px;top:350px;"><b>Amount:</b></label>
            <input required style=" position: fixed; left:780px;top:325px;"type="number" id="lname" required name="amt" placeholder="Amount" >
            <label class="lab" style="color:white;position: fixed; left:550px;top:450px;"><b>Details:</b></label>
            <input required style=" position: fixed; left:780px;top:428px;"type="text" id="lname" required name="details" placeholder="Details">
            <button type="submit">Update</button>
        </form>
    </body>
</html>
