<%-- 
    Document   : chooseUpdateMethod
    Created on : 20-Apr-2019, 16:07:39
    Author     : LENOVO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select Update Process</title>
    </head>
    <style>
        body{
            background-color: #132239;
            font-family: Lucida Console, Monaco, monospace;
            color:white;
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
    .container {
  padding: 16px;
  width:50%;
  margin:auto;
    }
    
form {border: 3px solid #f1f1f1;
    margin:0px 50px 20px 300px;
    position: fixed;
    left: 330px;
    top:200px;
}
  .button {
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

    .button2:hover {
        box-shadow: -12px 6px 16px white;
    }
    

    </style>
    <body>
        <h1>Select Update Process</h1>
        <div class="container">
            <form method="post" action="chooseUpdateMethod">
                <button class="button button2 b1" type="submit" name="stu" value="per">Update Personal Details</button><br>
                <button class="button button2 b2" type="submit" name="stu" value="acc">Update Account Details</button>
            </form>
        </div>
    </body>
</html>
