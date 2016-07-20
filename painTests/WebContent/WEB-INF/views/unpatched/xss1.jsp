<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
</head>
<body>
		<h4>User input inserted into the body without any output encoding Lolz..</h4>
		<br>
		<%
			String name = (String) request.getAttribute("userInput");
			out.print(name);
		%>
</body>
</html>
