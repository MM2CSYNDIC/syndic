<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>
<spring:url value="welcome.ldz" var="homeUrl" htmlEscape="true" />
<spring:url value="getformadduser.ldz" var="adduserUrl" htmlEscape="true" />
<spring:url value="getformaddevent.ldz" var="addeventUrl" htmlEscape="true" />
<spring:url value="listevent.ldz" var="listeventUrl" htmlEscape="true" />

<STYLE>
  #bou {
    background-color: #92bf43;
    border-color: #92bf43;
  }
</STYLE>

 <nav class="navbar navbar-default" id="bou">
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
            <ul class="nav navbar-nav">
              <li class="active"><a href="${homeUrl}"><spring:message code="header.home"/></a></li>
              <li><a href="${adduserUrl}"><spring:message code="header.add.user"/></a></li>
              <li><a href="${addeventUrl}"><spring:message code="header.add.event"/></a></li>
              <li class="dropdown">
                <a href="${listeventUrl}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">List <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">actions</a></li>
                  <li role="separator" class="divider"></li>
                  <li class="dropdown-header">Nav header</li>
                  <li><a href="#">Action1</a></li>
                  <li><a href="#">Action2</a></li>
                </ul>
              </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="#"><spring:message code="header.login"/><span class="sr-only">(current)</span></a></li>
              <li><a href="#">UPOND</a></li>
              <li><a href="#"><spring:message code="header.about"/></a></li>
              <li><a href="?lang=en">En</a></li>
              <li><a href="?lang=fr">Fr</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
 </nav>