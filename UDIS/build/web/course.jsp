<%-- 
    Document   : course
    Created on : 12-Apr-2019, 00:26:21
    Author     : LENOVO
--%>

<%@page import="java.sql.DatabaseMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Registration</title>
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
        left:650px;
        top:550px;
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
    <%
        String tableName = request.getParameter("name");
        tableName += "_Sem";
        int sem = -1;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            DatabaseMetaData dbm = conn.getMetaData();
            sem = 1;
            while(sem<=8){
                tableName += sem;
                ResultSet tables = dbm.getTables(null, null, tableName, null);
                if(tables.next()){
                    sem++;
                }else{
                    break;
                }
            }
            conn.close();
        }catch(Exception e){
        }
    %>
    <body>
        <h1>Course Registration <br><br><%= request.getParameter("name")%>,Semester:<%=sem%></h1>
        <h2>Select 5</h2>
        <form method="post" action="course?name=<%= request.getParameter("name") %>&sem=<%=sem%>">
            <label class="lab" style="color:white;position: fixed; left:70px;top:150px;"><b>C Programming</b></label>
            <input style="color:white;position: fixed; left:280px;top:150px;" type="radio" name="c" value="C">
            <label class="lab" style="color:white;position: fixed; left:70px;top:250px;"><b>C++ Programming</b></label>
            <input style="color:white;position: fixed; left:280px;top:250px;"type="radio" name="c++" value="C++">
            <label class="lab" style="color:white;position: fixed; left:70px;top:350px;"><b>DSA</b></label>
            <input type="radio" name="dsa" value="Data Structures And Algorithms" style="color:white;position: fixed; left:280px;top:350px;">
            <label class="lab" style="color:white;position: fixed; left:70px;top:450px;"><b>DBMS</b></label>
            <input type="radio" name="dbms" value="Database Management Systems" style="color:white;position: fixed; left:280px;top:450px;">
            <label class="lab" style="color:white;position: fixed; left:70px;top:550px;"><b>DE</b></label>
            <input type="radio" name="de" value="Digital Electronics" style="color:white;position: fixed; left:280px;top:550px;">
            <label class="lab" style="color:white;position: fixed; right:70px;top:150px;"><b>AE</b></label>
            <input type="radio" name="ae" value="Analog Electronics" style="color:white;position: fixed; right:280px;top:150px;">
            <label class="lab" style="color:white;position: fixed; right:70px;top:250px;"><b>OSD</b></label>
            <input type="radio" name="osd" value="Operating Systems Design" style="color:white;position: fixed; right:280px;top:250px;">
            <label class="lab" style="color:white;position: fixed; right:70px;top:350px;"><b>DC</b></label>
            <input type="radio" name="dc" value="Data Communication" style="color:white;position: fixed; right:280px;top:350px;">
            <label class="lab" style="color:white;position: fixed; right:70px;top:450px;"><b>ITC</b></label>
            <input type="radio" name="itc" value="Information Theory And Coding" style="color:white;position: fixed; right:280px;top:450px;">
            <label class="lab" style="color:white;position: fixed; right:70px;top:550px;"><b>CG</b></label>
            <input type="radio" name="cg" value="Computer Graphics" style="color:white;position: fixed; right:280px;top:550px;">
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
