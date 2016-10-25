package com.acc.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/restricted/test/xss")
public class XSS extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String patched = request.getParameter("patched");
		String context = request.getParameter("context");
		
		request.setAttribute("patched", patched);
		request.setAttribute("context", context);
		
		request.getRequestDispatcher("/WEB-INF/test/xss.jsp").forward(request, response);
	}
}
