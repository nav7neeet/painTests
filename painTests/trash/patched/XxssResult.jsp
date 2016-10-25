<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
</head>
<body>
		<h4>User input as it is without any sanitization.</h4>
		<br>Not sure about the FF and IE behaviour about X-XSS-Protection.<br>
		<%
			String name = (String) request.getAttribute("userInput");
			out.print(name);
		%>
</body>
</html>
