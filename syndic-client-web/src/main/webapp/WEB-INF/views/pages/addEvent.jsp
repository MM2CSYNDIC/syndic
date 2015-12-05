<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<style>
.error {
	color: #ff0000;
}
.errorblock{
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding:8px;
	margin:16px;
}
.input:focus  { width: 350px; }

</style>
</head>
<body>

<div class="container">

 <h3>Add Event Page</h3> 
 
 <form:form method="POST" commandName="eventCommand" action="addevent.ldz">
  <form:errors path="*" cssClass="errorblock" element="div"/>
  <div class="form-group row">
    <div class="col-xs-6">
     <form:input type="text" class="form-control" path="eventName" id="eventName" placeholder="Event Name"/>
     <form:errors path="eventName" cssClass="error"/>
    </div>
  </div>

  <div class="form-group row">
    <div class="col-xs-6">
     <form:input type="text" class="form-control" path="typeEvent" id="typeEvent" placeholder="Type Event"/>
     <form:errors path="typeEvent" cssClass="error"/>
    </div>
  </div>
    
  <div class="form-group row">
    <div class="col-xs-6">
     <form:input type="text" class="form-control" path="dateEvent" id="dateEvent" placeholder="Date" />
     <form:errors path="dateEvent" cssClass="error"/>
    </div>      
  </div>
  
  <div class="form-group row">
    <div class="col-xs-8">
      <form:input type="text" class="form-control" path="descEvent" id="descEvent" placeholder="Description"/>
    <form:errors path="descEvent" cssClass="error"/>
    </div>      
  </div>
  
  <div class="form-group row">
    <div class="col-xs-12">
        <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
 </form:form>

</div>

</body>
</html>