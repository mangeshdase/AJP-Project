<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
</head>
<body>
<spr:form action="reg.htm" method="post" commandName="tenant">
<table>
	<div><tr>
		<td>Tenant Registration Form</td>
		</tr></div>
		<tr>
			<td>Tenant Name:</td>
			<td><spr:input path="tenantName"/>
	<font color="red"><spr:errors path="tenantName"></spr:errors></font>
	</td>
	</tr>
	<tr>
		<td>Tenant Password:</td>
		<td><spr:input path="tenantPass"/>
 	<font color="red"><spr:errors path="tenantPass"></spr:errors></font>
	</td>
	</tr>
	<tr>
	<td>Tenant EmailID:</td>
	<td><spr:input path="tenantEmail"/>
 	<font color="red"><spr:errors path="tenantEmail"></spr:errors></font>
	</td>
	</tr>
	<tr>
	<td>Tenant Mobile No.:</td>
	<td><spr:input path="tenantMobile"/>
	<font color="red"><spr:errors path="tenantMobile"></spr:errors></font> 
	</td>
	</tr>
	<tr>
	<td>Tenant Block :</td>
	<td><spr:input path="tenantBlock"/>
	<font color="red"><spr:errors path="tenantBlock"></spr:errors></font>
	</td>
	</tr>
	<tr>
	<td>Tenant FlatNo.:</td>
	<td><spr:input path="tenantFlatNo" placeholder="Flat number"/>
	<font color="red"><spr:errors path="tenantFlatNo"></spr:errors></font> 
	</td>
	</tr>
	<tr>
	<td>Tenant FlatType:</td>
	<td><spr:input type="dropdown" path="tenantName"/>
	<font color="red"><spr:errors path="tenantName"></spr:errors></font>
	</td>
	
	<tr>
	<td></td>
	<td><input type="submit" value="SignUp"/> 
	</table>
</spr:form>

</body>
</html>