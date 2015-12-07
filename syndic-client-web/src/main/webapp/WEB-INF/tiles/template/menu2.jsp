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
<spring:url value="listevent.ldz" var="listeventUrl" htmlEscape="true" />
<ul class="nav nav-pills nav-stacked">
  <li class="active"><a href="${homeUrl}"><spring:message code="header.home"/></a></li>
  <li class="active"><a href="${userUrl}"><spring:message code="header.add.user"/></a></li>
  <li class="active"><a href="${eventUrl}"><spring:message code="header.add.event"/></a></li>
  <li class="active"><a href="${listeventUrl}"><spring:message code="header.list.event"/></a></li>
</ul>