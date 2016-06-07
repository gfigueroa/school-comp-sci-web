<%@ page import="java.io.File" %>
<%@ page import="org.apache.log4j.Logger" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@include file='head.jsp'%>

<%

int year = (Integer) request.getAttribute("year");

final Logger logger = Logger.getLogger(portfolio_jsp.class);
final String thumbnailsPath = "/resources/projects/" + year + "/hscs/flash-games/thumbnails/";
final String projectsPath = "/resources/projects/" + year + "/hscs/flash-games/swf/";

HttpSession s = request.getSession();
ServletContext c = session.getServletContext();
File thumbnailsDirectory = new File(c.getRealPath(thumbnailsPath));
File[] thumbnailList = 
		thumbnailsDirectory.listFiles() == null ? new File[0] : 
			thumbnailsDirectory.listFiles();

%>

<body>

<%@include file='header.jsp'%>

<div class="container"><!-- start main -->

	<div class="main row">
		
 		<h2 class="style">Projects</h2>
 		
		 <div class="dropdown" style="text-align:center">
		  <button onclick="myFunction()" class="dropbtn">${year} - ${year + 1}</button>
		  <div id="myDropdown" class="dropdown-content">
		    <a href="portfolio.html?year=2015">2015 - 2016</a>
		    <a href="portfolio.html?year=2014">2014 - 2015</a>
		    <a href="portfolio.html?year=2013">2013 - 2014</a>
		  </div>
		</div>
		<br><br><br>
		
		<h3 class="style">High School Computer Science</h3>
		<br>
 		
 		<%
 		int count = 0;
 		boolean closed = false;
 		for (File thumbnail : thumbnailList) {
 			
 			
 			String thumbnailPath = thumbnailsPath + thumbnail.getName();
 			
 			// e.g. "Allen Yang - Dodge Car Game" or "Allen Yang"
 			String cleanFileName = thumbnail.getName().substring(0, thumbnail.getName().indexOf("."));
 			String fileName = cleanFileName + ".swf";
 			
 			int dashIndex = cleanFileName.indexOf('-');
 			String projectName = dashIndex != -1 ? cleanFileName.substring(dashIndex + 1) :
 					cleanFileName;
 			
 			String projectPath = projectsPath + fileName;
 			
 			String author = dashIndex != -1 ? cleanFileName.substring(0, dashIndex - 1) :
					cleanFileName;
 			
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
					<a rel="group" title="" href="<%= thumbnailPath %>"><img src="<%= thumbnailPath %>" alt=""class="img-responsive"/></a>
				</div>
				<form id="project_form" action="project.html" method="POST">
					<input type="hidden" name="projectName" value="<%= projectName %>" />
					<input type="hidden" name="projectPath" value="<%= projectPath %>" /> 
					<input type="hidden" name="fileName" value="<%= fileName %>" /> 
					<input type="hidden" name="author" value="<%= author %>" /> 
					<h3><a href="javascript:{}" onclick="document.getElementById('project_form').submit(); return false;"><%= projectName %></a></h3>
					<p class="para">Created by: <%= author %></p>
					<h4><a href="javascript:{}" onclick="document.getElementById('project_form').submit(); return false;">Play!</a></h4>
				</form>
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
 		if (!closed) { // Close row if it hasn't been closed yet
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