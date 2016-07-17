package com.acc.controller.unpatched;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/unpatched/csrfPost")
public class CsrfUnPatchedPostController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String input = request.getParameter("name");
		System.out.println("user input Get- " + input);
		
		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/views/csrfResult.jsp");
		rd.forward(request, response);
	}
	
}
