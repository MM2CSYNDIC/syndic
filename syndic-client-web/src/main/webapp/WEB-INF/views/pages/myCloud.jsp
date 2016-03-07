<%--
  Created by IntelliJ IDEA.
  User: Manel
  Date: 16/02/2016
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="h" uri="http://www.springframework.org/tags/form" %>


<html>

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script  src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <style>
        .error {
            color: #ff0000;
        }
        .errorblock{
            color: #000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding:8px;
            margin:16px;
        }
    </style>


</head>
<body >
<div class="row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <h3><fmt:message key="cloud.H3" /></h3>
    </div>
</div>

<form:form method="GET" action="listing.ldz" >


    <br>
    <br>
    <div style="text-align:right"> <span style="border:1px solid black;padding:1%">
    <c:forEach var="entry2" items="${dropboxSize}" >
        <c:if test="${entry2 != null}">
            Il vous reste  ${entry2} Go d'espace disponible

        </c:if>
    </c:forEach>
    </span> </div>

<br>


    <c:if test="${liste != null}" >
        <c:forEach var="entry"  items="${liste}" >
            <c:if test="${entry != null}">

                <c:choose>
                    <c:when test="${entry.contains('.')}">
                        <c:set var="entry" value="${fn:replace(entry,'/', '')}" />
                        <i>${entry}</i>  <br>
                    </c:when>
                    <c:otherwise>
                        <c:set var="entry" value="${fn:replace(entry,'/', '')}" />
                       <b> ${entry} </b> <br>

                    </c:otherwise>
                </c:choose>

            </c:if>
        </c:forEach>
    </c:if>

</form:form>

</body>

</html>

