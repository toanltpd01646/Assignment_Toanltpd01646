<%-- 
    Document   : header
    Created on : Oct 19, 2016, 1:00:32 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsiveslides.css">
	
        
        	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->
    </head>
    <body>
        <header class="bg-theme">
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
				<ul>
				   <li class='active'><a href="index.jsp">Trang Chủ</a></li>
				   <li><a href="#">About</a></li>
				   <li><a href="contact.jsp">Liên Hệ</a></li>
                   <li <%=Model.login.hien%>><a href="login.jsp">Đăng Nhập</a></li>
              <li <%=Model.login.an%>><a href="logout">Đăng Xuất</a></li>
                            </ul>
			</div>
                    <a href='index.jsp' class="logo"><img src="images/logo_fe-300x56.png" /></a>
		</div>
	</div>
</header>
    </body>
</html>
