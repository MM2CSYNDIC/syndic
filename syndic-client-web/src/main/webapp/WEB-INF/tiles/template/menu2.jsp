<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>

<!--ul style="list-style:none;line-height:28px;">

	<li>
    <spring:url value="welcome.ldz" var="homeUrl" htmlEscape="true" />
		<a href="${homeUrl}">Home</a>
	</li>

	<li>
    <spring:url value="getformadduser.ldz" var="userUrl" htmlEscape="true" />
		<a href="${userUrl}">add user</a>
	</li>
	
	<li>
    <spring:url value="getformaddevent.ldz" var="eventUrl" htmlEscape="true" />
		<a href="${eventUrl}">add event</a>
	</li>

</ul-->
<spring:url value="welcome.ldz" var="homeUrl" htmlEscape="true" />
<spring:url value="getformadduser.ldz" var="userUrl" htmlEscape="true" />
<spring:url value="getformaddevent.ldz" var="eventUrl" htmlEscape="true" />
<ul class="nav nav-pills nav-stacked">
  <li class="active"><a href="${homeUrl}">Home</a></li>
  <li class="active"><a href="${userUrl}">Add User</a></li>
  <li class="active"><a href="${eventUrl}">Add Event</a></li>
</ul>