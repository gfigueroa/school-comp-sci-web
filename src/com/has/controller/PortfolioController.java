package com.has.controller;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PortfolioController {

	/**
	 * Handles a GET request to the view.
	 * Initializes and opens view.
	 * @param model
	 * @param request
	 * @return the result view
	 */
    @RequestMapping(value="/portfolio", method = RequestMethod.GET)
    public String getPage(ModelMap model, HttpServletRequest request) {

    	String yearString = request.getParameter("year");
    	int year;
    	if (yearString == null) {
    		// Get current school year
    		Calendar c = Calendar.getInstance();
    		year = c.get(Calendar.YEAR);
    		int month = c.get(Calendar.MONTH) + 1;
    		
    		if (month < 10) { // Start looking after October
    			year -= 1; // Use previous year if we are before October
    		}
    	}
    	else {
    		year = Integer.parseInt(yearString);
    	}
    	
    	model.addAttribute("year", year);
    	
        // Prepare the result view:
        return "portfolio";
    }

}