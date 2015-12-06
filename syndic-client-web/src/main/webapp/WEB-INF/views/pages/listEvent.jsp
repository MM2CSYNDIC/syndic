<%@ page import="fr.upond.syndic.repo.model.event.Event" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
</head>

<body>
  <div class="container">
    <div class="form-group row">
      <div class="col-xs-6">
        <table>
          <tr>
            <th>Nom event</th><th>Type event</th><th>Date event</th><th>Description event</th>
          </tr>
          <c:if test="${listevent != null}">
           <c:forEach var="entry" items="${listevent}">
            <c:if test="${entry != null}">
             <tr>
              <td>${entry.getEventName()}</td>
              <td>${entry.getTypeEvent()}</td>
              <td>${entry.getDateEvent()}</td>
              <td>${entry.getDescEvent()}</td>
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