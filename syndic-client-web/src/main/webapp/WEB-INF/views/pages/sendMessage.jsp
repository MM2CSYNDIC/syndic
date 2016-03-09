
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
      <div class="x_panel">
  <div class="row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <h3><fmt:message key="message.H3" /></h3>
    </div>
  </div>

<%--
  <form:form id="sendMessageForm" commandName="messageCommand" action="/syndic/message/sendMessageToDest.ldz" style="margin : 0 auto; width : 630px">
    <form:errors path="*" cssClass="errorblock" element="div" />

    <div class="form-group row">
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
            <spring:message code="message.Dest" var="userNameDestinataire" />
            <c:if test="${listusers != null}">
              <c:forEach var="entry" items="${listusers}">
              <c:if test="${entry != null}">
                <form:checkbox  class="form-control userNameDestinataire" path="userNameDestinataire" value="${entry.getUserName()}"/>
                ${entry.getUserName()}
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
                <button type="submit" class="btn btn-default"><spring:message code="button.submit"/></button>
              </div>
            </div>
       </form:form>
--%>

<form:form id="sendMessageForm" commandName="messageCommand" action="/syndic/message/sendMessageToDest.ldz" style="margin : 0 auto; ">
  <form:errors path="*" cssClass="errorblock" element="div" />


  <div class="x_content">
          <div class="row">

            <div class="col-sm-3 mail_list_column">

            <c:if test="${listmessage != null}">

            <c:forEach var="entry" items="${listmessage}">
              <c:if test="${entry != null}">
                      <div class="mail_list">
                        <div class="left">
                          <i class="fa fa-circle"></i> <i class="fa fa-edit"></i>
                        </div>
                        <div class="right">
                          <h3>${entry.getUserNameDestinataire()}<small>3.00 PM</small></h3>
                          <p>${entry.getObject()}</p>
                        </div>
                      </div>
            </c:if>
            </c:forEach>
            </c:if>
            </div>
            <!-- /MAIL LIST -->

            <!-- CONTENT MAIL -->
            <div class="col-sm-9 mail_view">
              <div class="inbox-body">
                <div class="mail_heading row">

                  <div class="col-md-12">
                    <h4> Nouveau message</h4>
                  </div>

                <br>
                  <div class="sender-info">
                    <div class="row">
                      <div class="col-md-12">
                  <spring:message code="message.Object" var="object" />
                  <form:input type="text" class="form-control" path="object"
                              id="object" placeholder="${object}" />
                  <form:errors path="object" cssClass="error" />
                </div>
                    </div></div>
                <br>
                <div class="sender-info">
                  <div class="row">
                    <div class="col-md-12">
                      <spring:message code="message.userNameDestinataire" var="userNameDestinataire" />
                      <form:input type="text" class="form-control" path="userNameDestinataire"
                                  id="userNameDestinataire" placeholder="${userNameDestinataire}" />
                      <form:errors path="userNameDestinataire" cssClass="error" />
                    </div>
                  </div>
                </div>
                <br>
                <div class="view-mail">
                    <spring:message code="message.Content" var="content" />
                    <form:textarea  class="form-control" path="content"
                                    id="content" placeholder="${content}" />
                    <form:errors path="content" cssClass="error" />
                </div>

                <div class="compose-btn pull-left">
                    <button type="submit" class="btn btn-sm btn-primary"><spring:message code="button.submit"/></button>
                </div>
              </div>
              </form:form>
            </div></div>



  </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
      </div>
      <!-- /CONTENT MAIL -->
    </div>
</div>

</body>
</html>

<script>

  /*
  jQuery(document).ready(function($) {
    $("#sendMessageButton").click(sendMessage())
  });


  $(function() {

    var data = {};
    data["userNameDestinataire"]= $(".userNameDestinataire:checked").val();
    data["object"]    = $("#object").val();
    data["content"]= $("#content").val();

    var i = $('[name^="pp_new_"]').size() + 1;
    $('#sendMessageButton').live('click', function() {
      i++;
      $.get("/syndic/message/sendMessageToDest.ldz", { fieldId: i},
              function(data){
                $("#submitRow").before(data);
              });

      return false;
    });
  });

function sendMessage()
{
  console.log("Hello");



  $.ajax({
    type : "POST",
    contentType : "application/json",
    url : "http://localhost:8080/syndic/message/sendMessageToDest.ldz",
    dataType : 'text',
    data: JSON.stringify(data),
    success : function(data) {
      window.location.href(data);
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
}*/
</script>