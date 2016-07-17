package com.acc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/patched/XXSS")
public class XxssPatchedController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		
		response.setHeader("X-XSS-Protection", "1");
		request.setAttribute("userInput", input);
		request.getRequestDispatcher("/WEB-INF/views/patched/XxssResult.jsp").forward(
				request, response);
		
	}
}
