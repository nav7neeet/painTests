<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>Test CSRF</title>
<script src="<%= application.getContextPath() %>/JavaScriptServlet"></script>
</head>
<body>
		<h3> Demystify CSRF</h3>
		<form action="<%= application.getContextPath() %>/restricted/csrf" method="get">
				Email - <input type="text" name="email" > <input type="submit" value="update email">
		<input type="hidden" name="antiCSRFToken" value="<%= session.getCreationTime()  %>">
		</form>
		
</body>
</html>
