<%-- 
    Document   : detailsToBeUpdated
    Created on : 18-Apr-2019, 17:13:16
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
  right:150px;
  top:625px;
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
        String roll = request.getParameter("name");
        String fname="",lname="",addr="",gname="",mob="";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            Statement query = conn.createStatement();
            ResultSet rs = query.executeQuery("SELECT * FROM student WHERE RollNumber='"+roll+"'"+";");
            while(rs.next()){
                fname = rs.getString(1);
                lname = rs.getString(2);
                addr = rs.getString(3);
                gname = rs.getString(5);
                mob = rs.getString(6);
            }
            conn.close();
        }catch(Exception e){
        }
        %>
    <body>
        <h1>Update the details you want</h1>
        <form method="post" action="detailsToBeUpdated?name=<%=roll%>" >
            <label class="lab" style="color:white; position: fixed; left:70px;top:250px;"><b>First Name:</b></label>
            <input value=<%=fname%> required style=" position: fixed; left:300px;top:228px;" type="text" id="fname" required name="fname" placeholder="First Name">
            <label class="lab" style="color:white;position: fixed; left:70px;top:350px;"><b>Last Name:</b></label>
            <input value=<%=lname%> required style=" position: fixed; left:300px;top:328px;"type="text" id="lname" required name="lname" placeholder="Last Name" >
            <label class="lab" style="color:white;position: fixed; left:70px;top:450px;"><b>Address:</b></label>
            <input value=<%=addr%> required style=" position: fixed; left:300px;top:428px;"type="text" id="lname" required name="addr" placeholder="Address">
            <label class="lab" style="color:white;position: fixed; left:70px;top:550px;"><b>Guardian's Name:</b></label>
            <input value=<%=gname%> required style=" position: fixed; left:300px;top:528px;" type="text" id="lname" name="gname" placeholder="Guardian Name">
            <label class="lab" style="color:white;position: fixed; right:570px;top:250px;"><b>Mobile:</b></label>
            <input value=<%=mob%> required style=" position: fixed; right:150px;top:228px;" type="number" id="lname" name="mob" placeholder="Mobile">
            <button type="submit">Update</button>
        </form>
    </body>
</html>
