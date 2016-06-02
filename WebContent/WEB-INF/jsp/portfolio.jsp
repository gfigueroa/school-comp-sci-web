<%@ page import="java.io.File" %>
<%@ page import="org.apache.log4j.Logger" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@include file='head.jsp'%>

<%
final Logger logger = Logger.getLogger(portfolio_jsp.class);
final String thumbnailsPath = "resources/projects/2014/hscs/flash-games/thumbnails/";

String p1 = "BLANK1";
String p2 = "BLANK2";
File[] thumbnailList = null;
try {
	logger.info("Part 1");
	HttpSession s = request.getSession();
	logger.info("Part 2");
	ServletContext c = session.getServletContext();
	logger.info("Part 3");
	p1 = c.getRealPath("/") == null ? "NULL 1!" : c.getRealPath("/");
	p2 = c.getRealPath(thumbnailsPath) == null ? "NULL 2!" : c.getRealPath(thumbnailsPath);
	logger.info("Part 4");
	File thumbnailsDirectory = new File(c.getRealPath(thumbnailsPath));
	logger.info("Part 5");
	thumbnailList = thumbnailsDirectory.listFiles();
	logger.info("Part 6");
	for (File thumbnail : thumbnailList) {
		System.out.println(thumbnail.getName());
	}
	logger.info("Part 7");
}
catch (Exception e) {
	System.err.println("INFO: " + p1 + "\n" + p2);
	e.printStackTrace();
	throw e;
}

%>

<body>

<%@include file='header.jsp'%>

<div class="container"><!-- start main -->
	<div class="main row">
 		<h2 class="style">High School Computer Science 2014 - 2015</h2>
 		<%
 		int count = 0;
 		boolean closed = false;
 		for (File thumbnail : thumbnailList) {
 			closed = false;
 			if (count % 4 == 0) { // Each 4 columns, add one new row
 		%>
 		<div class="grids_of_4 row">
 		<%
 			}
 			count++;
 		%>
			<div class="col-md-3 images_1_of_4">
				<div class="fancyDemo">
					<a rel="group" title="" href="<%= thumbnailsPath + thumbnail.getName() %>"><img src="<%= thumbnailsPath + thumbnail.getName() %>" alt=""class="img-responsive"/></a>
				</div>
				 <h3><a href="project.html"><%= thumbnail.getName().substring(0, thumbnail.getName().indexOf(".")) %></a></h3>
				 <p class="para">Created by: <%= thumbnail.getName().substring(0, thumbnail.getName().indexOf(".")) %></p>
				 <h4><a href="project.html">Play!</a> </h4>
			</div>
		<%
			if (count % 4 == 0) { // Each 4 columns, close row
				closed = true;
		%>
			<div class="clear"></div>
		</div>
		<%
			}
 		}
 		if (!closed) {
 		%>
		<div class="clear"></div>
		</div>
 		<%
 		}
		%>
	</div>
</div><!-- end main -->

<%@include file='contact.jsp'%>

<%@include file='footer.jsp'%>

</body>
</html>