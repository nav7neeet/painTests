<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp" %>
<html>
<head>
<title>Test SQL Injection</title>
</head>
<body>
		<h3>Demystify X-XSS protection header</h3>
		<%	
			String path="";
			String patched= (String)request.getAttribute("patched"); 
			if("true".equals(patched))
				path="patched";
			else if("false".equals(patched))
				path="unpatched";
		%>
		
		<form action="<%= application.getContextPath() %>/restricted/<%=path%>/XXSSProtection" method="post">
				Input - <input type="text" name="name"> <input
						type="submit"
				>
		</form>
</body>
</html>
