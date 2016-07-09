<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
<%
	String name = (String) request.getAttribute("userInput");
%>

</head>
<script type="text/javascript">
	var a=10;
	var b=20;
	var c=<%= name %>;
</script>
<body>
	<h4>Using user input in JS! Xssed</h4>
</body>
</html>
