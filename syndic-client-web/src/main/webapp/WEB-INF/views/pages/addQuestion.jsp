<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

 <p>
   <div id = "pp_new_${questionNumber}"  name="pp_new_${questionNumber}" class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
     <form:input type="text" class="form-control" path="eventCommand.questions[${questionNumber}].questionName" name="p_new_' + ${questionNumber} +'" placeholder="Question" />
    </div>
   </div>
 </p>