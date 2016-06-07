package com.has.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProjectController {

	/**
	 * Handles a GET request to the view.
	 * Initializes and opens view.
	 * @param model
	 * @param request
	 * @return the result view
	 */
    @RequestMapping(value="/project", method = RequestMethod.POST)
    public String getPage(ModelMap model, HttpServletRequest request) {
    	String projectName = request.getParameter("projectName");
    	String projectPath = request.getParameter("projectPath");
    	String fileName = request.getParameter("fileName");
    	String author = request.getParameter("author");
    	
    	model.addAttribute("projectName", projectName);
    	model.addAttribute("projectPath", projectPath);
    	model.addAttribute("fileName", fileName);
    	model.addAttribute("author", author);
        // Prepare the result view:
        return "project";
    }

}