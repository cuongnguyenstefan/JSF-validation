<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<a href="?locale=en">English</a> |
	<a href="?locale=vn">Vietnamese</a>
	<h1>Customer Entry Form</h1>
	<form:form modelAttribute="entry" method="post">
		<table>
			<tr>
				<td><spring:message code="form.username.label" /></td>
				<td><form:input path="username" /></td>
				<td><form:errors path="username" cssStyle="color: red"/></td>
			</tr>
			<tr>
				<td><spring:message code="form.address.label" /></td>
				<td><form:input path="address" /></td>
				<td><form:errors path="address" cssStyle="color: red" /></td>
			</tr>
			<tr>
				<td><spring:message code="form.birthday.label" /></td>
				<td><form:input path="birthday" /></td>
				<td><form:errors path="birthday" cssStyle="color: red" /></td>
			</tr>
			<tr>
				<td><spring:message code="form.password.label" /></td>
				<td><form:input path="password" type="password" /></td>
				<td><form:errors path="password" cssStyle="color: red" /></td>
			</tr>
			<tr>
				<td><spring:message code="form.sex.label" /></td>
				<td>
					<form:radiobutton path="sex" value="male" /> <spring:message code="form.sex.male.label"/>
					<form:radiobutton path="sex" value="female" /> <spring:message code="form.sex.female.label"/>
				</td>
				<td><form:errors path="sex" cssStyle="color: red" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit" class="btn btn-primary"/></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
