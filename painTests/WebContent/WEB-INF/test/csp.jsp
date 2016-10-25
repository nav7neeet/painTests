<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>Test CSP</title>
</head>
<body>
	<h3>Demystify CSP</h3>
	<%
		String path = "";
		String patched = (String) request.getAttribute("patched");
		if ("true".equals(patched))
			path = "patched";
		else if ("false".equals(patched))
			path = "unpatched";
	%>
	<form
		action="<%=application.getContextPath()%>/restricted/<%=path%>/csp"
		method="post">
		Input - <input type="text" name="name"> <input type="submit">
		<input type="hidden" name="hiddenVar" value="body">
	</form>
</body>
</html>
