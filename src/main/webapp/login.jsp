<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.*"%>
<%@page import="cn.techtutorial.model.*"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	
	response.sendRedirect("index.jsp");
}

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart Login</title>
<%@include file="includes/head.jsp"%>


</head>
<body>
	<%@include file="includes/navbar.jsp"%>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text=center"></div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div class="form-group">
						<label>Email Address</label> <input type="email"
							class="form-control" name="login-email"
							placeholder="Enter you email" required>
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" name="login-password" placeholder="********"
							required>
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-primary mr-3">Login</button>
					
						<button type="button" class="btn btn-primary ml-3" onclick="window.location.href='memberRegistration.jsp'">SignUp</button>
					</div>

				</form>

			</div>
		</div>
	</div>

	<%@include file="includes/footer.jsp"%>

</body>
</html>