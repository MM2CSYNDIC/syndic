<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="lyes kherbiche">

<STYLE>
#bou {
	background-color: #35BF03;
	border-color: #35BF03;
}
</STYLE>

<title>Sign-in</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
            integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" 
            crossorigin="anonymous">
<link href="http://getbootstrap.com/examples/signin/signin.css" rel="stylesheet">

</head>

<body>
	
	<div class="container">
	    <c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
	    <form class="form-signin" name='loginForm' action="<c:url value='${request.contextPath}/j_spring_security_check.ldz' />" method='POST'>
		<!--form class="form-signin" role="form" action="j_spring_security_check" method="post"-->
		    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<h2 class="form-signin-heading">Please sign in</h2>
			<input type="text" class="form-control" placeholder="Login"
				required autofocus name="j_username"> <br> <input
				type="password" class="form-control" placeholder="Password" required
				name="j_password"> <label class="checkbox"> <input
				type="checkbox" value="remember-me"> Remember me
			</label>
			<button id="bou" class="btn btn-lg btn-primary btn-block"
				type="submit">
				<i class="glyphicon glyphicon-user"></i>Sign in
			</button>
		</form>
	</div>
	<!-- /container -->

</body>
</html>
    