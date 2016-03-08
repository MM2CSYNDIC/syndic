<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<div class="x">
    <div class="row">
        <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <h3><fmt:message key="user.H3" /></h3>
        </div>
    </div>
    <div class="container">

        <div class="row">
            <div class="x_panel">
 <form:form  method="POST" commandName="userCommand" action="adduser.ldz" style="">
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
     <form:input type="password" class="form-control" path="confirmation" id="confirmation" placeholder="${userConfirmation}" />
     <form:errors path="confirmation" cssClass="error"/>
    </div>      
  </div>
 <div class="form-group row">
     <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
         <spring:message code="user.firstName" var="userfirstName" />
         <form:input type="text" class="form-control" path="firstName" id="UserFirstName" placeholder="${userfirstName}"/>
         <form:errors path="firstName" cssClass="error"/>
     </div>
 </div>
 <div class="form-group row">
     <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
         <spring:message code="user.lastName" var="userlastName" />
         <form:input type="text" class="form-control" path="lastName" id="UserLastName" placeholder="${userlastName}"/>
         <form:errors path="lastName" cssClass="error"/>
     </div>
 </div>
 <div class="form-group row">
			<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
				<form:select class="form-control" path="typeUser" id="UserType" >
					<option selected><spring:message code="user.typeUser" /></option>
					<option value="ROLE_USER"><spring:message code="user.roleUser"/></option>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
					  <option value="ROLE_OWNER"><spring:message code="user.roleOwner"/></option>
					  <option value="ROLE_ADMIN"><spring:message code="user.roleAdmin"/></option>
					</sec:authorize>
				</form:select>
				<form:errors path="typeUser" cssClass="error" />
			</div>
 </div>
 <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <spring:message code="user.phone" var="userPhone" />
             <form:input type="text" class="form-control" path="phone" id="UserPhone" placeholder="${userPhone}"/>
             <form:errors path="phone" cssClass="error"/>
         </div>
 </div>
 <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <spring:message code="user.mobile" var="userMobile" />
             <form:input type="text" class="form-control" path="mobile" id="UserMobile" placeholder="${userMobile}"/>
             <form:errors path="mobile" cssClass="error"/>
         </div>
 </div>
 <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <spring:message code="user.email" var="userEmail" />
             <form:input type="text" class="form-control" path="email" id="UserEmail" placeholder="${userEmail}"/>
             <form:errors path="email" cssClass="error"/>
         </div>
 </div>
 <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <spring:message code="user.numAddress" var="usernumAddress" />
             <form:input type="text" class="form-control" path="numAddress" id="UserNumAddress" placeholder="${usernumAddress}"/>
             <form:errors path="numAddress" cssClass="error"/>
         </div>
 </div>
 <div class="form-group row">
				<div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
					<form:select class="form-control" path="typeAddress" id="UserTypeAddress" >
		              <option value="none" selected><spring:message code="user.typeAddress"/></option>
		              <option value="street"><spring:message code="user.typeAddress.street"/></option>
		              <option value="avenue"><spring:message code="user.typeAddress.avenue"/></option>
		              <option value="boulvard"><spring:message code="user.typeAddress.boulvard"/></option>
                      <option value="deadEnd"><spring:message code="user.typeAddress.deadEnd"/></option>
                      <option value="driveWay"><spring:message code="user.typeAddress.driveWay"/></option>
                      <option value="plaza"><spring:message code="user.typeAddress.plaza"/></option>
		            </form:select>
		            <form:errors path="typeAddress" cssClass="error" />
		        </div>
 </div>
 <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <spring:message code="user.street" var="userstreet" />
             <form:input type="text" class="form-control" path="street" id="UserStreet" placeholder="${userstreet}"/>
             <form:errors path="street" cssClass="error"/>
         </div>
 </div>
 <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <spring:message code="user.city" var="usercity" />
             <form:input type="text" class="form-control" path="city" id="UserCity" placeholder="${usercity}"/>
             <form:errors path="city" cssClass="error"/>
         </div>
 </div>
 <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <spring:message code="user.zipCode" var="userzipCode" />
             <form:input type="text" class="form-control" path="zipCode" id="UserZipCode" placeholder="${userzipCode}"/>
             <form:errors path="zipCode" cssClass="error"/>
         </div>
 </div>
 <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <spring:message code="user.country" var="usercountry" />
             <form:input type="text" class="form-control" path="country" id="UserCountry" placeholder="${usercountry}"/>
             <form:errors path="country" cssClass="error"/>
         </div>
 </div>
 <div class="form-group row">
         <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
             <spring:message code="user.placeName" var="userplaceName" />
             <form:input type="text" class="form-control" path="placeName" id="UserPlaceName" placeholder="${userplaceName}"/>
             <form:errors path="placeName" cssClass="error"/>
         </div>
 </div>


        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <button type="submit" class="btn btn-secondary"><spring:message code="button.submit"/></button>
            </div>
        </div>
</form:form></div></div></div></div></body></html>

