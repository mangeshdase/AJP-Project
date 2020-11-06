<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>

<style type="text/css">
@import "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
body{
		margin: 0;
		padding: 0;
		font-family: sans-serif;
		background: url("file:///C:/Users/sonu/Desktop/CDAC_official/Advance_JAVA/Adv_Project/AJP-Project/Apartment-Management-System/WebContent/META-INF/reg-building-1444053487655-7507bc7e38c1.jpg") no-repeat;
		background-size: cover;	
	}
	.login-box{
		width: 280px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		color: white;
	}
	.login-box h1{
		float: left;
		font-size: 40px;
		border-bottom: 6px solid #4caf50;
		margin-bottom: 50px;
		padding: 13px 0;
	}
	.textbox{
		width: 100%;
		overflow: hidden;
		font-size: 20px;
		padding: 8px 0;
		margin: 8px 0;
		border-bottom: 1px solid #4caf50;
	}
	.textbox i{
		width: 26px;
		float: left;
		text-align: center;
	}
	.textbox input{
		border: none;
		outline: none;
		background: none;
		color: white;
		font-size: 18px;
		width: 80%;
		float: left;
		margin: 0 10px;
	}
	.btn{
		width: 100%;
		background: none;
		border: 2px solid #4caf50;
		color: white;
		padding: 5px;
		font-size: 18px;
		cursor: pointer;
		margin: 12px 0;
	}
	
</style>

</head>
<body>
	<spr:form action="login.htm" method="post" commandName="tenant">
	<div class="login-box">
<table align="center">

<tr><td>
	<h1>Login</h1></td></tr>
<tr>	
	<td>
	<div class="textbox">
	<i class="fa fa-user" aria-hidden="true"></i>
	<spr:input path="tenantName"/>
	<font color="red"><spr:errors path="tenantName"></spr:errors></font>
	</div></td>
	</tr>
	<tr>
	
	<td>
	<div class="textbox">
	<i class="fa fa-lock" aria-hidden="true"></i>
	<spr:password path="tenantPass"/>
	<font color="red"><spr:errors path="tenantPass"></spr:errors></font>
	</div></td>
	</tr>
	<tr>
<<<<<<< Updated upstream
	<td><input class="btn" type="submit" value="Login"></td>
=======
			<td>
				<a href="forgot_password.html" >Forgot Password</a>
			</td>
			<td>
				
			</td>
		</tr>
	<tr>
	<td><a href="prep_reg_form.htm">Signup</a></td>
	<td><input type="submit" value="Login"></td>
>>>>>>> Stashed changes
	</tr>
	<tr>
	<td><a href="index.jsp" style="color: white;">Back</a></td>
	<td><a href="prep_reg_form.htm" style="color: white;">Signup</a></td>
	</tr>
</table>
</div>
</spr:form>

	

</body>
</html>