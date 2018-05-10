<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Register</title>

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/animate.css" />
<link rel="stylesheet" href="css/styleone.css" />
<script src="js/modernizr-2.6.2.min.js"></script>

</head>
<body class="style-2">

	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<ul class="menu">
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">

				<!-- Start Sign In Form -->
				<form action="register" method="post" class="fh5co-form animate-box" data-animate-effect="fadeInLeft">
					<h2>Sign up</h2>
					<div class="form-group">
					</div>
					<div class="form-group">
						<label for="name" class="sr-only">Name</label> 
						<input type="text" class="form-control" id="name" name="username"
							placeholder="会员名/name" autocomplete="off" />
					</div>
					<div class="form-group">
						<label for="password" class="sr-only">Password</label> 
						<input type="password" class="form-control" id="password"
							name="password" placeholder="密码/password" autocomplete="off" />
					</div>
					<div class="form-group">
						<label for="re-password" class="sr-only">Re-type Password</label>
						<input type="password" class="form-control" id="re-password"
							placeholder="重复密码/re-password" autocomplete="off" />
					</div>
					<div class="form-group">
						<label for="email" class="sr-only">Email</label> 
						<input type="email" class="form-control" id="email" name="email"
							placeholder="会员邮箱/email" autocomplete="off" />
					</div>
					<div class="form-group">
						<label for="re-password" class="sr-only">Tel</label> 
						<input type="text" class="form-control" name="telephone"
							placeholder="联系电话/telephone" autocomplete="off" />
					</div>
					
					<div class="form-group">
						<p>
							Already registered? <a href="login.jsp">Login</a>
						</p>
					</div>
					<div class="form-group">
						<input type="submit" value="Register" class="btn btn-primary" />
						<span>&nbsp;&nbsp;${msg}</span>
					</div>
				</form>
				<!-- END Sign In Form -->
			</div>
		</div>
		<div class="row" style="padding-top: 160px; clear: both;">
			<div class="col-md-12 text-center">
				<p>
					<small>Copyright &copy; 2018, All Rights Reserved.<br />出版物经营许可证
						新出发京批字第直0673号 | 京公网安备110101000001号
					</small>
				</p>
			</div>
		</div>
	</div> 

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

</body>
</html>