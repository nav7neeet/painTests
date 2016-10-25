<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/commonPage.jsp" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<a href="<%= application.getContextPath() %>/restricted/test/sql?patched=false" class="test">SQL Injection - unpatched</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/sql?patched=true">SQL Injection - patched</a><br><br>

<a href="<%= application.getContextPath() %>/restricted/test/xss?patched=false&context=body">XSS - unpatched (context: Body)</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/xss?patched=false&context=attribute">XSS - unpatched (context: Attribute)</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/xss?patched=false&context=hidden">XSS - unpatched (context: Hidden variable)</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/xss?patched=false&context=js">XSS - unpatched (context: Java Script)</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/xss?patched=false&context=css">XSS - unpatched (context: CSS) In progress</a><br><br>

<a href="<%= application.getContextPath() %>/restricted/test/xss?patched=true&context=body">XSS - patched (context: Body)</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/xss?patched=true&context=attribute">XSS - patched (context: Attribute)</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/xss?patched=true&context=hidden">XSS - patched (context: Hidden variable)</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/xss?patched=true&context=js">XSS - patched (context: Java Script)</a><br><br>

<a href="<%= application.getContextPath() %>/restricted/test/XXssProtection?patched=false">X-XSS-protection Header absent</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/XXssProtection?patched=true">X-XSS-protection Header present</a><br><br>

<a href="<%= application.getContextPath() %>/restricted/test/fraudWebsite">Fraud Web Site</a><br><br>
<a href="<%= application.getContextPath() %>/restricted/test/csrf?patched=false&method=get">CSRF GET - unpatched</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/csrf?patched=false&method=post">CSRF POST - unpatched</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/csrf?patched=true&method=get">CSRF(GET & POST) - patched</a><br><br>
<%-- <a href="<%= application.getContextPath() %>/restricted/testCookieStealing">Cookie Stealing</a><br><br> --%>

<a href="<%= application.getContextPath() %>/restricted/test/clickJacking?patched=false">Click Jacking - unpatched</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/clickJacking?patched=true">Click Jacking - patched </a><br><br>

<a href="<%= application.getContextPath() %>/restricted/test/roleBasedAuthorization">Role Based Authorization</a><br><br>
<a href="<%= application.getContextPath() %>/test">Test HSTS Header - In progress</a><br><br>

<a href="<%= application.getContextPath() %>/restricted/test/csp?patched=false">Test CSP - unpatched</a><br>
<a href="<%= application.getContextPath() %>/restricted/test/csp?patched=true">Test CSP - patched</a><br><br>


<a href="<%= application.getContextPath() %>/restricted/testPhishingDirect">Phishing Direct</a><br>
<a href="<%= application.getContextPath() %>/restricted/testPhishingIndirect">Phishing Indirect - In progress</a><br>

</body>
</html>
