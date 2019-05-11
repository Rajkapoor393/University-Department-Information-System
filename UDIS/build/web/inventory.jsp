<%-- 
    Document   : index
    Created on : 22-Mar-2019, 17:10:57
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
        <title>Home | Computer Science And Engineering</title>
    </head>
    <style>
    <%
    //write image
    try{
      String imgName="D:\\bg_inventory.jpg";
      BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write( bImage, "jpg", baos );
        baos.flush();
        byte[] imageInByteArray = baos.toByteArray();
        baos.close();                                   
        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        %>
    body {font-family: Lucida Console, Monaco, monospace;
         background-color: #cccccc;
         background-image: url("data:image/jpg;base64, <%=b64%>");
    }  
        <% 
    }catch(IOException e){
      System.out.println("Error: "+e);
    } 


    %>
    h1 {
        text-align: center;
        color: #ffffff;
        font-size:40px;
        opacity:1;
        text-shadow: 0px 3px 5px #ffffff;
        align: center;              
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
    .b1{
        border: 2px solid #FFFFFF;
        margin:5px 5px 5px 5px;
        position: fixed;
        left:150px;
        top: 315px;
    }
    .b2 {
        border: 2px solid #FFFFFF;
        margin:5px 5px 5px 5px;
        position: fixed;
        left:150px;
        top: 490px;
    }
    .b3 {
        border: 2px solid #FFFFFF;
        margin:5px 5px 5px 5px;
        position: fixed;
        left:150px;
        top: 670px;
    }
    .b4 {
        border: 2px solid #FFFFFF;
        margin:5px 5px 5px 5px;
        position: fixed;
        right:150px;
        top: 315px;
    }
    .b5 {
        border: 2px solid #FFFFFF;
        margin:5px 5px 5px 5px;
        position: fixed;
        right:150px;
        top: 490px;
    }
    .b6 {
        border: 2px solid #FFFFFF;
        margin:5px 5px 5px 5px;
        position: fixed;
        right:150px;
        top: 670px;
    }
    </style>
    <body>
        <h1>Department of Computer Science and Engineering</h1>
        <form method="post" action="processIndex">
            <button type="submit" class="button button2 b1" value="Reg" name="b">Register Student</button>
            <button type="submit" class="button button2 b2" value="Upd" name="b">Update Student </button>
            <button type="submit" class="button button2 b3" value="Gra" name="b">Grading Information </button>
            <button type="submit" class="button button2 b4" value="Inv" name="b">Inventory</button>
            <button type="submit" class="button button2 b5" value="Pro" name="b">Project and Publications</button>
            <button type="submit" class="button button2 b6" value="Acc" name="b">Accounts and Funds</button>
        </form>
    </body>
</html>
