<%-- 
    Document   : slider
    Created on : Oct 19, 2016, 1:21:08 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsiveslides.css">
	
	<script src="js/jquery-latest.min.js"></script>
	<script src="js/script.js"></script>
    <script src="js/jquery183.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <script>
		// You can also use "$(window).load(function() {"
		$(function () {
		  // Slideshow 
		  $("#slider").responsiveSlides({
			auto: true,
			pager: false,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			before: function () {
			  $('.events').append("<li>before event fired.</li>");
			},
			after: function () {
			  $('.events').append("<li>after event fired.</li>");
			}
		  });
		});
	</script>
    </head>
    <body>
       <div class="slider">
	<!-- Slideshow -->
	<div class="callbacks_container">
		<ul class="rslides" id="slider">
			<li>
				<img src="images/slideshow-image1.jpg" alt="">
				<div class="caption">
					<h1>FPT Polytechnic</h1>
					<span > Official Website</span>
				</div>
			</li>
			<li>
				<img src="images/slideshow-image2.jpg" alt="">
				<div class="caption">
					<h1>FPT Polytechnic</h1>
					<span > Official Website</span>
				</div>
			</li>
			<li>
				<img src="images/slideshow-image3.jpg" alt="">
				<div class="caption">
					<h1>FPT Polytechnic</h1>
					<span > Official Website</span>
				</div>
			</li>
		</ul>
	</div>
	<div class="clear"></div>
</div>
    </body>
</html>
