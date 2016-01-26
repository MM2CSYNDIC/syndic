
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<html>
<head>
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
      <h3><fmt:message key="listevent.H3" /></h3>
    </div>
  </div>
  <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">


    <form:form  method="POST" action="sendMailToUsers.ldz">
        <c:forEach var="entry" items="${listusers}">

              <div class="checkbox" >
                <label>
                  <input type="checkbox" checked value="${entry.getEmail()}">${entry.getFirstName()}
                </label>
              </div>



        </c:forEach>
        <div class="form-group row">
          <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <button type="submit" class="btn btn-default">Envoyer</button>
          </div>
        </div>
    </form:form>

  </div>


    </div>
</div>
</body></html>

