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
		<h1>Add a User</h1>
		
		<c:url var="addAction" value="/user/add" ></c:url>
		
		<form:form action="${addAction}" commandName="user">
			<table>
				<c:if test="${!empty user.name}">
					<tr>
						<td>
							<form:label path="id">
								<spring:message text="ID" />
							</form:label>
						</td>
						<td>
							<form:input path="id" readonly="true" size="8" disabled="true" />
							<form:hidden path="id" />
						</td>
					</tr>
				</c:if>
				<tr>
					<td>
						<form:label path="name">
							<spring:message text="Name" />
						</form:label>
					</td>
					<td>
						<form:input path="name" />
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="age">
							<spring:message text="Age" />
						</form:label>
					</td>
					<td>
						<form:input path="age" />
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="isAdmin">
							<spring:message text="Is Admin" />
						</form:label>
					</td>
					<td>
						<form:radiobutton path="isAdmin" value="1" />Admin
						<form:radiobutton path="isAdmin" value="0" />User
					</td>
				</tr>
				<tr>
					<td>
						<form:label path="createdDate">
							<spring:message text="Creation Date" />
						</form:label>
					</td>
					<td>
						<form:input path="createdDate" />
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<c:if test="${!empty user.name}">
							<input type="submit" value="<spring:message text="Edit User"/>" />
						</c:if>
						<c:if test="${empty user.name}">
							<input type="submit" value="<spring:message text="Add User"/>" />
						</c:if>
					</td>
				</tr>
			</table>
		</form:form>
		
		<br>
		
		<c:if test="${!empty listUsers}">
			<h3>User list</h3>
		</c:if>
		
		<div id="pagination">
		
			<!-- Previous button -->
			<c:url value="/users" var="prev">
				<c:param name="page" value="${page-1}" />
			</c:url>
			<c:if test="${page > 1}">
				<a href="<c:out value="${prev}" />" class="pn prev">Prev</a>
			</c:if>
			
			<c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
				<c:choose>
					<c:when test="${page == i.index}">
						<span>${i.index}</span>
					</c:when>
					<c:otherwise>
						<c:url value="/users" var="url">
							<c:param name="page" value="${i.index}" />
						</c:url>
						<a href="<c:out value="${url}" />">${i.index}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			
			<!-- Next button -->
			<c:url value="/users" var="next">
				<c:param name="page" value="${page+1}" />
			</c:url>
			<c:if test="${page + 1 <= maxPages}">
				<a href="<c:out value="${next}" />" class="pn next">Next</a>
			</c:if>
			
		</div>
		
		
		
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

		<c:if test="${!empty listUsers}">
			<c:url var="findUserUrl" value="/search?name=${user.name}" />
			<form:form method="post" modelAttribute="findUser"
				action="${findUserUrl}">
				<form:label path="name">Find users by name:</form:label>
				<p />
				<form:input path="name" type="text" />
				<!-- bind to user.name-->
				<input value="Find" type="submit" class="btn btn-primary" />
			</form:form>
		</c:if>


</body>
</html>