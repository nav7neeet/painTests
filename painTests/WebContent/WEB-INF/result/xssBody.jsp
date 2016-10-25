<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
</head>
<body>
		<% response.setHeader("X-XSS-Protection", "0"); %>
		<% 
			String patched=(String)request.getAttribute("patched");
			if("true".equals(patched))
				out.print("<h4>User input inserted into the body after output encoding Lolz..</h4> Check the page source to see the encoding..<br><br>");
			else
				out.print("<h4>User input inserted into the body without any output encoding Lolz..</h4>");
		%>
		
		<br>
		<%
			String name = (String) request.getAttribute("userInput");
			out.print(name);
		%>
</body>
</html>
