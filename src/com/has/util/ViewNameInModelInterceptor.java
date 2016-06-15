package com.has.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class ViewNameInModelInterceptor extends HandlerInterceptorAdapter {

	/**
	 * Intercepts all HTTP requests and attaches the calling view name and
	 * query string to the request.
	 * @param request
	 * @param response
	 * @param handler
	 * @param modelAndView
	 */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
    	
        if (modelAndView != null) {
            modelAndView.addObject("viewName", modelAndView.getViewName());
            
            String queryString = "";
            if (request.getParameterMap().size() != 0) {
            	queryString = "?";
	            for (Object parameterName : request.getParameterMap().keySet()) {
	            	String name = (String) parameterName;
	            	queryString += name + "=" + request.getParameter(name) + "&";
	            }
	            queryString = queryString.substring(0, queryString.length() - 1); // Remove last &
            }
        	modelAndView.addObject("queryString", queryString);
        }
        super.postHandle(request, response, handler, modelAndView);
    }

}