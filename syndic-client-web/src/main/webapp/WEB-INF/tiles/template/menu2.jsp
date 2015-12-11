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
<ul onload="change_class()" class="nav nav-pills nav-stacked">
  <li id="ac" class=""><a href="${homeUrl}"><spring:message code="header.home"/></a></li>
  <li id="adduse" class=""><a href="${userUrl}"><spring:message code="header.add.user"/></a></li>
  <li id="addeven" class=""><a href="${eventUrl}"><spring:message code="header.add.event"/></a></li>
  <li id="listeven" class=""><a href="${listeventUrl}"><spring:message code="header.list.event"/></a></li>
</ul>

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

			case 'getformadduser':
				var btn = document.getElementById("adduse");
				btn.className= "active";
				var btn1 = document.getElementById("adduser");
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