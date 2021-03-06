<%-- 
    Document   : deptInv
    Created on : 27-Apr-2019, 16:08:01
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
        <title>Department Inventory</title>
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
  right:750px;
  top:725px;
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
        String[] furniture = new String[10];
        String[] location = new String[10];
        String[] qty = new String[10];
        String line = "-----------------------------------------------------------------------------";
        int sz = 0;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/udis?zeroDateTimeBehavior=convertToNull","root","");
            Statement query = conn.createStatement();
            ResultSet rs = query.executeQuery("SELECT * FROM inventory;");
            while(rs.next()){
                furniture[sz] = rs.getString(1);
                location[sz] = rs.getString(2);
                qty[sz] = rs.getString(3);
                sz++;
            }
            conn.close();
        }catch(Exception e){
        }
        %>
    <body>
        <h1>Department Inventory</h1>
        <form method="post" action="inventory.jsp">
            <label class="lab" style="color:white; position: fixed; left:400px;top:200px;"><b>Furniture Model</b></label>
            <label class="lab" style="color:white; position: fixed; left:800px;top:200px;"><b>Location</b></label>
            <label class="lab" style="color:white; position: fixed; left:1000px;top:200px;"><b>Quantity</b></label>
            <label class="lab" style="color:white; position: fixed; left:400px;top:220px;"><b><%=line%></b></label>
             
            <%
                String top = "275px";
                for(int i=0;i<sz;i++){
                    int num = Integer.parseInt(top.substring(0,3));
                
            %>
            <label class="lab" style="color:white;position:fixed; left:400px;top:<%=top%>"><b><%=furniture[i]%></b></label>
            <label class="lab" style="color:white;position:fixed; left:800px;top:<%=top%>"><b><%=location[i]%></b></label>
            <label class="lab" style="color:white;position:fixed; left:1000px;top:<%=top%>"><b><%=qty[i]%></b></label>
             
            <%
                num += 50;
                top = Integer.toString(num)+"px";
                }
            %>
            <button type="submit">Home</button>
        </form>
    </body>
</html>
