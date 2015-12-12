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
 <div class="container">
    <div class="row">
        <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <h3><fmt:message key="user.H3" /></h3>
        </div>
    </div>

 
 <form:form  method="POST" commandName="userCommand" action="adduser.ldz">
  <form:errors path="*" cssClass="errorblock" element="div"/>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
     <spring:message code="user.Name" var="userName" />
     <form:input type="text" class="form-control" path="userName" id="userName" placeholder="${userName}"/>
     <form:errors path="userName" cssClass="error"/>
    </div>
  </div>

  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
     <spring:message code="user.Password" var="userPwd" />
     <form:input type="password" class="form-control" path="passWord" id="passWord" placeholder="${userPwd}"/>
     <form:errors path="passWord" cssClass="error"/>
    </div>
  </div>
    
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
     <spring:message code="user.Confirmation" var="userConfirmation" />
     <form:input type="password" class="form-control" path="" id="" placeholder="${userConfirmation}" />
     <form:errors path="" cssClass="error"/>
    </div>      
  </div>
 <div class="form-group row">
     <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
         <form:input type="text" class="form-control" path="firstName" id="UserFirstName" placeholder="UserFirstName"/>
         <form:errors path="firstName" cssClass="error"/>
     </div>
 </div>
 <div class="form-group row">
     <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
         <form:input type="text" class="form-control" path="lastName" id="UserLastName" placeholder="UserLastName"/>
         <form:errors path="lastName" cssClass="error"/>
     </div>
 </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="typeUser" id="UserType" placeholder="UserType"/>
             <form:errors path="typeUser" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="phone" id="UserPhone" placeholder="UserPhone"/>
             <form:errors path="phone" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="mobile" id="UserMobile" placeholder="UserMobile"/>
             <form:errors path="mobile" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="email" id="UserEmail" placeholder="UserEmail"/>
             <form:errors path="email" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="numAddress" id="UserNumAddress" placeholder="UserNumAdress"/>
             <form:errors path="numAddress" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="typeAddress" id="UserTypeAddress" placeholder="UserTypeAddress"/>
             <form:errors path="typeAddress" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="street" id="UserStreet" placeholder="UserStreet"/>
             <form:errors path="street" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="city" id="UserCity" placeholder="UserCity"/>
             <form:errors path="city" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="zipCode" id="UserZipCode" placeholder="UserZipCode"/>
             <form:errors path="zipCode" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="country" id="UserCountry" placeholder="UserCountry"/>
             <form:errors path="country" cssClass="error"/>
         </div>
     </div>
     <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <form:input type="text" class="form-control" path="placeName" id="UserPlaceName" placeholder="UserPlaceName"/>
             <form:errors path="placeName" cssClass="error"/>
         </div>
     </div>

     <!--div class="form-group row">
    <div class="col-xs-12">
        <button type="submit" class="btn btn-default"><spring:message code="button.submit"/></button>
    </div>
  </div-->
  <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <button type="submit" class="btn btn-secondary"><spring:message code="button.submit"/></button>
         </div>
  </div>
 </form:form>

 </div>

</body>
</html>