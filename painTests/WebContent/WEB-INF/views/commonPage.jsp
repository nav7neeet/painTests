<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<html>
<head>
<meta http-equiv="refresh"
	content="<%=session.getMaxInactiveInterval()%>; url=<%= application.getContextPath() %>/sessionTimeOut">
<!-- <meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate" /> -->
<meta http-equiv="Pragma" content="no-cache" />
<%-- only required for browsers which dont support cache-control header --%>
<meta http-equiv="Expires" content="0" />
</head>
<body>
	<h3>
		<p>
			<font color="red"><a href="<%= application.getContextPath() %>/logout">Logout</a></font> <a
				href="<%= application.getContextPath() %>/restricted/home">Home</a>
		</p>
		Hi
		<%=session.getAttribute("user")%>, Its fantasy man!!.<br>
		<%
			session.setMaxInactiveInterval(6000);
			response.addHeader("Strict-Transport-Security",
					"max-age=31536000; includeSubDomains; preload ");
		
			/* response.addHeader("X-XSS-Protection", "0; mode=block"); */
			response.addHeader("X-Content-Type-Options", "nosniff");
		%>

	</h3>
</body>
</html>
