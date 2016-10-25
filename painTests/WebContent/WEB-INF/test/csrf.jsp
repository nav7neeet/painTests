<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>Test CSRF</title>
<script src="<%= application.getContextPath() %>/JavaScriptServlet"></script>
</head>
<body>
		<h3> Demystify CSRF</h3>
		<%	
			String path="";
			
			String patched= (String)request.getAttribute("patched"); 
			String method=(String)request.getAttribute("method");
			
			if("true".equals(patched))
				path="patched";
			else if("false".equals(patched))
				path="unpatched";
		%>
		
		<form action="<%= application.getContextPath() %>/restricted/<%= path %>/csrf" method="<%= method %>">
				Email - <input type="text" name="email" > <input type="submit" value="update email">
		</form>
		
</body>
</html>
