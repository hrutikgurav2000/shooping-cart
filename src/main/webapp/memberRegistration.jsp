
<%@page import="cn.techtutorial.servlet.Register"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="includes/head.jsp"%>
	<div class="mx-auto font-weight-bold" style="width: 200px;">
		<h4>Sign Up Form</h4>
	</div>
	<form action="Register" method="post">


		<div class="card w-50 mx-auto my-5">



			<table>
				<tr>
					<td>User Name:</td>
					<td><input type="text" name="uname" class="form-control"
						placeholder="Enter you name" required></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password"
						class="form-control" placeholder="Enter you password" required></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="text" name="email" class="form-control"
						placeholder="Enter you email" required></td>
				</tr>
				<tr>
					<td>phone:</td>
					<td><input type="text" name="phone" class="form-control"
						placeholder="Enter you email phone number" required></td>
				</tr>
				<tr>
					<td></td>

				</tr>
			</table>
			<div class="text-center">
				<input type="submit" value="Register" class="btn btn-primary mr-3">
				<input type="reset" value="Clear Form" class="btn btn-primary mr-3">
				<button type="button" class="btn btn-primary mr-3" onclick="window.location.href='login.jsp'">Login Page</button>
			</div>
		</div>


	</form>
</body>
</html>