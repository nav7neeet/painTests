<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>

<title>XSS</title>
<%
	String name = (String) request.getAttribute("userInput");
%>
</head>
<body>
		<% response.setHeader("X-XSS-Protection", "0"); %>
		<h4>User input inserted into HTML attribute without output encoding</h4>
		<br>
		<a href=http://www.google.com/<%=name%>> Google</a>

</body>
</html>
