<%-- 
    Document   : dangki
    Created on : Oct 1, 2016, 10:50:56 AM
    Author     : PC
--%>
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
        <title>Singup Page</title>
        <link rel="stylesheet" href="css/login.css">
        <script src="js/login.js"></script>
    </head>
    <body>
    <jsp:include page="header.jsp"></jsp:include>
    <center>
        <div class="login-page">
  <div class="form">
      <form class="login-form" action="DangKy">
         <script>
                        
                        function ac1() {
                            var a1 = 1;
                            document.getElementById("ac").value = a1;
                        }
                        
                      
                    </script>
      <input type="text" placeholder="user" name="userr" value="<%=Model.DangKy.userr%>"/>
      <p><input type="password" placeholder="password" name="passs" value="<%=Model.DangKy.passs%>"/></p>
      <p><input type="text" placeholder="name" name="hotenn" value="<%=Model.DangKy.hotenn%>"/></p>
      <p><input type="text" placeholder="address" name="diachii" value="<%=Model.DangKy.diachii%>"/></p>
      <p><input type="text" placeholder="phone" name="sodtt" value="<%=Model.DangKy.sodtt%>"/></p>
      <p><input type="text" name="maill" placeholder="email" value="<%=Model.DangKy.maill%>"/></p>
      <input type="submit" value="Create" onclick="ac1()"/>
      <input type="text" value="" style="display: none" id="ac" name="ac">
      <p class="message">Already registered? <a href="login.jsp">Sign In</a></p>
    </form>
    </div>
</div>
        </center>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
