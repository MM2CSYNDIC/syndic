
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%--
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
		    <a href='./accueil.jsp'>Accueil </a>
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
    --%>

<!DOCTYPE HTML>
<!--
Identity by HTML5 UP
html5up.net | @n33co
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<html>
<head>
	<title>Identity by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lte IE 8]><script src="/syndic/resources/assets/js/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="/syndic/resources/assets/css/main.css" />
	<!--[if lte IE 9]><link rel="stylesheet" href="/syndic/resources/assets/css/ie9.css" /><![endif]-->
	<!--[if lte IE 8]><link rel="stylesheet" href="/syndic/resources/assets/css/ie8.css" /><![endif]-->
	<noscript><link rel="stylesheet" href="/syndic/resources/assets/css/noscript.css" /></noscript>
</head>
<body class="is-loading">

<!-- Wrapper -->
<div id="wrapper">

	<!-- Main -->
	<section id="main">
		<header>
			<span class="avatar"><img src="/syndic/resources/images/avatar.jpg" alt="" /></span>
			<h1>Syndic APP</h1>
			<p>Se connecter</p>
		</header>

		<hr />
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form method="post" action="<c:url value='${request.contextPath}/j_spring_security_check.ldz' />" method='POST'>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<div class="field">
				<input type="text" placeholder="Login" required autofocus name="j_username">

			</div>
			<div class="field">
				<input type="password" class="form-control" placeholder="Password" required name="j_password">
			</div>
			<ul class="actions">
				<li><button id="bou" class="button" type="submit">
						<i class="glyphicon glyphicon-user"></i>Sign in
					</button>
				</li>
			</ul>
		</form>
		<hr />

		<footer>
			<ul class="icons">
				<li><a href="#" class="fa-twitter">Twitter</a></li>
				<li><a href="#" class="fa-instagram">Instagram</a></li>
				<li><a href="#" class="fa-facebook">Facebook</a></li>
			</ul>
		</footer>
	</section>

	<!-- Footer -->
	<footer id="footer">
		<ul class="copyright">
			<li>&copy; Syndic App</li>
			<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
		</ul>
	</footer>

</div>

<!-- Scripts -->
<!--[if lte IE 8]><script src="assets/js/respond.min.js"></script><![endif]-->
<script>
	if ('addEventListener' in window) {
		window.addEventListener('load', function() { document.body.className = document.body.className.replace(/\bis-loading\b/, ''); });
		document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
	}
</script>

</body>
</html>
