<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>

<html>

 <head>
  <title>Visualiser les votes</title>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <link rel='stylesheet' href='http://syndicapp.alwaysdata.net/fullcalendar/fullcalendar-2.5.0-beta2/fullcalendar.css' />
    <script src='http://syndicapp.alwaysdata.net/fullcalendar/fullcalendar-2.5.0-beta2/lib/jquery.min.js'></script>
    <script src='http://syndicapp.alwaysdata.net/fullcalendar/fullcalendar-2.5.0-beta2/lib/moment.min.js'></script>
    <script src='http://syndicapp.alwaysdata.net/fullcalendar/fullcalendar-2.5.0-beta2/fullcalendar.js'></script>
    <link rel="stylesheet" href="http://syndicapp.alwaysdata.net/calandarTheme/start/jquery.ui.theme.css"/>
    <link rel="stylesheet" href="http://syndicapp.alwaysdata.net/calandarTheme/start/jquery-ui.css"/>
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
              <h3>Vote</h3>
          </div>
      </div>

      <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <table class="table1">
          <tr>
            <th>Question</th><th>Pour</th><th>Contre</th><th>Abstention</th>
          </tr>

          <c:if test="${resultpolling != null}">
           <c:forEach var="entry" items="${resultpolling}">
            <c:if test="${entry != null}">
             <tr>
              <td>${entry.getQuestion()}</td>
              <td>${entry.getPour()}</td>
              <td>${entry.getContre()}</td>
              <td>${entry.getAbstention()}</td>
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