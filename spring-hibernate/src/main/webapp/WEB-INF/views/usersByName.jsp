<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
		<title>Users list</title>
		
		<style type="text/css">
			.tg {
				border-collapse: collapse;
				border-spacing:0;
				border-color: #ccc;
			}
			.tg td {
				font-family: Arial, sans-serif;
				font-size: 14px;
				padding: 10px 5px;
				border-style: solid;
				border-width: 1px;
				overflow: hidden;
				word-break: normal;
				border-color: #ccc;
				color: #333;
				background-color: #fff;
			}
			.tg th {
				font-family: Arial, sans-serif;
				font-size: 14px;
				font-weight: normal;
				padding: 10px 5px;
				border-style: solid;
				border-width: 1px;
				overflow: hidden;
				word-break: normal;
				border-color: #ccc;
				color: #333;
				background-color: #f0f0f0;
			}
			.tg .tg-4eph {
				background-color: #f9f9f9;
			}
		</style>
	</head>
	<body>
		<h1>Searching result: name = ${name}</h1>
		
		<h3></h3>
		
		<!-- List -->
		<c:if test="${!empty listUsers}">
			<table class="tg">
				<tr>
					<th width="80">ID</th>
					<th width="100">Name</th>
					<th width="60">Age</th>
					<th width="100">Role</th>
					<th width="120">Creation Date</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${listUsers}" var="user">
					<tr>
						<td>${user.id}</td>
						<td>${user.name}</td>
						<td>${user.age}</td>
						<td>
							<c:if test="${user.isAdmin == true}">
								Admin
							</c:if>
							<c:if test="${user.isAdmin == false}">
								User
							</c:if>
						</td>
						<td><fmt:formatDate value="${user.createdDate}" pattern="dd.MM.yyyy" /></td>
						<td><a href="<c:url value='/edit/${user.id}' />">Edit</a></td>
						<td><a href="<c:url value='/remove/${user.id}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${empty listUsers}">
			<h3>No results found</h3>
		</c:if>
		
		<br><a href="<c:url value='/users/' />">Back to users list</a>
	</body>
</html>