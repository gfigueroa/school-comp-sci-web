<%@ page import="java.io.File" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@include file='head.jsp'%>

<%

String p1 = "BLANK1";
String p2 = "BLANK2";
try {
	final String thumbnailsPath = "resources/projects/2014/hscs/flash-games/thumbnails/";
	
	File thumbnailsDirectory = new File(request.getSession().getServletContext().getRealPath(thumbnailsPath));
	HttpSession s = request.getSession();
	ServletContext c = session.getServletContext();
	p1 = c.getRealPath("/") == null ? "NULL 1!" : c.getRealPath("/");
	p2 = c.getRealPath("/") == null ? "NULL 2!" : c.getRealPath(thumbnailsPath);
	File[] thumbnailList = thumbnailsDirectory.listFiles();
	for (File thumbnail : thumbnailList) {
		System.out.println(thumbnail.getName());
	}
}
catch (Exception e) {
	System.err.println("INFO: " + p1 + "\n" + p2);
	e.printStackTrace();
}

%>

<body>

<%@include file='header.jsp'%>

<div class="container"><!-- start main -->
	<div class="main row">
 		<h2 class="style">High School Computer Science 2014 - 2015</h2>
	 	<div class="grids_of_4 row">
			<div class="col-md-3 images_1_of_4">
				<div class="fancyDemo">
					<a rel="group" title="" href="resources/images/pic1.jpg"><img src="resources/images/pic1.jpg" alt=""class="img-responsive"/></a>
				</div>
				 <h3><a href="project.html">Lorem Ipsum is simply</a></h3>
				 <p class="para">There are many variations of passages of Lorem Ipsum available,</p>
				 <h4><a href="project.html">ipsum dolor</a> </h4>
			</div>
			<div class="col-md-3 images_1_of_4">
				<div class="fancyDemo">
					<a rel="group" title="" href="resources/images/pic2.jpg"><img src="resources/images/pic2.jpg" alt=""class="img-responsive"/></a>
				</div>
				 <h3><a href="project.html">long established fact</a></h3>
				 <p class="para">Our website design and development provides quality web solutions,</p>
				 <h4><a href="project.html">Lorem ipsum</a></h4>
			</div>
			<div class="col-md-3 images_1_of_4">
				<div class="fancyDemo">
					<a rel="group" title="" href="resources/images/pic3.jpg"><img src="resources/images/pic3.jpg" alt=""class="img-responsive"/></a>
				</div>
				 <h3><a href="project.html">Contrary to popular</a></h3>
				 <p class="para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do EIUSMOD tempor,</p>
				 <h4><a href="project.html">consectetur lipsum</a></h4>
			</div>
			<div class="col-md-3 images_1_of_4">
				<div class="fancyDemo">
					<a rel="group" title="" href="resources/images/pic4.jpg"><img src="resources/images/pic4.jpg" alt=""class="img-responsive"/></a>
				</div>
				 <h3><a href="project.html">Lorem Ipsum available</a></h3>
				 <p class="para">There are many variations of passages of Lorem Ipsum available,</p>
				 <h4><a href="project.html">lipsum adipisicing</a></h4>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div><!-- end main -->

<%@include file='contact.jsp'%>

<%@include file='footer.jsp'%>

</body>
</html>