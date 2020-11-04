<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Form</title>
</head>
<body>
	<spr:form action="admin_login.htm" method="post" commandName="admin">
<table align="center">
<tr>
	<td>User Name:</td>
	<td><spr:input path="adminName"/>
	<font color="red"><spr:errors path="adminName"></spr:errors></font>
	</td>
	</tr>
	<tr>
	<td>Password : </td>
	<td><spr:password path="adminPass"/>
	<font color="red"><spr:errors path="adminPass"></spr:errors></font>
	</td>
	</tr>
	<tr>
	<td><a href="index.jsp">Back</a></td>
	<td><input type="submit" value="Login"></td>
	</tr>
</table>
</spr:form>
	

</body>
</html>