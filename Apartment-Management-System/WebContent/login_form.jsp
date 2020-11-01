<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>
	<spr:form action="login.htm" method="post" commandName="user">
<table align="center">
<tr>
	<td>User Name:</td>
	<td><spr:input path="tenantName"/>
	<font color="red"><spr:errors path="tenantName"></spr:errors></font>
	</td>
	</tr>
	<tr>
	<td>Password : </td>
	<td><spr:password path="tenantPass"/>
	<font color="red"><spr:errors path="tenantPass"></spr:errors></font>
	</td>
	</tr>
	<tr>
	<td><a href="prep_reg_form.htm">Signup</a></td>
	<td><input type="submit" value="Login"></td>
	</tr>
	<tr>
	<td><a href="index.htm">Back</a></td>
	</tr>
</table>
</spr:form>
	

</body>
</html>