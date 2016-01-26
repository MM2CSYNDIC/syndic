<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>
<spring:url value="welcome.ldz" var="homeUrl" htmlEscape="true" />
<spring:url value="welcomeSyndic.ldz" var="homeSyndicUrl" htmlEscape="true" />
<spring:url value="getformadduser.ldz" var="adduserUrl" htmlEscape="true" />
<spring:url value="getformaddevent.ldz" var="addeventUrl" htmlEscape="true" />
<spring:url value="getformaddprovider.ldz" var="addproviderUrl" htmlEscape="true" />
<spring:url value="listevent.ldz" var="listeventUrl" htmlEscape="true" />
<spring:url value="listprovider.ldz" var="listproviderUrl" htmlEscape="true" />
<spring:url value="/j_spring_security_logout.ldz" var="logoutUrl" />
<spring:url value="/sign.ldz" var="loginUrl" />
<STYLE>
  #bou {
    background-color: #101010;
    border-color: #101010;
    color: #fff;
    margin-bottom: 0px;
    border-bottom-width: 0px;
    border-radius: 0px;
  }
  .navbar-default .navbar-nav>li>a {
    color: #fff;
  }
</STYLE>

 <nav onload="change_class()" class="navbar navbar-default" id="bou">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${homeUrl}">Syndic</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
              <li>
	            <c:choose>
                 <c:when test="${pageContext.request.userPrincipal.name != null}"><a href="#">${pageContext.request.userPrincipal.name}</a><li><a href="${logoutUrl}"><spring:message code="header.logout"/></a></li></c:when>
                 <c:otherwise><a href="${loginUrl}"><spring:message code="header.login"/></a></c:otherwise>
                </c:choose>
                <span class="sr-only">(current)</span>
              </li>
              <li><a href="#">UPOND</a></li>
              <li><a href="#"><spring:message code="header.about"/></a></li>
              <li><a href="?lang=en">En</a></li>
              <li><a href="?lang=fr">Fr</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
 </nav>
