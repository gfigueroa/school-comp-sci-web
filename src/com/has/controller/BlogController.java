package com.has.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BlogController {

	/**
	 * Handles a GET request to the view.
	 * Initializes and opens view.
	 * @param model
	 * @param request
	 * @return the result view
	 */
    @RequestMapping(value="/blog", method = RequestMethod.GET)
    public String getPage(ModelMap model, HttpServletRequest request) {

        // Prepare the result view:
        return "blog";
    }

}