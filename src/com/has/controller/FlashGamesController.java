package com.has.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FlashGamesController {

	/**
	 * Handles a GET request to the view.
	 * Initializes and opens view.
	 * @param model
	 * @param request
	 * @return the result view
	 */
    @RequestMapping(value="/flash_games", method = RequestMethod.GET)
    public String getPage(ModelMap model, HttpServletRequest request) {

        model.addAttribute("text", "");
        // Prepare the result view:
        return "flash_games";
    }

}