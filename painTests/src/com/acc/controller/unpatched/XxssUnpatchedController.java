package com.acc.controller.unpatched;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/unpatched/XXSS")
public class XxssUnpatchedController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		
		request.setAttribute("userInput", input);
		request.getRequestDispatcher("/WEB-INF/views/unpatched/XxssResult.jsp").forward(
				request, response);
		
	}
	
}
