<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<style>
	body{
	    display: flex;
    	justify-content: center;
    	align-items: center;
		margin: 0;
		width: 100%;
		min-height: 100vh;
	}
	.parentDiv{
		width: 300px;
		height: 200px;
	}
	input{
		height: 24px;
		width: 100%;
	}
	.form-btns{
		display: flex;
    	justify-content: space-between;
	}
	h3{
	    text-align: center;
    	font-size: larger;
	}
	a{
		text-decoration: none;
		color: black;
		curson: pointer;
	}
	button{
	    width: 100px;
    	height: 30px;
    	cursor: pointer;
	}
</style>
<title>Registration Page</title>
</head>
<body>
	<div class="parentDiv">
		<h3>User Registration Form</h3>
		<div>
			<form action="registerUserData" method="post">
				<input type="text" name="name" placeholder="Enter your name" /><br><br>
				<input type="number" name="mobile" placeholder="Enter mobile number" /><br><br>
				<input type="text" name="email" placeholder="Enter email address" /><br><br>
				<input type="password" name="password" placeholder="Enter your password" /><br><br>
				<div class="form-btns">
					<button type="submit">Register</button>
					<button type="button" name="loginBtn" onclick="loginPage()">Login</button>
				</div>
			</form>
		</div>
	</div>
</body>
<script>
function loginPage(){
	$.ajax({
		  url: "/login",
		  context: document.body
		}).done(function() {
		window.location.href = "/login";
	});
}
</script>
</html>