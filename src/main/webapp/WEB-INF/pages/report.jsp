<%@ page language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h1 style="color: red;text-align: center;">Employees Report</h1>
<c:choose>
<c:when test="${!empty emplist}">
<table border="1" bgcolor="cyan" align="center">
<tr bgcolor="pink">
<th>Empno</th><th>Ename</th><th>Job</th><th>Salary</th><th>Deptno</th><th>Options</th>
</tr>
<c:forEach var="emp" items="${emplist}">
<tr>
<td>${emp.empno}</td>
<td>${emp.ename}</td>
<td>${emp.job}</td>
<td>${emp.salary}</td>
<td>${emp.deptno}</td>
<td><a href="edit_employee?empno=${emp.empno}">Edit</a>&nbsp;&nbsp;
<a href="delete_employee?empno=${emp.empno}" onclick="confirm('You want to delete?');">Delete</a></td>
</tr>

</c:forEach>
</table>

</c:when>
<c:otherwise>
	<h1 style="color: red;text-align: center;">Records Not Found</h1>
</c:otherwise>
</c:choose>
<blink><h1 style="color: green;text-align: center;">${message}</h1></blink>
<br><br>
<h1 style="text-align: center;"><a href="insert_employee">Add Employee</a></h1>
<h1 style="text-align: center;"><a href="./">Home</a></h1>
