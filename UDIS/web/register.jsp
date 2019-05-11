<%-- 
    Document   : register
    Created on : 02-Apr-2019, 22:59:23
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.ByteArrayOutputStream"%>

<%@page import="java.math.BigInteger"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.awt.image.BufferedImage"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register New Student</title>
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
    <body>
        <h1>Student Registration</h1>
        <form method="post" action="register">
            <label class="lab1" style="color:white;"><b>Programme:</b></label>
            <select name="prog" class="lab2" required>
                <option value="SelProg">Select Programme</option>
                <option value="B.Tech">Bacherlor's Of Technology</option>
                <option value="M.Tech">Master's Of Technology</option>
                <option value="Phd">Doctor Of Philosophy</option>
                <option value="Msc">Master's In Science</option>
                <option value="Dual Deg.">Dual Degree</option>
          </select>
            <label class="lab" style="color:white; position: fixed; left:70px;top:250px;"><b>First Name:</b></label>
            <input style=" position: fixed; left:300px;top:228px;"type="text" id="fname" required name="fname" placeholder="First Name">
            <label class="lab" style="color:white;position: fixed; left:70px;top:350px;"><b>Last Name:</b></label>
            <input style=" position: fixed; left:300px;top:328px;"type="text" id="lname" required name="lname" placeholder="Last Name" >
            <label class="lab" style="color:white;position: fixed; left:70px;top:450px;"><b>Address:</b></label>
            <input style=" position: fixed; left:300px;top:428px;"type="text" id="lname" required name="addr" placeholder="Address">
            <label class="lab" style="color:white;position: fixed; left:70px;top:550px;"><b>Gender:</b></label>
            <select name="sex" class="lab4" style="position:fixed;left:300px;top:525px;" required>
                <option value="Sg">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Others" >Other</option>
            </select>
            <label class="lab" style="color:white;position: fixed; left:70px;top:650px;"><b>Guardian's Name:</b></label>
            <input required style=" position: fixed; left:300px;top:625px;" type="text" id="lname" name="gname" placeholder="Guardian Name">
            <label class="lab" style="color:white;position: fixed; right:570px;top:250px;"><b>Mobile:</b></label>
            <input required style=" position: fixed; right:150px;top:228px;" type="number" id="lname" name="mob" placeholder="Mobile">
            <label class="lab" style="color:white;position: fixed; right:570px;top:350px;"><b>Initial Account Balance:</b></label>
            <input required style=" position: fixed; right:150px;top:328px;" type="number" id="lname" name="bal" placeholder="Account">
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
