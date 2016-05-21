<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/commonPage.jsp" %>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="<%= application.getContextPath() %>/testhsts.js"></script>
</head>
<body>
<a href="<%= application.getContextPath() %>/restricted/testSql">SQL Injection</a><br>
<a href="<%= application.getContextPath() %>/restricted/testXss">XSS</a><br>
<a href="<%= application.getContextPath() %>/restricted/fraudWebsite">Fraud Web Site</a><br>
<a href="<%= application.getContextPath() %>/restricted/testCsrf">CSRF</a><br>
<a href="<%= application.getContextPath() %>/restricted/csrf/unpatched">CSRF - Unpatched</a><br>
<a href="<%= application.getContextPath() %>/restricted/testCookieStealing">Cookie Stealing</a><br>
<a href="<%= application.getContextPath() %>/restricted/testClickJacking">Click Jacking</a><br>
<a href="<%= application.getContextPath() %>/restricted/admin">Role Based Authorisation</a><br>
<a href="<%= application.getContextPath() %>/test">Test HSTS</a><br>
<a href="<%= application.getContextPath() %>/restricted/testPhishingDirect">Phishing Direct</a><br>
<a href="<%= application.getContextPath() %>/restricted/testPhishingIndirect">Phishing Indirect</a><br>

</body>
</html>
