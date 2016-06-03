<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<%@include file='head.jsp'%>

<body>

<%@include file='header.jsp'%>

<div class="blog"><!-- start main -->
	<div class="container">
		<div class="main row" style="text-align:center">
			<h2 class="style">${projectName}</h2>
			<h3 class="style">Created by: ${author}</h3>
			
			<div id="flashContent" class="flashContent">
				<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="500" height="500" id="${projectName}" align="middle">
					<param name="movie" value="${fileName}" />
					<param name="quality" value="high" />
					<param name="bgcolor" value="#ffffff" />
					<param name="play" value="true" />
					<param name="loop" value="true" />
					<param name="wmode" value="window" />
					<param name="scale" value="showall" />
					<param name="menu" value="true" />
					<param name="devicefont" value="false" />
					<param name="salign" value="" />
					<param name="allowScriptAccess" value="sameDomain" />
					<!--[if !IE]>-->
					<object type="application/x-shockwave-flash" data="${projectPath}" width="500" height="500">
						<param name="movie" value="${fileName}" />
						<param name="quality" value="high" />
						<param name="bgcolor" value="#ffffff" />
						<param name="play" value="true" />
						<param name="loop" value="true" />
						<param name="wmode" value="window" />
						<param name="scale" value="showall" />
						<param name="menu" value="true" />
						<param name="devicefont" value="false" />
						<param name="salign" value="" />
						<param name="allowScriptAccess" value="sameDomain" />
					<!--<![endif]-->
						<a href="http://www.adobe.com/go/getflash">
							<img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" />
						</a>
					<!--[if !IE]>-->
					</object>
					<!--<![endif]-->
				</object>
			</div>
			
			<div class="read_more btm">
				<a href="portfolio.html">Back</a>
				<a href="" onClick="history.go(0)">Reset</a>
			</div>

			
		</div>
	</div>
</div><!-- end main -->

<%@include file='contact.jsp'%>

<%@include file='footer.jsp'%>

</body>
</html>