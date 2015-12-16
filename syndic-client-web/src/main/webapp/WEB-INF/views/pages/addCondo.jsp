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
    <!--<link rel="stylesheet" href="/resources/demos/style.css">-->


</head>
<body>

<div class="container">

    <div class="row">
        <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <h3>Ajout de Copropriete</h3>
        </div>
    </div>

    <form:form method="POST" commandName="condoCommand" action="addcondo.ldz">
        <form:errors path="*" cssClass="errorblock" element="div" />

        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="name"
                            id="name" placeholder="Libelle" />
                <form:errors path="name" cssClass="error" />
            </div>
        </div>
        <div class="form-group">
          <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <div class="form-group row">
                <div class="col-md-6">
                    <form:input type="text" class="form-control" path="numAddressStart" id="numAddressStart" placeholder="Début Numero de voie"/>
                    <form:errors path="numAddressStart" cssClass="error" />
                </div>
                <div class="col-md-6">
                    <form:input type="text" class="form-control" path="numAddressEnd"  id="numAddressEnd" placeholder="Fin Numero de voie"/>
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

                <form:input type="text" class="form-control" path="street"
                            id="street" placeholder="Nom de voie" />
                <form:errors path="street" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="zipcode"
                            id="zipcode" placeholder="Code postal" />
                <form:errors path="zipcode" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="placeName"
                            id="placeName" placeholder="Complement" />
                <form:errors path="placeName" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <form:input type="text" class="form-control" path="city"
                            id="city" placeholder="Ville" />
                <form:errors path="city" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="country"
                            id="country" placeholder="Pays" />
                <form:errors path="country" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="codeLot"
                            id="codeLot" placeholder="Numero de lot" />
                <form:errors path="codeLot" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="typeLot"
                            id="typeLot" placeholder="Type de lot" />
                <form:errors path="typeLot" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="floorLot"
                            id="floorLot" placeholder="Etage" />
                <form:errors path="floorLot" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="areaLot"
                            id="areaLot" placeholder="Surface du lot" />
                <form:errors path="areaLot" cssClass="error" />
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="part"
                            id="part" placeholder="Part du lot" />
                <form:errors path="part" cssClass="error" />
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="area"
                            id="area" placeholder="Surface de la copropriete" />
                <form:errors path="area" cssClass="error" />
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

</body>

</html>



