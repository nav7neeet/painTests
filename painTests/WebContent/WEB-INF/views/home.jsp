<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/commonPage.jsp" %>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="/painTest/testhsts.js"></script>
</head>
<body>
<a href="/painTest/restricted/testSql">SQL Injection</a><br>
<a href="/painTest/restricted/testXss">XSS</a><br>
<a href="/painTest/restricted/fraudWebsite">Fraud web site</a><br>
<a href="/painTest/restricted/testCsrf">CSRF</a><br>
<a href="/painTest/restricted/testCookieStealing">Cookie Stealing</a><br>
<a href="/painTest/restricted/testClickJacking">Click Jacking</a><br>
<a href="/painTest/restricted/admin">Role based authorisation</a><br>
<a href="http://127.0.0.1:8080/painTest/test">Test HSTS</a><br>
</body>
</html>
