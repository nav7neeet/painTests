package com.acc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/unpatched/xss")
public class XssUnpatchedController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		String hiddenVar = request.getParameter("hiddenVar");
		System.out.println("user input - " + input);
		
		switch (hiddenVar)
		{
			case "body":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/views/unpatched/xss1.jsp")
						.forward(request, response);
				break;
			
			case "attribute":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/views/unpatched/xss2.jsp")
						.forward(request, response);
				break;
			
			case "hidden":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/views/unpatched/xss3.jsp")
						.forward(request, response);
				break;
			
			case "js":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/views/unpatched/xss4.jsp")
						.forward(request, response);
				break;
			
			case "css":
				request.setAttribute("userInput", input);
				request.getRequestDispatcher("/WEB-INF/views/unpatched/xss5.jsp")
						.forward(request, response);
				break;
			
			default:
				break;
		}
		
	}
}
