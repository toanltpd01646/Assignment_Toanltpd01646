<%-- 
    Document   : quantrisp
    Created on : Oct 21, 2016, 1:33:52 PM
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
                <h1> Quản lý sản phẩm</h1>
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
            <form action="SanPham" method="post">
        <p><input type="text" name="maspp" placeholder="Mã sản phẩm" value="<%=Model.SanPham.maspp%>"  /></p>
        <p><input type="text" name="tenspp" placeholder="Tên sản phẩm" value="<%=Model.SanPham.tenspp%>"/></p>
        <p><input type="text" name="motaa" placeholder="Mô tả" value="<%=Model.SanPham.motaa%>" /></p>
        <p><input type="number" name="soluongg" placeholder="Số lượng" value="<%=Model.SanPham.soluongg%>"/></p>
        <p><input type="text" name="hinhanhh" placeholder="Hình ảnh.jpg" value="<%=Model.SanPham.hinhanhh%>"/></p>
        <p><input type="text" name="maloaii" placeholder="Mã loại" value="<%=Model.SanPham.maloaii%>"/></p>
         <p class="submit">
            <input type="submit" name="commit" value="Tìm kiếm" onclick="ac0()"/>
            <input type="submit" name="Them" value="Thêm" onclick="ac1()"/>
            <input type="submit" name="Sua" value="Sửa" onclick="ac2()"/>
            <input type="submit" name="Xoa" value="Xóa" onclick="ac3()"/>          
        </p>
         <input type="text" value="" style="display: none" id="ac" name="ac">
            </form></center>
        <a href="quantri.jsp">Đến trang quản trị tài khoản</a>
</section>
      </div></div>
    </body>
</html>