<%-- 
    Document   : container
    Created on : Oct 19, 2016, 1:37:26 PM
    Author     : PC
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsiveslides.css">
    </head>
    <body>
        <section id="container">
	<div class="wrap-container clearfix">
	  <div id="main-content">
			<div class="wrap-box"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>Các loại xe</h2>
					</div>	
					<div class="row">
                                            <% 
                Statement st = Controller.ConnecDB.ConnecDB().createStatement();
                ResultSet rs = st.executeQuery("SELECT `maSP`, `tenSP`, `moTa`, `soLuong`, `hinhAnh`, `loaiSanPham_maLSP` FROM `sanpham`");
            %>
            <% while(rs.next()){%>
						<div class="col-1-3">
							<div class="wrap-col">
								<div class="item t-center">
									<div class="item-container">
										<a href="single.jsp">
											<div class="item-caption">
												<div class="item-caption-inner">
													<div class="item-caption-inner1">
														<span>2006 / 45,000 km / 250 HP / petrol / automatic /  Sports car/Coupe / Beige</span>
													</div>
												</div>
											</div>
                                                                                    <img src="images/<%=rs.getString(5)%>" />
										</a>
									</div>
									<div class="item-info">
                                                                            <a href="single.jsp"><h3><%=rs.getString(2)%></h3></a>
                                                                            <p></p>
									</div>
								</div>
								
							</div>
						</div>
                                                <%}%>
						
			</div>
		<div class="wrap-box t-center" style="background: #fff; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);"><!--Start Box-->
				<div class="zerogrid">
					<div class="header">
						<h2>Chào mừng bạn đến với công ti xe FPT</h2>
					</div>
					<strong>FPT  - nhà sản xuất xe hơi sang trọng của Đức.</strong>
					<p>Là một nhà sản xuất có chất lượng cao và xe hơi sang trọng sáng tạo, FPT là một trong những thương hiệu cao cấp hàng đầu thế giới và là một trong những ngưỡng mộ nhất trên thị trường thế giới. Các cơ sở thành công của nó bao gồm các khái niệm tiên phong trong lĩnh vực công nghệ tiên tiến và thiết kế.
FPT được đại diện tại 110 quốc gia trên toàn thế giới và từ năm 2004, Audi đã bán sản phẩm của mình trên thị trường Việt Nam và toàn thế giới.</p>
				</div>
		  </div>
<!--Start Box-->
	    
		</div>
	</div>
</section>
    </body>
</html>
