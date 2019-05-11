<%-- 
    Document   : continueToCourseReg
    Created on : 11-Apr-2019, 23:15:54
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration | <%= request.getParameter("name") %></title>
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
        position: fixed;
        left:580px;
        top:250px;
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

    button:hover {
        box-shadow: -12px 6px 16px white;
    }
        </style>
    <body>
        <h1>Registration Successful</h1>
        <h2> Your Roll Number is:<%= request.getParameter("name") %> </h2>
        <form method="post" action="course.jsp?name=<%= request.getParameter("name") %>" >
            <button type="submit">Continue to Course Registration</button>
        </form>
    </body>
</html>
