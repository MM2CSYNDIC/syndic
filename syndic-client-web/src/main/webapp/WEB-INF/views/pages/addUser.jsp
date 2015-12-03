<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
 <div class="container">
 
 <h3>Create Count</h3>
 
 <form:form  method="POST" commandName="userCommand" action="adduser.ldz">
  <form:errors path="*" cssClass="errorblock" element="div"/>
  <div class="form-group row">
    <div class="col-xs-6">
     <form:input type="text" class="form-control" path="userName" id="userName" placeholder="Login"/>
     <form:errors path="userName" cssClass="error"/>
    </div>
  </div>

  <div class="form-group row">
    <div class="col-xs-6">
     <form:input type="password" class="form-control" path="passWord" id="passWord" placeholder="Password"/>
     <form:errors path="passWord" cssClass="error"/>
    </div>
  </div>
    
  <div class="form-group row">
    <div class="col-xs-6">
     <form:input type="password" class="form-control" path="" id="" placeholder="Confirmation" />
     <form:errors path="" cssClass="error"/>
    </div>      
  </div>
  
  <div class="form-group row">
    <div class="col-xs-12">
        <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
 </form:form>
 
 </div>

</body>
</html>