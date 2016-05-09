<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-7">
<title>Insert title here</title>
<script src="JavaScriptServlet"></script>
</head>
<% response.setContentType("text/javascript"); %>
<body>
	Content type sniffing<br>
<img  src="http://localhost:8080/painTest/images/testXSS.jpeg">
</body>
</html>