<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>
<html>
<head>

  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

  <style>
    .error {
      color: #ff0000;
    }

    .errorblock {
      color: #000;
      background-color: #ffEEEE;
      border: 3px solid #ff0000;
      padding: 8px;
      margin: 16px;
    }

    .input:focus {
      width: 350px;
    }
  </style>

  <link rel="stylesheet"
        href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

</head>
<body>


<div class="container">
  <div class="row">
    <div class="x_panel">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <h3><fmt:message key="provider.H3" /></h3>
      </div>


  <form:form method="POST" commandName="providerCommand"
             action="addprovider.ldz" style="margin: 0 auto; width : 630px">
    <form:errors path="*" cssClass="errorblock" element="div" />

    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <spring:message code="provider.Name" var="nameProvider" />
        <form:input type="text" class="form-control" path="nameProvider"
                    id="nameProvider" placeholder="${name}" />
        <form:errors path="nameProvider" cssClass="error" />
      </div>
    </div>
    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <spring:message code="provider.Description" var="description" />
        <form:textarea type="text" class="form-control" path="description"
                    id="description" placeholder="${description}" />
        <form:errors path="description" cssClass="error" />
      </div>
    </div>

    <!-- End specific input -->

    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <button type="submit" class="btn btn-default"><spring:message code="button.submit"/></button>
      </div>
    </div>
  </form:form>
    </div>
</div>
</div>
</body>
</html>


