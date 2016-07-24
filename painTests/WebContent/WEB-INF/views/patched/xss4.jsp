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
	var c="<%= name %>";
</script>
<body>
	<% response.setHeader("X-XSS-Protection", "0"); %>
	<h4>User input inserted into JS! after output encoding...</h4>
	Check the page source to see the encoding..<br> 
</body>
</html>
