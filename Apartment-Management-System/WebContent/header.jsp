<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
	*{
		padding: 0px;
		margin: 0px;
		
	}
	.main{
		background-color: blue;
		height: 100px;
		display: flex;
		text-align: center;
		align-items: center;
	}
	.sub{
		color: white;
		font-family: sans-serif;
		font-size: 24px;
	}
</style>
</head>
<body>
	<div class="main">
		<div style="flex: 2;" class="sub"> <a href="home.jsp" style="color: white; border: none;"/>Home</a></div>
		<div style="flex: 8" class="sub">Appartment Management system</div>
		<div style="flex: 2" class="sub"><a href="logout.jsp" style="color: white; border: none;"/>Logout</div>
	</div>
</body>
</html>