<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	body{
		margin: 0;
		width: 100%;
	    min-height: 100vh;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	form{
	    width: 300px;
    	height: 200px;
	}
	input{
	    width: 100%;
    	height: 25px;
	}
	button{
		width: 100px;
		height: 30px;
		cursor: pointer;
	}
</style>
<title>Login Page</title>
</head>
<body>
	<div class="loginDiv">
		<h2>Login User</h2><br>
		<form action="loginUserData" method="post">
			<input type="text" name="email" placeholder="Enter your email"><br><br>
			<input type="password" name="password" placeholder="Enter your password"><br><br>
			<button type="submit">Login</button>
		</form>
	</div>
</body>
</html>