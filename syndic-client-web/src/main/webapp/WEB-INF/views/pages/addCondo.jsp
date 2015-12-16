<%--
  Created by IntelliJ IDEA.
  User: Manel
  Date: 14/12/2015
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
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
        <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <h3><spring:message code="condo.H3" /></h3>
        </div>
    </div>

    <form:form method="POST" commandName="condoCommand" action="addcondo.ldz">
        <form:errors path="*" cssClass="errorblock" element="div" />

        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <spring:message code="condo.libele" var="condolibele" />
                <form:input type="text" class="form-control" path="name" id="name" placeholder="${condolibele}" />
                <form:errors path="name" cssClass="error" />
            </div>
        </div>
        <div class="form-group">
          <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <div class="form-group row">
                <div class="col-md-6">
                    <spring:message code="condo.startNumAddress" var="condostartNumAddress" />
                    <form:input type="text" class="form-control" path="numAddressStart" id="numAddressStart" placeholder="${condostartNumAddress}"/>
                    <form:errors path="numAddressStart" cssClass="error" />
                </div>
                <div class="col-md-6">
                    <spring:message code="condo.endNumAddress" var="condoendNumAddress" />
                    <form:input type="text" class="form-control" path="numAddressEnd"  id="numAddressEnd" placeholder="${condoendNumAddress}"/>
                    <form:errors path="numAddressEnd" cssClass="error" />
                </div>
            </div>
          </div>
        </div>        
        <div class="form-group row">
		  <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
			<form:select class="form-control" path="typeAddress" id="typeAddress" >
		        <option value="none" selected><spring:message code="user.typeAddress"/></option>
		        <option value="street"><spring:message code="user.typeAddress.street"/></option>
		        <option value="avenue"><spring:message code="user.typeAddress.avenue"/></option>
		        <option value="boulvard"><spring:message code="user.typeAddress.boulvard"/></option>
		    </form:select>
		    <form:errors path="typeAddress" cssClass="error" />
		  </div>
		</div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="user.street" var="condostreet" />
                <form:input type="text" class="form-control" path="street" id="street" placeholder="${condostreet}" />
                <form:errors path="street" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="user.ComplementAdd" var="userComplementAdd" />
                <form:input type="text" class="form-control" path="placeName" id="placeName" placeholder="${userComplementAdd}" />
                <form:errors path="placeName" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="user.city" var="condocity" />
                <form:input type="text" class="form-control" path="city" id="city" placeholder="${condocity}" />
                <form:errors path="city" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="user.zipCode" var="condorzipCode" />
                <form:input type="text" class="form-control" path="zipcode" id="zipcode" placeholder="${condorzipCode}" />
                <form:errors path="zipcode" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="user.country" var="condorcontry" />
                <form:input type="text" class="form-control" path="country" id="country" placeholder="${condorcontry}" />
                <form:errors path="country" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="condo.numLot" var="condonumLot" />
                <form:input type="text" class="form-control" path="codeLot" id="codeLot" placeholder="${condonumLot}" />
                <form:errors path="codeLot" cssClass="error" />
            </div>
        </div>
        
        
        
        
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="condo.typeLot" var="condotypeLot" />
                <form:input type="text" class="form-control" path="typeLot" id="typeLot" placeholder="${condotypeLot}" />
                <form:errors path="typeLot" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
		  <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
			<form:select class="form-control" path="typeLot" id="typeLot" >
		        <option value="none" selected><spring:message code="condo.typeLot"/></option>
		        <option value="studio"><spring:message code="lot.typeLot.studio"/></option>
		        <option value="apartment"><spring:message code="lot.typeLot.apartment"/></option>
		        <option value="parking"><spring:message code="lot.typeLot.parking"/></option>
		        <option value="cave"><spring:message code="lot.typeLot.cave"/></option>
		        <option value="box"><spring:message code="lot.typeLot.box"/></option>
		        <option value="shop"><spring:message code="lot.typeLot.shop"/></option>
		        <option value="house"><spring:message code="lot.typeLot.house"/></option>
		        <option value="ground"><spring:message code="lot.typeLot.ground"/></option>
		        <option value="building"><spring:message code="lot.typeLot.building"/></option>
		        <option value=""><spring:message code="user.typeAddress.boulvard"/></option>
		    </form:select>
		    <form:errors path="typeLot" cssClass="error" />
		  </div>
		</div>
        
        
        
        
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="condo.floor" var="condofloor" />
                <form:input type="text" class="form-control" path="floorLot" id="floorLot" placeholder="${condofloor}" />
                <form:errors path="floorLot" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="condor.lotArea" var="condorlotArea" />
                <form:input type="text" class="form-control" path="areaLot" id="areaLot" placeholder="${condorlotArea}" />
                <form:errors path="areaLot" cssClass="error" />
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="condor.lotPart" var="condorlotPart" />
                <form:input type="text" class="form-control" path="part" id="part" placeholder="${condorlotPart}" />
                <form:errors path="part" cssClass="error" />
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <spring:message code="condor.area" var="condorarea" />
                <form:input type="text" class="form-control" path="areaCondo" id="area" placeholder="${condorarea}" />
                <form:errors path="areaCondo" cssClass="error" />
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <button type="submit" class="btn btn-default"><spring:message code="button.submit"/></button>
            </div>
        </div>
    </form:form>

</div>

</body>

</html>



