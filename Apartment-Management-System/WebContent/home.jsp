<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
.btn{
		width: 100%;
		background: none;
		border: 2px solid ;
		color: rgb(255,242,0);
		padding: 5px;
		font-size: 18px;
		cursor: pointer;
		margin: 12px 0;
	}
	.header{
		height: 100px;
		width: 100%;
		background: url("file:///C:/Users/sonu/Desktop/AJP-working/Apartment-Management-System/WebContent/META-INF/header-background.jpg");
		background-position: center;
		display: flex;
		flex-direction: row;
		align-items: center;
		text-align:center;
		color: white;
	}
	.navbar{
		display: flex;
		flex-direction: row;
		background: rgb(128,64,64);
		align-content: center;
		align-items: center;
		
	}
	.navbtn{
		display: flex;
		align-items: center;
		margin-left: 70px;
		margin-right: 70px;
	}

</style>
</head>
<body>
<div class="header">

<div style="flex: 2" class="btn">Home</div>
<div style="flex: 8; display: flex; flex-direction: column;">
	<div style="font-size: 24px; font-weight: bold;"><h3>Apartment Management System</h3></div>
	<div style="font-size: 16px; font-weight: bold;
				font-style: italic;">"Everything you've been dreaming of is here"</div>
</div>
<div style="flex: 2" class="btn">logout</div>

</div>

<div class="navbar">

<div class="navbtn"><a href=""><button class="btn" >Pay Electricity</button></a></div>
<div class="navbtn"><a href=""><button class="btn" >Book Cab</button></a></div>
<div class="navbtn"><a href=""><button class="btn" >Book FunctionHall</button></a></div>
<div class="navbtn"><a href=""><button class="btn" >Book Ambulance</button></a></div>
<div class="navbtn"><a href=""><button class="btn" >Report Problem</button></a></div>

</div>



<div style="height:1.5cm;text-align: center;"><h2>Apartment Management System</h2></div>
<div style="display: flex;flex-direction: column; height:10cm;justify-content:space-around; ;width: 50%;align-items: center;">






<a href="">Back</a>
</div>
</body>
</html>