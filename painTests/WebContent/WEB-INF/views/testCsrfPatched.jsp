<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>Test CSRF</title>
<script src="<%= application.getContextPath() %>/JavaScriptServlet"></script>
</head>
<body>
		<h3> Demystify CSRF</h3>
		The form contains a hidden variable of non-deterministic value to thwart CSRF attacks.<br><br>
		<form action="<%= application.getContextPath() %>/restricted/patched/csrf" method="get">
				Email - <input type="text" name="email" > <input type="submit" value="update email">
		<input type="hidden" name="antiCSRFToken" value="<%= session.getCreationTime()  %>">
		</form>
		
</body>
</html>
