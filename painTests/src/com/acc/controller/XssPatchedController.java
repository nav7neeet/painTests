package com.acc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.owasp.esapi.ESAPI;

@WebServlet("/restricted/patched/xss")
public class XssPatchedController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		String hiddenVar = request.getParameter("hiddenVar");
		String output = "";
		System.out.println("user input - " + input);
		
		switch (hiddenVar)
		{
			case "body":
				output = ESAPI.encoder().encodeForHTML(input);
				request.setAttribute("userInput", output);
				request.getRequestDispatcher("/WEB-INF/views/patched/xss1.jsp").forward(
						request, response);
				break;
			
			case "attribute":
				output = ESAPI.encoder().encodeForHTMLAttribute(input);
				request.setAttribute("userInput", output);
				request.getRequestDispatcher("/WEB-INF/views/patched/xss2.jsp").forward(
						request, response);
				break;
			
			case "hidden":
				output = ESAPI.encoder().encodeForHTMLAttribute(input);
				request.setAttribute("userInput", output);
				request.getRequestDispatcher("/WEB-INF/views/unpatched/xss3.jsp")
						.forward(request, response);
				break;
			
			case "js":
				output = ESAPI.encoder().encodeForJavaScript(input);
				request.setAttribute("userInput", output);
				request.getRequestDispatcher("/WEB-INF/views/unpatched/xss4.jsp")
						.forward(request, response);
				break;
			
			default:
				break;
		}
	}
}
