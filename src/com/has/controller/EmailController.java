package com.has.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
 
@Controller
public class EmailController {
 
    @Autowired
    private JavaMailSender mailSender;
     
    /**
	 * Handles a GET request to the view.
	 * Initializes and opens view.
	 * @param model
	 * @param request
	 * @param response
	 * @return the result view
     * @throws IOException 
	 */
    @RequestMapping(value="/sendEmail", method = RequestMethod.POST)
    public void sendEmail(ModelMap model, 
    		HttpServletRequest request, 
    		HttpServletResponse response,
    		RedirectAttributes redirectAttributes) throws IOException {
        
    	// takes input from e-mail form
    	String senderName = request.getParameter("senderName");
    	String senderEmail = request.getParameter("senderEmail");
        String recipientAddress = request.getParameter("recipient");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        
        // creates a simple e-mail object
        subject = "[HAS CS Website] " + subject;
        String body = "Sender: " + senderName + "\n" +
        		"Sender email: " + senderEmail + "\n" +
        		"----------\n" +
        		"Message: " + message;
        
        SimpleMailMessage email = new SimpleMailMessage();
        email.setFrom(senderEmail);
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(body);
         
        // sends the e-mail
        String contactStatus;
        try {
        	mailSender.send(email);
        	contactStatus = "success";
        }
        catch (MailException e) {
        	contactStatus = "error";
        }
         
        // forwards to calling view
        String viewName = request.getParameter("viewName");
        String queryString = request.getParameter("queryString");

        if (queryString != "") {
        	queryString += "&contactStatus=" + contactStatus;
        }
        else {
        	queryString = "?contactStatus=" + contactStatus;
        }
        
        response.sendRedirect(viewName + queryString);
    }
}