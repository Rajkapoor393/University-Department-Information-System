<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Complete</title>
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
        left:380px;
        top:650px;
    }
    .b2{
        
        position: fixed;
        left:880px;
        top:650px;
    }

    button:hover {
        box-shadow: -12px 6px 16px white;
    }
    </style>
    <%
        String roll = request.getParameter("name");
        String name = "x";
        String[] credit = new String[10];
        String[] debit = new String[10];
        String[] details = new String[10];
        String[] amount = new String[10];
        String line = "----------------------------------------------------------------------------------------------------";
        int sz = 0;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            Statement query = conn.createStatement();
            ResultSet rs = query.executeQuery("SELECT FirstName, LastName FROM student WHERE RollNumber='"+roll+"'"+";");
            while(rs.next()){
                name = rs.getString(1) + " ";
                name += rs.getString(2);
            }
            rs = query.executeQuery("SELECT * FROM "+roll+"_account;");
            while(rs.next()){
                credit[sz] = rs.getString(1);
                debit[sz] = rs.getString(2);
                details[sz] = rs.getString(3);
                amount[sz] = rs.getString(4);
                sz++;
            }
            conn.close();
        }catch(Exception e){
        }
        %>
    <body>
        <h1>Congratulations <%=name%> is been Successfully Updated!</h1>
        <form method="post" action="completeUpdate" >
            <label class="lab" style="color:white; position: fixed; left:400px;top:200px;"><b>Credit</b></label>
            <label class="lab" style="color:white; position: fixed; left:600px;top:200px;"><b>Debit</b></label>
            <label class="lab" style="color:white; position: fixed; left:800px;top:200px;"><b>Details</b></label>
            <label class="lab" style="color:white; position: fixed; left:1200px;top:200px;"><b>Amount</b></label>
            <label class="lab" style="color:white; position: fixed; left:400px;top:220px;"><b><%=line%></b></label>
             
            <%
                String top = "275px";
                for(int i=0;i<sz;i++){
                    int num = Integer.parseInt(top.substring(0,3));
                
            %>
            <label class="lab" style="color:white;position:fixed; left:400px;top:<%=top%>"><b><%=credit[i]%></b></label>
            <label class="lab" style="color:white;position:fixed; left:600px;top:<%=top%>"><b><%=debit[i]%></b></label>
            <label class="lab" style="color:white;position:fixed; left:800px;top:<%=top%>"><b><%=details[i]%></b></label>
            <label class="lab" style="color:white;position:fixed; left:1200px;top:<%=top%>"><b><%=amount[i]%></b></label>
             
            <%
                num += 50;
                top = Integer.toString(num)+"px";
                }
            %>
            <button class="b1" type="submit" name="act" value="home">Home</button>
            <button class="b2" type="submit" name="act" value="reg">Update More Students</button>
        </form>
    </body>
</html>
