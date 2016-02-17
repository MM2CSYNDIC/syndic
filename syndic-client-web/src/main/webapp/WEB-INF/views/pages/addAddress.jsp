<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

   <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
     <form:checkbox path="eventCommand.condoId[${number}].id" value="${condoSelected.getId()}"/>${condoSelected.getAddress().getNumAdress()} ${condoSelected.getAddress().getTypeAddress()}
    </div>
   </div>