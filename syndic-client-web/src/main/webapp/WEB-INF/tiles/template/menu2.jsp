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
<spring:url value="welcome.ldz" var="homeUrl" htmlEscape="true" />
<spring:url value="getformadduser.ldz" var="userUrl" htmlEscape="true" />
<spring:url value="getformaddevent.ldz" var="eventUrl" htmlEscape="true" />
<spring:url value="getformaddprovider.ldz" var="providerUrl" htmlEscape="true" />
<spring:url value="listevent.ldz" var="listeventUrl" htmlEscape="true" />
<spring:url value="listprovider.ldz" var="listproviderUrl" htmlEscape="true" />
<spring:url value="getformpolling.ldz" var="pollingUrl" htmlEscape="true" />
<spring:url value="getformupload.ldz" var="getformuploadUrl" htmlEscape="true"/>
<spring:url value="upload.ldz" var="uploadUrl" htmlEscape="true"/>
<spring:url value="getformdownload.ldz" var="getformdownloadUrl" htmlEscape="true"/>
<spring:url value="listing.ldz" var="listingUrl" htmlEscape="true"/>
<spring:url value="download.ldz" var="downloadUrl" htmlEscape="true"/>

<ul onload="change_class()" class="nav nav-pills nav-stacked">
  <li id="ac" class=""><a href="${homeUrl}"><spring:message code="header.home"/></a></li>
  <li id="adduse" class=""><a href="${userUrl}"><spring:message code="header.add.user"/></a></li>
  <li id="addeven" class=""><a href="${eventUrl}"><spring:message code="header.add.event"/></a></li>
  <li id="listeven" class=""><a href="${listeventUrl}"><spring:message code="header.list.event"/></a></li>
	<li id="listprovider" class=""><a href="${listproviderUrl}">Fournisseurs</a></li>
	<li id="pol" class=""><a href="${pollingUrl}">Vote</a></li>
    <li id="getformupload" class=""><a href="${getformuploadUrl}">Upload</a></li>
    <li id="getformdownload" class=""><a href="${getformdownloadUrl}">Download</a></li>
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
				var .btn = document.getElementById("adduse");
				btn.className= "active";
				var btn1 = document.getElementById("adduser");
				btn1.className= "active";
				break;


			case 'getformaddprovider':
				var btn = document.getElementById("listprovider");
				btn.className= "active";
				var btn1 = document.getElementById("listprovider");
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
				var btn1 = document.getElementById("listevent");
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
            case 'getformupload':
                var btn = document.getElementById("getformupload");
                btn.className= "active";
                var btn1 = document.getElementById("getformupload");
                btn1.className= "active";
                break;
            case 'getformudownload':
                var btn = document.getElementById("getformdownload");
                btn.className= "active";
                var btn1 = document.getElementById("getformdownload");
                btn1.className= "active";
                break;
            case 'listing':
                var btn = document.getElementById("listing");
                btn.className= "active";
                var btn1 = document.getElementById("listing");
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