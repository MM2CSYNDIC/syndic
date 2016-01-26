<form:form method="POST" commandName="eventCommand"
           action="addevent.ldz">
  <form:errors path="*" cssClass="errorblock" element="div" />

  <!-- W add list (select) -->
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <form:select class="form-control" path="typeEvent" id="typeEvent" >
        <option selected><spring:message code="event.Type"/></option>
        <option value="AG"><spring:message code="event.Type.AG"/></option>
        <option value="Intervention"><spring:message code="event.Type.Intervention"/></option>
        <option value="Incident"><spring:message code="event.Type.Incident"/></option>
      </form:select>
      <form:errors path="typeEvent" cssClass="error" />
    </div>
  </div>
  <!-- End W-->

  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.Name" var="eventName" />
      <form:input type="text" class="form-control" path="eventName"
                  id="eventName" placeholder="${eventName}" />
      <form:errors path="eventName" cssClass="error" />
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.Date" var="dateEvent" />
      <form:input type="text" class="form-control" path="dateEvent"
                  id="dateEvent" placeholder="${dateEvent}" />
      <form:errors path="dateEvent" cssClass="error" />
    </div>
  </div>

  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.Descr" var="descrEvent" />
      <form:input type="text" class="form-control" path="descEvent"
                  id="descEvent" placeholder="${descrEvent}" />
      <form:errors path="descEvent" cssClass="error" />
    </div>
  </div>

  <!-- The specific input -->
  <div id="eventform" class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.sp1" var="Sp1Event" />
      <form:input type="text" class="form-control" path="descEvent" id="descEvent" placeholder="${Sp1Event}" />
      <form:errors path="descEvent" cssClass="error" />
    </div>
  </div>
  <div id="eventform2" class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.sp2" var="Sp2Event" />
      <form:input type="text" class="form-control" path="descEvent" id="descEvent" placeholder="${Sp2Event}" />
      <form:errors path="descEvent" cssClass="error" />
    </div>
  </div>
  <div id="AGform" class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.sp3" var="Sp3Event" />
      <form:input type="text" class="form-control" path="descEvent" id="descEvent" placeholder="${Sp3Event}" />
      <form:errors path="descEvent" cssClass="error" />
    </div>
  </div>
  <!-- End specific input -->

  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <button type="submit" class="btn btn-default"><spring:message code="button.submit"/></button>
    </div>
  </div>
</form:form><form:form method="POST" commandName="eventCommand"
                       action="addevent.ldz">
  <form:errors path="*" cssClass="errorblock" element="div" />

  <!-- W add list (select) -->
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <form:select class="form-control" path="typeEvent" id="typeEvent" >
        <option selected><spring:message code="event.Type"/></option>
        <option value="AG"><spring:message code="event.Type.AG"/></option>
        <option value="Intervention"><spring:message code="event.Type.Intervention"/></option>
        <option value="Incident"><spring:message code="event.Type.Incident"/></option>
      </form:select>
      <form:errors path="typeEvent" cssClass="error" />
    </div>
  </div>
  <!-- End W-->

  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.Name" var="eventName" />
      <form:input type="text" class="form-control" path="eventName"
                  id="eventName" placeholder="${eventName}" />
      <form:errors path="eventName" cssClass="error" />
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.Date" var="dateEvent" />
      <form:input type="text" class="form-control" path="dateEvent"
                  id="dateEvent" placeholder="${dateEvent}" />
      <form:errors path="dateEvent" cssClass="error" />
    </div>
  </div>

  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.Descr" var="descrEvent" />
      <form:input type="text" class="form-control" path="descEvent"
                  id="descEvent" placeholder="${descrEvent}" />
      <form:errors path="descEvent" cssClass="error" />
    </div>
  </div>

  <!-- The specific input -->
  <div id="eventform" class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.sp1" var="Sp1Event" />
      <form:input type="text" class="form-control" path="descEvent" id="descEvent" placeholder="${Sp1Event}" />
      <form:errors path="descEvent" cssClass="error" />
    </div>
  </div>
  <div id="eventform2" class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.sp2" var="Sp2Event" />
      <form:input type="text" class="form-control" path="descEvent" id="descEvent" placeholder="${Sp2Event}" />
      <form:errors path="descEvent" cssClass="error" />
    </div>
  </div>
  <div id="AGform" class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="event.sp3" var="Sp3Event" />
      <form:input type="text" class="form-control" path="descEvent" id="descEvent" placeholder="${Sp3Event}" />
      <form:errors path="descEvent" cssClass="error" />
    </div>
  </div>
  <!-- End specific input -->

  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <button type="submit" class="btn btn-default"><spring:message code="button.submit"/></button>
    </div>
  </div>
</form:form>


<script>
  jQuery(document).ready(function(){

    $('#AGform').hide();
    $('#eventform').hide();
    $('#eventform2').hide();

    $('#typeEvent').change(function()
    {
      if (document.getElementById("typeEvent").value == 'AG') {

        $('#AGform').toggle(400);
        $('#eventform').hide();
        $('#eventform2').hide();
      }
      else if (document.getElementById("typeEvent").value == 'Intervention') {

        $('#eventform').toggle(400);
        $('#eventform2').toggle(400);
        $('#AGform').hide();
      }
      else
      {
        $('#AGform').hide();
        $('#eventform').hide();
        $('#eventform2').hide();
      }
    });
  });

</script>