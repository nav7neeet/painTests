<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
<%
	String name = (String) request.getAttribute("userInput");
%>

</head>
<style>
h4
{
	color:<%= name %>;
}
</style>
<body>
	<h4>Using user input in CSS! Xssed</h4>
</body>
</html>
