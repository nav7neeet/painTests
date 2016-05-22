package com.acc.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/csrf/csrfUnpatched")
public class CsrfUnPatchedController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/views/csrfResult.jsp");
		rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		String antiCSRFToken = request.getParameter("antiCSRFToken");
		System.out.println("user input Post - " + input);
		System.out.println("session creation time - " + antiCSRFToken);
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/views/csrfResult.jsp");
		rd.forward(request, response);
	}
}
