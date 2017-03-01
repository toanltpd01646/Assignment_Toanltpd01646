<%-- 
    Document   : container2
    Created on : Oct 20, 2016, 11:39:58 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section id="container">
	<div class="zerogrid">
		<div class="wrap-container clearfix">
			<div id="main-content">
				<div class="wrap-box"><!--Start Box-->
					<div class="header">
						<h1>Contact</h1>
						<p>Sử dụng mẫu dưới đây để liên lạc với chúng tôi. Chia sẻ các yêu cầu cụ thể của bạn và chúng tôi vui vẻ để trả lời lại ngay. Bạn cũng có thể liên hệ với chúng tôi qua điện thoại, lòng cho hay tại văn phòng của chúng tôi trong giờ làm việc.</p>
					</div>	
					<div class="row">
						<div class='embed-container maps'>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1581.1833027742075!2d108.16993533931573!3d16.074853518489796!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xcaff29dfb73f0ac!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQsIMSQw6AgTuG6tW5n!5e0!3m2!1svi!2s!4v1475562919166" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
						</div>
						<div class="col-2-3">
							<div class="wrap-col">
								<div class="contact">
									<div class="contact-header">
										<h5>Contact Form</h5>
									</div>
									<div id="contact_form">
										<form name="form1" id="ff" method="post" action="contact.php">
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="name" id="name" placeholder="Enter name" required />
													</div>
												</div>
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="email" name="email" id="email" placeholder="Enter email" required />
													</div>
												</div>
											</label>
											<label class="row">
												<div class="wrap-col">
													<input type="text" name="subject" id="subject" placeholder="Subject" required />
												</div>
											</label>
											<label class="row">
												<div class="wrap-col">
													<textarea name="message" id="message" class="form-control" rows="4" cols="25" required
													placeholder="Message"></textarea>
												</div>
											</label>
											<center><input class="sendButton" type="submit" name="Submit" value="Submit"></center>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-1-3">
							<div class="wrap-col">
								<div class="contact-header">
									<h5>Contact Info</h5>
								</div>
								<div style="background: #fff; padding: 20px; box-shadow: 2px 2px 5px 0px rgba(0,0,0,0.3);">
									<span>Vui lòng liên hệ qua địa chỉ liên lạc dưới đây</span>
									<p>137 Nguyễn Thị Thập - Phường Hòa Minh<br>
										Đà Nẵng-Việt Nam</p>
									   <p>+113 <br>
										+114</p>
									<p>toanlt@fpt.eu.vn
                                    
                                    </p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

    </body>
</html>
