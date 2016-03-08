
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
</head>

<style>
  .table1{
    border : 2px solid black;
  }
  .table1 th{
    margin : 5px;
    padding : 5px;
    border: 2px solid black;
    text-align: center;
    background: #E6EDF5;
    color: #4F76A3;
    font-size: 100% !important;
  }
  .table1 td{
    margin : 5px;
    padding : 5px;
    text-align: center;
    border: 1px solid black;
    background : white;
  }
</style>


<body>
  <div class="container">
    <div class="x_panel">
      <div class="row">
          <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
              <h3><fmt:message key="listprovider.H3" /></h3>
          </div>
      </div>
      <div class="form-group row">
        <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10" style=" margin-left: 52px;">
          <table class="table table-hover" style="margin: 0 auto; width : 630px ">
            <tr>
              <th>Fournisseur</th><th>Information</th><th>Date de création</th><th></th><th></th>
            </tr>

            <c:if test="${listprovider != null}">
              <c:forEach var="entry" items="${listprovider}">
                <c:if test="${entry != null}">
                  <tr>
                    <td>${entry.getNameProvider()}</td>
                    <td>${entry.getDescription()}</td>
                    <td>${entry.getDateCreation()}</td>
                    <td><a href="#"> <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
                    <td><a href="#"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></a></td>
                  </tr>
                </c:if>
              </c:forEach>
            </c:if>

          </table>
        </div>

      </div>
  </div></div>
</body>
</html>
