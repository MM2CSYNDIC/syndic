<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>
<html>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
          <h3>Accueil</h3>
          <div id='calendar'></div>
        </div>
      </div>
    </div>
  </body>
</html>




  <link rel='stylesheet' href='http://syndicapp.alwaysdata.net/fullcalendar/fullcalendar-2.5.0-beta2/fullcalendar.css' />
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <link rel="stylesheet" href="http://syndicapp.alwaysdata.net/calandarTheme/start/jquery.ui.theme.css"/>
  <link rel="stylesheet" href="http://syndicapp.alwaysdata.net/calandarTheme/start/jquery-ui.css"/>
  <link rel="stylesheet" href="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/source/jquery.fancybox.css" type="text/css" media="screen"/>
  <script type="text/javascript" src="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/source/jquery.fancybox.pack.js"></script>
  <script src='http://syndicapp.alwaysdata.net/fullcalendar/fullcalendar-2.5.0-beta2/lib/jquery14.min.js'></script>
  <script src='http://syndicapp.alwaysdata.net/fullcalendar/fullcalendar-2.5.0-beta2/lib/moment.min.js'></script>
  <script src='http://syndicapp.alwaysdata.net/fullcalendar/fullcalendar-2.5.0-beta2/fullcalendar.js'></script>
<script>


  $(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({
      eventSources: [
        // your event source
        {
          events: [ // put the array in the `events` property
            <c:out value="${jsonEvent}"/>
          ]
        }

        // any other event sources...

      ]

    });

  });

</script>