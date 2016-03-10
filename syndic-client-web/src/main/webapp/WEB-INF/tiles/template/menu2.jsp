<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>
<spring:url value="/admin.ldz" var="homeUrl" htmlEscape="true" />
<spring:url value="/getformadduser.ldz" var="adduserUrl" htmlEscape="true" />
<spring:url value="/event/add.ldz" var="addeventUrl" htmlEscape="true" />
<spring:url value="/getformaddprovider.ldz" var="addproviderUrl" htmlEscape="true" />
<spring:url value="/event/list.ldz" var="listeventUrl" htmlEscape="true" />
<spring:url value="/listprovider.ldz" var="listproviderUrl" htmlEscape="true" />
<spring:url value="/j_spring_security_logout.ldz" var="logoutUrl" />
<spring:url value="/sign.ldz" var="loginUrl" />
<spring:url value="/home/getformupload.ldz" var="getformuploadUrl" htmlEscape="true"/>
<spring:url value="/home/upload.ldz" var="uploadUrl" htmlEscape="true"/>
<spring:url value="/home/getformdownload.ldz" var="getformdownloadUrl" htmlEscape="true"/>
<spring:url value="/home/getformdownloadForPartowner.ldz" var="getformdownloadForPartownerUrl" htmlEscape="true"/>
<spring:url value="/home/listing.ldz" var="listingUrl" htmlEscape="true"/>
<spring:url value="/home/listingForPartowner.ldz" var="listingForPartownerUrl" htmlEscape="true"/>
<spring:url value="/home/download.ldz" var="downloadUrl" htmlEscape="true"/>
<spring:url value="/home/downloadForPartowner.ldz" var="downloadForPartownerUrl" htmlEscape="true"/>
<spring:url value="/condo/add.ldz" var="addcondoUrl" htmlEscape="true"/>
<spring:url value="/polling/add.ldz" var="addpollingUrl" htmlEscape="true"/>
<spring:url value="/pollingresult.ldz" var="pollingresultURL" htmlEscape="true"/>
<spring:url value="/listuser.ldz" var="listuserUrl" htmlEscape="true"/>
<spring:url value="/getformadduser.ldz" var="pollingresultURL" htmlEscape="true"/>
<spring:url value="/message/send.ldz" var="sendMessageUrl" htmlEscape="true"/>

<!--ul style="list-style:none;line-height:28px;">


</ul-->
<spring:url value="/home/about.ldz" var="aboutURL" htmlEscape="true"/>
<spring:url value="/j_spring_security_logout.ldz" var="logoutUrl" />
<%--
<ul onload="change_class()" class="nav nav-pills nav-stacked">

    <li id="about" class=""><a href="${aboutURL}">A propos</a></li>
    <li>
        <c:choose>
        <c:when test="${pageContext.request.userPrincipal.name != null}"><li><a href="${logoutUrl}"><spring:message code="header.logout"/></a></li></c:when>
        <c:otherwise><a href="${loginUrl}"><spring:message code="header.login"/></a></c:otherwise>
    </c:choose>
    <span class="sr-only">(current)</span>
    </li>
</ul>--%>

<div class="col-md-3 left_col">
	<div class="left_col scroll-view">

		<div class="navbar nav_title" style="border: 0;">
			<a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>SyndicAPP</span></a>
		</div>
		<div class="clearfix"></div>


		<!-- menu prile quick info -->
		<div class="profile">
			<div class="profile_pic">
				<img src="/syndic/resources/images/img.jpg" alt="..." class="img-circle profile_img">
			</div>
			<div class="profile_info">
				<span>Bienvenue</span>
			</div>
		</div>
		<!-- /menu prile quick info -->

		<br />

		<!-- sidebar menu -->
		<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

			<div class="menu_section">
				<h3>General</h3>
				<ul class="nav side-menu">
					<li><a href="${homeUrl}"><i class="fa fa-home"></i> Accueil <span class="fa fa-chevron-down"></span></a></li>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a><i class="fa fa-edit"></i> <spring:message code="event.Title"/><span class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${addeventUrl}">Ajouter</a>
							</li>
							<li><a href="${listeventUrl}">Lister</a>
							</li>
						</ul>
					</li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_OWNER')">
                        <li><a><i class="fa fa-edit"></i> <spring:message code="event.Title"/><span class="fa fa-chevron-down"></span></a>
                            <ul class="nav child_menu" style="display: none">
                                <li><a href="${listeventUrl}">Lister</a>
                                </li>
                            </ul>
                        </li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_OWNER')">
					<li><a><i class="fa fa-edit"></i>Utilisateur<span class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${listuserUrl}">Lister</a>
							</li>
						</ul>
					</li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
					<li>
						<a ><i class="fa fa-edit"></i> <spring:message code="condo.Title"/><span class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${addcondoUrl}">Ajouter</a>
							</li>
							<li><a href="${listuserUrl}">Lister</a>
							</li>
						</ul>
					</li>
                    </sec:authorize>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li>
							<a ><i class="fa fa-edit"></i> Utilisateurs <span class="fa fa-chevron-down"></span></a>
							<ul class="nav child_menu" style="display: none">
								<li><a href="${adduserUrl}">Ajouter</a>
								</li>
								<li><a href="${listproviderUrl}">Lister</a>
								</li>
							</ul>
						</li>
					</sec:authorize>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a><i class="fa fa-edit"></i> <spring:message code="provider.Title"/><span class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${addproviderUrl}">Ajouter</a>
							</li>
							<li><a href="${listproviderUrl}">Lister</a>
							</li>
						</ul>
					</li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_OWNER')">
                        <li><a><i class="fa fa-edit"></i> <spring:message code="provider.Title"/><span class="fa fa-chevron-down"></span></a>
                            <ul class="nav child_menu" style="display: none">
                                <li><a href="${listproviderUrl}">Lister</a>
                                </li>
                            </ul>
                        </li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a><i class="fa fa-edit"></i> Notifications <span class="fa fa-chevron-down"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${sendMessageUrl}">inbox</a>
							</li>


						</ul>
					</li>

					<li id="gestiondefichiers" class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-edit"></i>Gestion de fichiers<span class="caret"></span></a>
						<ul class="nav child_menu" style="display: none">
							<li><a href="${listingUrl}">Mon Cloud</a></li>
							<li><a href="${getformuploadUrl}">Upload</a></li>
							<li><a href="${getformdownloadUrl}">Telecharger</a></li>
							<!--    <li><a href="#">Action2</a></li>-->
						</ul>
					</li>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_OWNER')">
                        <li id="gestiondefichiers" class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-edit"></i>Gestion de fichiers<span class="caret"></span></a>
                            <ul class="nav child_menu" style="display: none">
                                <li><a href="${listingForPartownerUrl}">Mon Cloud</a></li>
                                <!--    <li><a href="#">Action2</a></li>-->
                            </ul>
                        </li>
                    </sec:authorize>
				</ul>
			</div>

		</div>
		<!-- /sidebar menu -->

		<!-- /menu footer buttons -->
		<div class="sidebar-footer hidden-small">
			<a data-toggle="tooltip" data-placement="top" title="Settings">
				<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
			</a>
			<a data-toggle="tooltip" data-placement="top" title="FullScreen">
				<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
			</a>
			<a data-toggle="tooltip" data-placement="top" title="Lock">
				<span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
			</a>
			<a data-toggle="tooltip" data-placement="top" title="Logout">
				<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
			</a>
		</div>
		<!-- /menu footer buttons -->
	</div>
</div>
<script src="/syndic/resources/js/bootstrap.min.js"></script>
<script src="/syndic/resources/js/nicescroll/jquery.nicescroll.min.js"></script>

<!-- chart js -->
<script src="/syndic/resources/js/chartjs/chart.min.js"></script>
<!-- bootstrap progress js -->
<script src="/syndic/resources/js/progressbar/bootstrap-progressbar.min.js"></script>
<!-- icheck -->
<script src="/syndic/resources/js/icheck/icheck.min.js"></script>
<!-- daterangepicker -->
<script type="text/javascript" src="/syndic/resources/js/moment.min2.js"></script>
<script type="text/javascript" src="/syndic/resources/js/datepicker/daterangepicker.js"></script>
<!-- sparkline -->
<script src="/syndic/resources/js/sparkline/jquery.sparkline.min.js"></script>

<script src="/syndic/resources/js/custom.js"></script>

<!-- flot js -->
<!--[if lte IE 8]><script type="text/javascript" src="/syndic/resources/js/.min.js"></script><![endif]-->
<script type="text/javascript" src="/syndic/resources/js/flot/jquery.flot.js"></script>
<script type="text/javascript" src="/syndic/resources/js/flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="/syndic/resources/js/flot/jquery.flot.orderBars.js"></script>
<script type="text/javascript" src="/syndic/resources/js/flot/jquery.flot.time.min.js"></script>
<script type="text/javascript" src="/syndic/resources/js/flot/date.js"></script>
<script type="text/javascript" src="/syndic/resources/js/flot/jquery.flot.spline.js"></script>
<script type="text/javascript" src="/syndic/resources/js/flot/jquery.flot.stack.js"></script>
<script type="text/javascript" src="/syndic/resources/js/flot/curvedLines.js"></script>
<script type="text/javascript" src="/syndic/resources/js/flot/jquery.flot.resize.js"></script>
<!-- pace -->
<script src="/syndic/resources/js/pace/pace.min.js"></script>
<%--

<script language="javascript">







	var nom = window.location.pathname;
	nom = nom.split("/");
	nom = nom[nom.length - 1];
	nom = nom.substr(0, nom.lastIndexOf("."));
	nom = nom.replace(new RegExp("(%20|_|-)", "g"), "");
	//alert(nom);
	function change_class() {
		switch (nom){

            case 'about':
                var btn = document.getElementById("about");
                btn.className= "active";
                var btn1 = document.getElementById("about");
                btn1.className= "active";
                break;
/*
			case 'secteur':
				var btn = document.getElementById("sec");
				btn.className= "active";
				break;

			case 'qualite':
				var btn = document.getElementById("qse");
				btn.className= "active";
				break;


			case 'blog':
				var btn = document.getElementById("act");
				btn.className= "active";
				break;

			case 'actualite':
				var btn = document.getElementById("act");
				btn.className= "active";
				break;
 */
		}
	}


</script>--%>
