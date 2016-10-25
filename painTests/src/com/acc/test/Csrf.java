package com.acc.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/test/csrf")
public class Csrf extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String patched = request.getParameter("patched");
		String method = request.getParameter("method");
		request.setAttribute("patched", patched);
		request.setAttribute("method", method);
		
		request.getRequestDispatcher("/WEB-INF/test/csrf.jsp").forward(request, response);
	}
}
