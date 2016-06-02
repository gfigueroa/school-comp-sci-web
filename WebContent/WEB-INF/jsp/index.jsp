<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@include file='head.jsp'%>

<body>

<%@include file='header.jsp'%>

<div class="slider_bg"><!-- start slider -->
<div class="container">
		<div class="row slider">
		<div class="wmuSlider example1"><!-- start wmuSlider example1 -->
			   <div class="wmuSliderWrapper">
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				  	 	<div class="slider_img text-center">
				   			<ul class="list-unstyled list_imgs">
				   				<li><img src="resources/images/slider.jpg" alt="" class="responsive"/></li>
				   			</ul>
			           	</div>
				   </article>
				   <article style="position: relative; width: 100%; opacity: 1;"> 
				  	 	<div class="slider_img text-center">
				   			<ul class="list-unstyled list_imgs">
				   				<li><img src="resources/images/slider1.jpg" alt="" class="responsive"/></li>
				   			</ul>
			           	</div>
				   </article>
				 </div>
                <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                </ul>
			<script src="resources/js/jquery.wmuSlider.js"></script> 
		     <script>
				 $('.example1').wmuSlider();         
			</script>
        </div><!-- end wmuSlider example1 -->
        <div class="clearfix"></div>
      </div>
</div>
</div>
<div class="main_bg"  id="about"><!-- start about us -->
<div class="container">
	<div class="row about">
		<div class="col-md-3 about_img">
			<img src="resources/images/user.png" alt="" class="responsive"/>
		</div>
		<div class="col-md-9 about_text">
			<h3>Computer Science</h3>
			<h4>Hsinchu American School</h4>
			<p>The Department of Computer Science at Hsinchu American School.</p>
			<div class="soc_icons navbar-right">
				<ul class="list-unstyled text-center">
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
					<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
				</ul>	
			</div>
		</div>
	</div>
</div>
</div>

<%@include file='contact.jsp'%>

<%@include file='footer.jsp'%>

</body>
</html>