<%
String contactStatus = 
		request.getParameter("contactStatus") != null ? 
				request.getParameter("contactStatus") :
				null;
%>

<div class="footer_bg" id="contact"><!-- start contact -->
<div class="container">
	<div class="row footer">
		<div class="col-md-8 contact_left">
			
			<%
			if (contactStatus != null) {
				if (contactStatus.equalsIgnoreCase("success")) {
			%>
			<div class="alert alert-success">
			  <strong>Success!</strong> Your message was sent.
			</div>
			<%
			}
				else {
			%>
			<div class="alert alert-warning">
			  <strong>Warning!</strong> There was an error sending your message. Please contact the web page administrator.
			</div>
			<%
				}
			}
			%>
			
			<h3>get in touch</h3>
			<p>In order to get in touch use the contact form below:</p>
			<form method="post" action="sendEmail">
				<input type="text" name="senderName" value="Name (Required)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
				<input type="text" name="senderEmail" value="Email (Required)" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
				<input type="text" name="subject" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}">
				<textarea name="message" onfocus="if(this.value == 'Your Message here....') this.value='';" onblur="if(this.value == '') this.value='Your Message here....;" >Your Message here....</textarea>
				<input type="hidden" name="recipient" value="gerardo.figueroa@has.hc.edu.tw" /> 
				<input type="hidden" name="viewName" value="${viewName}" /> 
				<input type="hidden" name="queryString" value="${queryString}" /> 
				<span class="pull-right"><input type="submit" value="submit us"></span>
			</form>
		</div>
		<div class="col-md-4  contact_right">
			<p><span>Hsinchu American School: </span>
            Department of Computer Science</p>
			<ul class="list-unstyled address">
				<li><i class="fa fa-map-marker"></i><span>No.2, Yih-Shuh Road, National Art Park, Hsinchu, Taiwan 300-67</span></li>
				<li><i class="fa fa-phone"></i><span>(00) 222 666 444</span></li>
				<li><i class="fa fa-envelope"></i><a href="mailto:gerardo.figueroa@has.hc.edu.tw">gerardo.figueroa@has.hc.edu.tw</a></li></ul>
		</div>		
	</div>
</div>
</div>