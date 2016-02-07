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

	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
	<script  src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
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

	<div class="row">
		<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
			<h3><fmt:message key="event.H3" /></h3>
		</div>
	</div>

	<form:form method="POST" modelAttribute="eventCommand" action="addevent.ldz">
		<form:errors path="*" cssClass="errorblock" element="div" />

		<!-- W add list (select) -->
		<div class="form-group row">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<form:select class="form-control" path="typeEvent" id="typeEvent" >
					<option selected><spring:message code="event.Type"/></option>
					<option value="AG"><spring:message code="event.Type.AG"/></option>
					<option value="Intervention"><spring:message code="event.Type.Intervention"/></option>
					<option value="Incident"><spring:message code="event.Type.Incident"/></option>
				</form:select>
				<form:errors path="typeEvent" cssClass="error" />
			</div>
		</div>
		<!-- End W-->

		<div class="form-group row">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<spring:message code="event.Name" var="eventName" />
				<form:input type="text" class="form-control" path="eventName"
							id="eventName" placeholder="${eventName}" />
				<form:errors path="eventName" cssClass="error" />
			</div>
		</div>
		<div class="form-group row">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<spring:message code="event.Date" var="dateEvent" />
				<form:input type="text" class="form-control" path="dateEvent"
							id="dateEvent" placeholder="${dateEvent}" />
				<form:errors path="dateEvent" cssClass="error" />
			</div>
		</div>

		<div class="form-group row">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<spring:message code="event.Descr" var="descrEvent" />
				<form:input type="text" class="form-control" path="descEvent"
							id="descEvent" placeholder="${descrEvent}" />
				<form:errors path="descEvent" cssClass="error" />
			</div>
		</div>

		<!-- The specific input -->
		<div id="eventform" class="form-group row">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<spring:message code="event.sp1" var="Sp1Event" />
				<form:input type="text" class="form-control" path="descEvent" id="descEvent" placeholder="${Sp1Event}" />
				<form:errors path="descEvent" cssClass="error" />
			</div>
		</div>
		<div id="eventform2" class="form-group row">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<spring:message code="event.sp2" var="Sp2Event" />
				<form:input type="text" class="form-control" path="descEvent" id="descEvent" placeholder="${Sp2Event}" />
				<form:errors path="descEvent" cssClass="error" />
			</div>
		</div>

		<!-- End specific input -->

		<!-- Select Dept -->
		<div class="form-group row">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<label class="col-sm-2 control-label">ZipCode</label>
				<form:select path="" id="zipCode">
					<form:option value="NONE" label="Select"/>
					<form:options items="${listDept}" />
				</form:select>
			</div>
		</div>

		<!-- Dynamic Condo -->
		<div class="form-group row">
			<div class="checkbox" id="checkbox">
			</div>
		</div>

		<div id="AGform" class="form-group row">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<a href="" id="addNew" class="btn btn-info">+Question</a>
				<a href="" id="remNew" class="btn btn-warning">-Question</a>
				<br/><br/><br/>
				<spring:message code="event.question" var="question" />
				<spring:bind path="eventCommand.questions[0].questionName">
					<form:input type="text" class="form-control" path="${status.expression}" id="descEvent" placeholder="${question}" />
				</spring:bind>
				<!--form:errors path="eventCommand.questions[0]" cssClass="error" /-->
			</div>
		</div>

		<div class="form-group row" id ="submitRow">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<button type="submit" class="btn btn-primary"><spring:message code="button.submit"/></button>
			</div>
		</div>
	</form:form>

</div>

</body>

<script>
	jQuery(document).ready(function(){
		$('#AGform').hide();
		$('#eventform').hide();
		$('#eventform2').hide();
		$('#addinput').show();
		$('#typeEvent').change(function()
		{
			if (document.getElementById("typeEvent").value == 'AG') {
				$('#AGform').toggle(400);
				$('#addinput').show();
				$('#eventform').hide();
				$('#eventform2').hide();
			}
			else if (document.getElementById("typeEvent").value == 'Intervention') {
				$('#eventform').toggle(400);
				$('#eventform2').toggle(400);
				$('#AGform').hide();
			}
			else
			{
				$('#AGform').hide();
				$('#eventform').hide();
				$('#eventform2').hide();
			}
		});
	});
</script>
<script>
	$(function() {
		var i = $('[name^="pp_new_"]').size() + 1;
		$('#addNew').live('click', function() {
			i++;
			$.get("<%=request.getContextPath()%>/appendQuestionView.ldz", { fieldId: i},
					function(data){
						$("#submitRow").before(data);
					});

			return false;
		});


		$('#remNew').live('click', function () {
			if( i > 0 ) {
				$('#pp_new_'+i+'').remove();
				i--;
			}
			return false;
		});

		$('#typeEvent').change(function() {
			$('[name^="pp_new_"]').remove();
			i=0;
		});
	});


	$(function() {
		$('#zipCode').change(function() {
			var html = '';
			var zipCodeElement = document.getElementById("zipCode");
			var zipCode = zipCodeElement.options[zipCodeElement.selectedIndex].text;

			<c:if test="${listCondo != null}">
			<c:forEach var="entry" items="${listCondo}">
			<c:if test="${entry != null}">
			if (${entry.getAddress().getZipCode()} == zipCode ) {
				html += '<label id="checkboxlabel">' +
						'<input type="checkbox" value="${entry.getId()}"> ${entry.getAddress().getNumAdress()} ${entry.getAddress().getTypeAddress()} ${entry.getAddress().getStreet()}'+
						'</label>';
			}
			if (zipCode == 'Select' ) {
				$('#checkboxlabel').remove();
			}
			</c:if>
			</c:forEach>
			</c:if>
			$('.checkbox').append(html);
		});
	});
</script>

</html>