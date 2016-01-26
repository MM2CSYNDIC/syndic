
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
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



  <!-- Add mousewheel plugin (this is optional) -->
  <script type="text/javascript" src="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/lib/jquery.mousewheel-3.0.6.pack.js"></script>

  <!-- Add fancyBox -->
  <link rel="stylesheet" href="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
  <script type="text/javascript" src="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/source/jquery.fancybox.pack.js?v=2.1.5"></script>

  <!-- Optionally add helpers - button, thumbnail and/or media -->
  <link rel="stylesheet" href="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
  <script type="text/javascript" src="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
  <script type="text/javascript" src="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

  <link rel="stylesheet" href="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
  <script type="text/javascript" src="http://syndicapp.alwaysdata.net/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

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
<html>
<head>
  <title></title>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <h3><fmt:message key="listevent.H3" /></h3>
    </div>
  </div>
  <div id='calendar'></div>

  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <table class="table1">
        <tr>
          <th>Nom</th><th>Surface</th><th>Modifier</th><th>Supprimer</th>
        </tr>
        <div id="dialog" title="Basic dialog">
          <p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
        </div>


        <c:if test="${listcondo != null}">
          <c:forEach var="entry" items="${listcondo}">
            <c:if test="${entry != null}">
              <tr>
                <td>${entry.getName()}</td>
                <td>${entry.getArea()}</td>
                <td><a href="#" ><img width= "40" height="40" src="<c:url value="http://syndicapp.alwaysdata.net/images/crayon<.png" />"></a></td>
                <td><a href="#" ><img width="40" height="40" src="http://syndicapp.alwaysdata.net/images/erreur.png"/></a></td>
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
