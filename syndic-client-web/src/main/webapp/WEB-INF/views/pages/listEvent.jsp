
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
      <div class="row">
          <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
              <h3><fmt:message key="listevent.H3" /></h3>
          </div>
      </div>
    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <table class="table1">
          <tr>
            <th>Nom event</th><th>Type event</th><th>Date event</th><th>Description event</th><th>Modifier</th><th>Supprimer</th>
          </tr>
          <c:if test="${listevent != null}">
           <c:forEach var="entry" items="${listevent}">
            <c:if test="${entry != null}">
             <tr>
              <td>${entry.getEventName()}</td>
              <td>${entry.getTypeEvent()}</td>
              <td>${entry.getDateEvent()}</td>
              <td>${entry.getDescEvent()}</td>
              <td><a href="#"><img src="<c:url value="images/crayon.png" />">M</a></td>
              <td><a href="#"><img src="/WEB-INF/views/pages/images/erreur.png"/>S</a></td>
              <td><a href="eventbuilding.ldz?eventId=${entry.getEventName()}">Affect</a></td>
             </tr>
            </c:if>
           </c:forEach>
          </c:if>

        </table>
      </div>
    </div>
  </div>

</body>


</html>