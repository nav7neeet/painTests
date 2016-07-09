<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>Test XSS</title>
</head>
<body>
<h3>Demystify XSS</h3>
		<form action="<%= application.getContextPath() %>/restricted/patched/xss" method="post">
				Input - <input type="text" name="name" > <input type="submit">
				<input type="hidden" name="hiddenVar" value="attribute">
		</form>
</body>
</html>
