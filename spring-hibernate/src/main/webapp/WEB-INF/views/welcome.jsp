<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Welcome page</title>
	</head>
	<body>
		<h1>Welcome to my CrUD application!</h1>
		<p>
			<a href=" <spring:url value="/users" />">Start exploring</a>
		</p>
	</body>
</html>