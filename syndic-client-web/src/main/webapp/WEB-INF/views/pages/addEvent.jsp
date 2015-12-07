<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}

.input:focus {
	width: 350px;
}
</style>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<!--<link rel="stylesheet" href="/resources/demos/style.css">-->
<script>
	$(function() {
		$("#dateEvent").datepicker({
			minDate : 0
		});
	});
</script>

</head>
<body>

	<div class="container">

		<h3>
			<fmt:message key="event.H3" />
		</h3>

		<form:form method="POST" commandName="eventCommand"
			action="addevent.ldz">
			<form:errors path="*" cssClass="errorblock" element="div" />
			<div class="form-group row">
				<div class="col-xs-6">
					<spring:message code="event.Name" var="eventName" />
					<form:input type="text" class="form-control" path="eventName"
						id="eventName" placeholder="${eventName}" />
					<form:errors path="eventName" cssClass="error" />
				</div>
			</div>

			<div class="form-group row">
				<div class="col-xs-6">
					<spring:message code="event.Type" var="typeEvent" />
					<form:input type="text" class="form-control" path="typeEvent"
						id="typeEvent" placeholder="${typeEvent}" />
					<form:errors path="typeEvent" cssClass="error" />
				</div>
			</div>

			<div class="form-group row">
				<div class="col-xs-6">
					<spring:message code="event.Date" var="dateEvent" />
					<form:input type="text" class="form-control" path="dateEvent"
						id="dateEvent" placeholder="${dateEvent}" />
					<form:errors path="dateEvent" cssClass="error" />
				</div>
			</div>

			<div class="form-group row">
				<div class="col-xs-8">
					<spring:message code="event.Descr" var="descrEvent" />
					<form:input type="text" class="form-control" path="descEvent"
						id="descEvent" placeholder="${descrEvent}" />
					<form:errors path="descEvent" cssClass="error" />
				</div>
			</div>

			<div class="form-group row">
				<div class="col-xs-12">
					<button type="submit" class="btn btn-default"><spring:message code="button.submit"/></button>
				</div>
			</div>
		</form:form>

	</div>

</body>
</html>