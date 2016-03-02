
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


<style>
    .error {
      color: #ff0000;
    }

    .errorblock {
      color: #000;
      background-color: #ffEEEE;
      border: 3px solid #ff0000;
      padding: 8px;
      margin: 16px;
    }

    .input:focus {
      width: 350px;
    }
  </style>

  <link rel="stylesheet"
        href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

</head>
<body>

<div class="container">

  <div class="row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <h3><fmt:message key="message.H3" /></h3>
    </div>
  </div>

  <form:form id="sendMessageForm" commandName="messageCommand">
    <form:errors path="*" cssClass="errorblock" element="div" />

    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <spring:message code="message.Dest" var="userNameDestinataire" />
        <c:if test="${listusers != null}">
          <c:forEach var="entry" items="${listusers}">
          <c:if test="${entry != null}">
            <form:checkbox  class="form-control userNameDestinataire" path="userNameDestinataire" value="${entry.getEmail()}"/>
            ${entry.getEmail()}
            <br>
          </c:if>
          </c:forEach>
        </c:if>
        <form:errors path="userNameDestinataire" cssClass="error" />
      </div>
    </div>
    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <spring:message code="message.Object" var="object" />
        <form:input type="text" class="form-control" path="object"
                    id="object" placeholder="${object}" />
        <form:errors path="object" cssClass="error" />
      </div>
    </div>
    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <spring:message code="message.Content" var="content" />
        <form:textarea  class="form-control" path="content"
                    id="content" placeholder="${content}" />
        <form:errors path="content" cssClass="error" />
      </div>
    </div>


    <!-- End specific input -->

    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
        <button type="submit" id="sendMessageButton" class="btn btn-default"><spring:message code="button.submit"/></button>
      </div>
    </div>
  </form:form>

</div>

</body>
</html>

<script>
  jQuery(document).ready(function($) {
    $("#sendMessageButton").click(sendMessage())
  });

function sendMessage()
{


  var data = {};
  data["userNameDestinataire"]= $(".userNameDestinataire:checked").val();
  data["object"]= $("#object").val();
  data["content"]= $("#content").val();

  $.ajax({
    type : "POST",
    contentType : "application/json",
    url : "http://localhost:8080/syndic/message/sendMessageToDest.ldz",
    dataType : 'text',
    data: JSON.stringify(data),
    success : function(data) {
      console.log("SUCCESS: ", data);
      console.log(data);
    },
    error : function(e) {
      console.log("ERROR:*************** ", e);
      console.log(data);
    },
    done : function(e) {
      console.log("DONEgr*********************");
    }
  })
}
</script>