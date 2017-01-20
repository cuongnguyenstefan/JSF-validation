<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Customer Entry Form</h1>
	<table>
		<tr>
			<td><spring:message code="form.username.label" /></td>
			<td>${entry.username}</td>
		</tr>
		<tr>
			<td><spring:message code="form.address.label" /></td>
			<td>${entry.address}</td>
		</tr>
		<tr>
			<td><spring:message code="form.birthday.label" /></td>
			<td>${entry.birthday}</td>
		</tr>
		<tr>
			<td><spring:message code="form.password.label" /></td>
			<td>${entry.password}</td>
		</tr>
		<tr>
			<td><spring:message code="form.sex.label" /></td>
			<td>${entry.sex}</td>
		</tr>
	</table>
</body>
</html>
