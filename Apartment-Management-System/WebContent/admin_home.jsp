<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin home</title>

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
	.content{
		display: flex;
		flex-direction: row;
	}
	.img{
		flex: 1;
		width: 100%;
		height: 100%;
		
	}
	.info{
		flex: 1;
	}

</style>

</head>
<body>

<div class="header">

	<div style="flex: 2; font-size: 16px;" class="btn">Home</div>
		<div style="flex: 8; display: flex; flex-direction: column;">
		<div style="font-size: 24px; font-weight: bold;"><h3>Apartment Management System</h3></div>
		<div style="font-size: 16px; font-weight: bold;
				font-style: italic;">"Everything you've been dreaming of is here"</div>
	</div>
	<div style="flex: 2; font-size: 16px;" class="btn">Logout</div>

</div>

<div class="navbar">

	<div class="navbtn"><a href=""><button class="btn" >Tenant list</button></a></div>
	<div class="navbtn"><a href=""><button class="btn" >Book Cab</button></a></div>
	<div class="navbtn"><a href=""><button class="btn" >Book FunctionHall</button></a></div>
	<div class="navbtn"><a href=""><button class="btn" >Book Ambulance</button></a></div>
	<div class="navbtn"><a href=""><button class="btn" >Report Problem</button></a></div>

</div>

<div class="content">
	<div>
		<img class="img" alt="" src="file:///C:/Users/sonu/Desktop/AJP-working/Apartment-Management-System/WebContent/META-INF/housing1.jpg">
	</div>
	
	<div class="info">
	
	</div>
</div>

<div class="content">
	<div class="img">
		<img alt="" src="file:///C:/Users/sonu/Desktop/AJP-working/Apartment-Management-System/WebContent/META-INF/housing2.jpg">
	</div>
	
	<div class="info">
	
	</div>
</div>

<div class="content">
	<div class="img">
		<img alt="" src="file:///C:/Users/sonu/Desktop/AJP-working/Apartment-Management-System/WebContent/META-INF/housing3.jpg">
	</div>
	
	<div class="info">
	
	</div>
</div>

<div class="content">
	<div class="img">
		<img alt="" src="file:///C:/Users/sonu/Desktop/AJP-working/Apartment-Management-System/WebContent/META-INF/housing4.jpg">
	</div>
	
	<div class="info">
	
	</div>
</div>

<div class="content">
	<div class="img">
		<img alt="" src="file:///C:/Users/sonu/Desktop/AJP-working/Apartment-Management-System/WebContent/META-INF/housing5.jpg">
	</div>
	
	<div class="info">
	
	</div>
</div>

<div class="content">
	<div class="img">
		<img alt="" src="file:///C:/Users/sonu/Desktop/AJP-working/Apartment-Management-System/WebContent/META-INF/housing6.jpg">
	</div>
	
	<div class="info">
	
	</div>
</div>




	


</body>
</html>