<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ApnaComplex.com</title>
<style>
.header { 
	padding: 10px;
	text-align: center;
	color: black;
	}
.navbar {
	overflow:hidden;
	background-color:aqua;
	}
.navbar a { float: left;
	 display: block;
	 color:white;
	 text-align: center;
	 padding: 14px 20px;
	 justify-content: space-between;
	 }
</style>
</head>
<body>
<table>
	<tr>
	<td><div align="left"><img alt="MyComplex" src="" height="100px" weidth="100px"></div></td>
	<td><div class="header"><h3>Apartment Management System</h3></div></td>
</table>
<div class="navbar">
	<h1>Apartment Management System</h1>
</div>
<tr style="height: 100% ;width: 100%">
<td style="background-color: red ;"></td>
<td><div style="background: yellow;"></div>
<div style="background-color: green;"><button type="button" class="btn btn-dark onclick=">AdminLogin</button><button>ApartmentDtails</button></div>
<div><a href="prep_log_form.htm"><button>Tenantlogin</button></div>
<div><a href="home.htm"><button>Visitorlogin</button></a></div>
</td>
</tr>
</body>
</html>