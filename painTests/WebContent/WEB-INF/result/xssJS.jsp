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
	<% 
			String patched=(String)request.getAttribute("patched");
			if("true".equals(patched))
				out.print("<h4>User input inserted into the JS after output encoding Lolz..</h4> Check the page source to see the encoding..<br><br>");
			else
				out.print("<h4>User input inserted into the JS without any output encoding Lolz..</h4>");
		%>
</body>
</html>
