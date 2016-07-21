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
		<h4>User input inserted into hidden variable after output encoding..</h4>
		Check the page source to see the encoding..<br><br>
		
		<input type="hidden" value="<%=name%>">
</body>
</html>
