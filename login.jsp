<%-- 
    Document   : login
    Created on : Oct 3, 2016, 1:02:54 AM
    Author     : PC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="css/login.css">
        <script src="js/login.js"></script>
        
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
    <center>
        <div class="login-page">
  <div class="form">
   
      <form class="login-form" method="post" action="login">
          <input type="text" placeholder="username" name="username"/>
          <input type="password" placeholder="password" name="password"/>
          <button type="submit">login</button>
      <p class="message">Not registered? <a href="dangki.jsp">Create an account</a></p>
    </form>
  </div>
</div>
        </center>
<jsp:include page="footer.jsp"></jsp:include></body>
</html>
