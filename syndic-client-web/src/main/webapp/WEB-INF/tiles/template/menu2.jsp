<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>

<!--ul style="list-style:none;line-height:28px;">


</ul-->
<spring:url value="/home/about.ldz" var="aboutURL" htmlEscape="true"/>
<spring:url value="/j_spring_security_logout.ldz" var="logoutUrl" />

   <ul onload="change_class()" class="nav nav-pills nav-stacked">

    <li id="about" class=""><a href="${aboutURL}">A propos</a></li>
    <li>
        <c:choose>
        <c:when test="${pageContext.request.userPrincipal.name != null}"><li><a href="${logoutUrl}"><spring:message code="header.logout"/></a></li></c:when>
        <c:otherwise><a href="${loginUrl}"><spring:message code="header.login"/></a></c:otherwise>
    </c:choose>
    <span class="sr-only">(current)</span>
    </li>
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


</script>