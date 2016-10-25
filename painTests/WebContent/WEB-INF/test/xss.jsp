<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>Test XSS</title>
</head>
<body>
	<h3>Demystify XSS</h3>
	<%
		String path = "";
		String context=(String) request.getAttribute("context");
		String patched = (String) request.getAttribute("patched");
		
		if ("true".equals(patched))
			path = "patched";
		else if ("false".equals(patched))
			path = "unpatched";
	%>
	<form
		action="<%=application.getContextPath()%>/restricted/<%= path%>/xss"
		method="post">
		Input - <input type="text" name="name"> <input type="submit">
		<input type="hidden" name="context" value="<%= context%>">
	</form>
</body>
</html>
