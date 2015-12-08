
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
      <div class="row">
          <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
              <h3>Affectation des Event</h3>
          </div>
      </div>
    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <table class="table1">
          <tr>
            <th>Nom event</th><th>Type event</th><th>Date event</th><th>Description event</th><th>Building</th><th>Address</th>
          </tr>
          <c:if test="${event != null}">
           <c:if test="${listBuilding != null}">
            <c:forEach var="entry" items="${listBuilding}">
             <tr>
              <td>${event.getEventName()}</td>
              <td>${event.getTypeEvent()}</td>
              <td>${event.getDateEvent()}</td>
              <td>${event.getDescEvent()}</td>
              <td>${entry.getName()}</td>
              <td>${entry.getAddress().getCity()}</td>
              <td><a href="#">Affect</a></td>
             </tr>
            </c:forEach>
           </c:if>
          </c:if>
        </table>
      </div>
    </div>
  </div>


  
</body>
</html>