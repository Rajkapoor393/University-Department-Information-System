<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.ByteArrayOutputStream"%>

<%@page import="java.math.BigInteger"%>
<%@page import="javax.xml.bind.DatatypeConverter"%>
<%@page import="java.awt.image.BufferedImage"%>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Administrator Login | Hogwarts University</title>
<style>
    <%
    //write image
    try{
      String imgName="D:\\hogwarts.jpg";
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

form {border: 3px solid #f1f1f1;
    margin:0px 300px 20px 300px;}
h2,h3{
    text-align: center;
    color: #ffffff;
    font-size:40px;
    opacity:1;
    text-shadow: 0px 3px 5px #ffffff;
}
h2:hover {
    color: #ffffff;
    opacity:1;
    
}
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
  font-family: Lucida Console, Monaco, monospace;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  font-family: Lucida Console, Monaco, monospace;
}

button:hover {
  opacity: 0.95;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
  width:50%;
  margin:auto;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<h2>Hogwarts University Of Science, Magic And Engineering</h2>
<h3>Administrator Login</h3>

<form action="adminlogin" method="POST">
  <div class="imgcontainer">
    <%
    //write image
    try{
      String imgName="D:\\admin.jpg";
      BufferedImage bImage = ImageIO.read(new File(imgName));//give the path of an image
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write( bImage, "jpg", baos );
        baos.flush();
        byte[] imageInByteArray = baos.toByteArray();
        baos.close();                                   
        String b64 = DatatypeConverter.printBase64Binary(imageInByteArray);
        %>
        <img  class="img-responsive" src="data:image/jpg;base64, <%=b64%>"/>                            
        <% 
    }catch(IOException e){
      System.out.println("Error: "+e);
    } 


    %>
  </div>

  <div class="container">
      <label for="uname" style="color:white;"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw" style="color:white;"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pswd" required>
        
    <button type="submit">Login</button>
    <% 
        String reply = "";
        if(null!=request.getAttribute("errorMessage"))
            reply = request.getAttribute("errorMessage").toString();
    %>
    <label style="color:white;"><b><%=reply%></b></label>
  </div>

  
</form>

</body>
</html>
