<%--
  Created by IntelliJ IDEA.
  User: Manel
  Date: 14/12/2015
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>
<html>
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
<body>

<h1> Bienvenue sur votre espace de partage de documents </h1>


<form:form method="POST" enctype="file/form-data" action="upload.ldz" >
    Veuillez choisir un fichier <input type="file" name="file" /> <br>

    <div class="form-group row"><br> <br>
        <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <button type="submit" class="btn btn-default"><spring:message code="button.submit"/></button>
        </div>
    </div>

</form:form>

</body>

</html>

