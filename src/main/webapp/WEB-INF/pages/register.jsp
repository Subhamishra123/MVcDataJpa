<%@ page language="java" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<center>
<form:form modelAttribute="employee">
<table border="1" bgcolor="cyan">
<tr><td>Employee Name::</td><td> <form:input path="ename"/></td></tr>
<tr><td>Employee Job::</td><td> <form:input path="job"/></td></tr>
<tr><td>Employee Salary::</td> <td><form:input path="salary"/></td></tr>
<tr><td>Employee Deptno::</td><td> <form:input path="deptno"/></td></tr>
<tr><td><input type="submit" value="register"/></td><td>
<button type="reset">Reset</button></td></tr>

</table>
</form:form>
</center>
</body>
</html>