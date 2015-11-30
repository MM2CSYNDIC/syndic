<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<ul style="list-style:none;line-height:28px;">

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

</ul>