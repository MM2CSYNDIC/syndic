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

<li>
<spring:url value="getformaddprovider.ldz" var="providerUrl" htmlEscape="true" />
<a href="${eventUrl}">add event</a>
</li>

</ul-->
<spring:url value="homeSyndic.ldz" var="homeUrl" htmlEscape="true" />
<spring:url value="homeSyndic.ldz" var="homeSyndicUrl" htmlEscape="true" />
<spring:url value="getformadduser.ldz" var="userUrl" htmlEscape="true" />
<spring:url value="getformaddevent.ldz" var="eventUrl" htmlEscape="true" />
<spring:url value="getformaddprovider.ldz" var="providerUrl" htmlEscape="true" />
<spring:url value="listevent.ldz" var="listeventUrl" htmlEscape="true" />
<spring:url value="listuser.ldz" var="listuserUrl" htmlEscape="true" />
<spring:url value="listcondo.ldz" var="listcondoUrl" htmlEscape="true" />
<spring:url value="listprovider.ldz" var="listproviderUrl" htmlEscape="true" />
<spring:url value="getformaddcondo.ldz" var="getformaddcondoUrl" htmlEscape="true"/>
	<style>


	#menu {
		height:100%;
		background:#101010;
		top:0;
		bottom:0;
		height:1250px;
		width:240px;

	}

	#menu ul {
		padding:0;
		margin:0;
		list-style:none;
		color:white;
	}

	#menu ul li {
		height:47px;
		padding-left:30px;
		line-height:47px;
		border-bottom:1px solid #fff;
	}

	#menu ul li.active {
		background:#337ab7;
	}

	#menu ul li:hover {
		background:#337ab7;
	}

	#menu ul li a {
		color:white;
		text-decoration:none;
		display:block;
	}

	h2 {
		font-weight:300;
		color:white;
		padding-left:15px;
	}

	/* Disable iOS/WinMobile font size changes */
	@media screen and (max-width: 600px),
	screen and (max-device-width: 480px) {
		html {
			-ms-text-size-adjust: none;
			-webkit-text-size-adjust: none;
		}
	}

	/* ==== Media Queries ==== */

	/* Default Screen */
	@media (min-width : 960px) and (max-width : 1280px) {

		#page {
			width:960px;
		}

	}

</style>
<div id="menu">
	<a href="javascript:;" class="close"></a>
	<ul onload="change_class()">
		<li id="ac" class=""><a href="${homeUrl}"><spring:message code="header.home"/></a></li>
		<li id="listuser" class=""><a href="${listuserUrl}">Utilisateurs</a></li>
		<li id="listeven" class=""><a href="${listeventUrl}"><spring:message code="event.Title"/></a></li>
		<li id="listeven" class=""><a href="${getformaddcondoUrl}"><spring:message code="condo.H3"/></a></li>
		<li id="listprovider" class=""><a href="${listproviderUrl}">Fournisseurs</a></li>
		<%--<li id="listcondo" class=""><a href="${listcondoUrl}">Condos</a></li>--%>
	</ul>
</div>


<script language="javascript">

	var nom = window.location.pathname;
	nom = nom.split("/");
	nom = nom[nom.length - 1];
	nom = nom.substr(0, nom.lastIndexOf("."));
	nom = nom.replace(new RegExp("(%20|_|-)", "g"), "");
	//alert(nom);


	function change_class() {

		switch (nom){
			case 'welcome':
				//alert(nom);
				var btn = document.getElementById("ac");
				btn.className= "active";
				var btn1 = document.getElementById("acc");
				btn1.className= "active";
				break;
			case 'homeSyndic':
				//alert(nom);
				var btn = document.getElementById("ac");
				btn.className= "active";
				var btn1 = document.getElementById("acc");
				btn1.className= "active";
				break;

			case 'getformadduser':
				var btn = document.getElementById("adduse");
				btn.className= "active";
				var btn1 = document.getElementById("adduser");
				btn1.className= "active";
				break;
			case 'getformaddprovider':
				var btn = document.getElementById("addprovider");
				btn.className= "active";
				var btn1 = document.getElementById("addprovider");
				btn1.className= "active";
				break;
			/*
			 case 'altead':
			 var btn = document.getElementById("grou");
			 var btn1 = document.getElementById("alte");
			 btn1.className="active";
			 btn.className= "dropdown active";
			 break;*/

			case 'getformaddevent':
				var btn = document.getElementById("addeven");
				btn.className= "active";
				var btn1 = document.getElementById("addevent");
				btn1.className= "active";
				break;

			case 'listevent':
				var btn = document.getElementById("listeven");
				btn.className= "active";
				var btn1 = document.getElementById("listevent");
				btn1.className= "active";
				break;
			case 'listprovider':
				var btn = document.getElementById("listprovider");
				btn.className= "active";
				var btn1 = document.getElementById("listprovider");
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


</script>