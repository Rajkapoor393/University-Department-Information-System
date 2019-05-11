<%-- 
    Document   : regComplete
    Created on : 18-Apr-2019, 15:52:21
    Author     : LENOVO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Complete</title>
    </head>
    <style>
        body{
            background-color: #132239;
            font-family: Lucida Console, Monaco, monospace;
        }
       h1,h2{
        text-align: center;
        color: #ffffff;
        font-size:40px;
        opacity:1;
        text-shadow: 0px 3px 5px #ffffff;
        align: center;
        text-decoration:underline;
    }
        button {
        font-family: Lucida Console, Monaco, monospace;
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 30px 52px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        -webkit-transition-duration: 0.4s; /* Safari */
        transition-duration: 0.4s;
        width:400px;
    }
    .b1 {
        position: fixed;
        left:580px;
        top:350px;
    }
    .b2{
        
        position: fixed;
        left:580px;
        top:250px;
    }

    button:hover {
        box-shadow: -12px 6px 16px white;
    }
    </style>
    <%
        String roll = request.getParameter("name");
        String name = "x";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            Statement query = conn.createStatement();
            ResultSet rs = query.executeQuery("SELECT FirstName, LastName FROM student WHERE RollNumber='"+roll+"'"+";");
            while(rs.next()){
                name = rs.getString(1) + " ";
                name += rs.getString(2);
            }
            conn.close();
        }catch(Exception e){
        }
        %>
    <body>
        <h1>Congratulations <%=name%> is been Successfully Registered!</h1>
        <h2> Roll Number is:<%= request.getParameter("name") %> </h2>
        <form method="post" action="regComplete" >
            <button class="b1" type="submit" name="act" value="home">Home</button>
            <button class="b2" type="submit" name="act" value="reg">Register More Students</button>
        </form>
    </body>
</html>
