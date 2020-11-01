<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ApnaComplex.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style type="text/css">
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
<div> <button type="button" onclick="prep_log_form.htm">Tenantlogin</button></div>
<div><button>Visitorlogin</button></div>
</td>
</tr>
</body>
</html>