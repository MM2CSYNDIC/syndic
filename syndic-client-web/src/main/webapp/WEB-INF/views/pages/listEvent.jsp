<%@ page import="fr.upond.syndic.repo.model.event.Event" %>
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
    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <table class="table1">
          <tr>
            <th>Nom event</th><th>Type event</th><th>Date event</th><th>Description event</th><th>Modifier</th><th>Supprimer</th>
          </tr>
          <c:forEach var="entry" items="${listevent}">
           <tr>
             <td>${entry.getEventName()}</td><td>${entry.getTypeEvent()}</td><td>${entry.getDateEvent()}</td><td>${entry.getDescEvent()}</td>
             <td><a href="#"><img src="images/crayon.png"/>M</a></td>
             <td><a href="#"><img src="/WEB-INF/views/pages/images/erreur.png"/>S</a></td>
          </c:forEach>
           </tr>
        </table>
      </div>
    </div>
  </div>




</body>


</html>