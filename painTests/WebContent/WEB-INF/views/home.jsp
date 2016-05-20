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
<a href="/painTest/restricted/fraudWebsite">Fraud Web Site</a><br>
<a href="/painTest/restricted/testCsrf">CSRF</a><br>
<a href="/painTest/restricted/testCookieStealing">Cookie Stealing</a><br>
<a href="/painTest/restricted/testClickJacking">Click Jacking</a><br>
<a href="/painTest/restricted/admin">Role Based Authorisation</a><br>
<a href="/painTest/test">Test HSTS</a><br>
<a href="/painTest/restricted/testPhishingDirect">Phishing Direct</a><br>
<a href="/painTest/restricted/testPhishingIndirect">Phishing Indirect</a><br>
</body>
</html>
