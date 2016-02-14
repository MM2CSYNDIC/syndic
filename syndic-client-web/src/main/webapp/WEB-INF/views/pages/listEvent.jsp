
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
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
      <div id='calendarr'></div>
        
        <table class="table1">
         <thead>
          <tr>
            <th>Nom event</th><th>Type event</th><th>Date event</th><th>Description event</th><th>Action</th>
          </tr>
         </thead>
          <c:if test="${listevent != null}">
           <c:forEach var="entry" items="${listevent}">
            <c:if test="${entry != null}">
             <tr>
              <td>${entry.getEventName()}</td>
              <td>${entry.getTypeEvent()}</td>
              <td>${entry.getDateEvent()}</td>
              <td>${entry.getDescEvent()}</td>
              <td>
			    <spring:url value="/events/${entry.getEventName()}/delete.ldz" var="deleteUrl" /> 
			    <spring:url value="/events/${entry.getEventName()}/update.ldz" var="updateUrl" />
			    <button class="btn btn-primary" onclick="location.href='${updateUrl}'">Update</button>
			    <button class="btn btn-danger" onclick="location.href='${deleteUrl}'">Delete</button>
			  </td>
             </tr>
            </c:if>
           </c:forEach>
          </c:if>

        </table>
  </div>

</body>


</html>

<script>
    $(document).ready(function() {

        // page is now ready, initialize the calendar...

        $('#calendar').fullCalendar({
            eventSources: [

                // your event source
                {
                    events: [ // put the array in the `events` property
                        <c:out value="${jsonEvent}"/>
                   ],
                    color: 'black',     // an option!
                    textColor: 'yellow' // an option!
                }

                // any other event sources...

            ]

        });

    });

</script>