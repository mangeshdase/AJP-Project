<%@page import="com.cdac.dto.Tenant"%>
<%@page import="com.cdac.dto.Admin"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>tenant list</title>
</head>
<body>
	
	<table align="center" >
		<% 
		List<Tenant> elist = (List<Tenant>)request.getAttribute("tenantList");
		for(Tenant exp : elist){
		%>
		<tr>
			
			
			<td>
				<%=exp.getTenantPass()%>
			</td>
			<td><%=exp.getTenantName() %></td>
			<td>
				<%=exp.getTenantBlock()%>
			</td>
			
			<td>
				<%=exp.getTenantMobile()%>
			</td>
			<td>
				<%=exp.getTenantId()%>
			</td>
			
			
			
			<td>
				<a href="tenant_update_form.htm?tenantId=<%=exp.getTenantId()%>">Update</a>
			</td>
		</tr>
		<% } %>
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				
			</td>
		</tr>
	</table>
</body>
</html>