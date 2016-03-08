<%--
  Created by IntelliJ IDEA.
  User: Manel
  Date: 16/12/2015
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
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

    <!--<link rel="stylesheet" href="/resources/demos/style.css">-->


</head>
<body>

<div class="container">

    <div class="row">
        <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <h3>Attribution des lots a la copropriete</h3>
        </div>
    </div>

    <form:form method="POST" commandName="lotCommand" action="addlot.ldz">
        <form:errors path="*" cssClass="errorblock" element="div" />


        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="codeLot"
                            id="codeLot" placeholder="Code lot" />
                <form:errors path="codeLot" cssClass="error" />
            </div>
        </div>
        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
                <form:select class="form-control" path="typeLot" id="typeLot" >
                    <option selected value="appartement">Appartement</option>
                    <option selected value="cave">Cave</option>
                    <option value="cagibi">Cagibi</option>
                    <option value="parking">Parking</option>
                </form:select>
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
                            id="areaLot" placeholder="Surface" />
                <form:errors path="areaLot" cssClass="error" />
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">

                <form:input type="text" class="form-control" path="partLot"
                            id="partLot" placeholder="Surface" />
                <form:errors path="partLot" cssClass="error" />
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

