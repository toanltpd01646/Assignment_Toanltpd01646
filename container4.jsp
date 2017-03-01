<%-- 
    Document   : container4
    Created on : Oct 21, 2016, 11:45:35 AM
    Author     : PC
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/login.css">
        <script src="js/login.js"></script>
         <script type="text/javascript">
            jQuery(document).ready(function () {
                jQuery('.lightbox').lightbox();
            });
        </script>
    </head>
    <body><div class="login-page">
  <div class="form">
        <section id="container"><center>
                <h1> Quản lý tài khoản </h1>
                <script>
                        function ac0() {
                            var a0 = 0;
                            document.getElementById("ac").value = a0;

                        }
                        function ac1() {
                            var a1 = 1;
                            document.getElementById("ac").value = a1;
                        }
                        function ac2() {
                            var a2 = 2;
                            document.getElementById("ac").value = a2;
                        }
                        function ac3() {
                            var a3 = 3;
                            document.getElementById("ac").value = a3;
                        }
                      
                    </script>
            <form action="xuat" method="post">
                <input type="text" placeholder="Mã KH" name="makhh" value="<%=Model.xuat.makhh%>"/>
      <p><input type="text" placeholder="Tên KH" name="tenkhh" value="<%=Model.xuat.tenkhh%>"/></p>
      <p><input type="text" placeholder="Vai trò" name="vaitroo" value="<%=Model.xuat.vaitroo%>"/></p>
      <p><input type="text" placeholder="Địa chỉ" name="diachii" value="<%=Model.xuat.diachii%>"/></p>
      <p><input type="text" placeholder="Phone" name="sdtt" value="<%=Model.xuat.sdtt%>"/></p>
      <p><input type="password" name="matkhauu" placeholder="Mật khẩu" value="<%=Model.xuat.matkhauu%>"/></p>
      <p><input type="submit" value="Tìm kiếm" onclick="ac0()"/>
      <input type="submit" value="Thêm" onclick="ac1()"/>
      <input type="submit" value="Sửa" onclick="ac2()"/>
      <input type="submit" value="Xóa" onclick="ac3()"/></p>
      <input type="text" value="" style="display: none" id="ac" name="ac">
            </form></center>
        <a href="quantrisp.jsp">Đến trang quản trị sản phẩm</a>
</section>
      </div></div>
    </body>
</html>
