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
<spring:url value="listprovider.ldz" var="listproviderUrl" htmlEscape="true" />
<link rel="stylesheet" src="http://syndicapp.alwaysdata.net/css/styles.css"/>
<div id='cssmenu'>
    <ul onload="change_class()" class="nav nav-pills nav-stacked">
        <li id="ac" class=""><a href="${homeUrl}"><spring:message code="header.home"/></a></li>
        <li id="adduse" class=""><a href="${userUrl}"><spring:message code="header.add.user"/></a></li>
        <li id="addeven" class=""><a href="${eventUrl}"><spring:message code="header.add.event"/></a></li>
        <li id="listeven" class=""><a href="${listeventUrl}"><spring:message code="header.list.event"/></a></li>
        <li id="listprovider" class=""><a href="${listproviderUrl}">Liste des fournisseurs</a></li>
    </ul>

</div>

