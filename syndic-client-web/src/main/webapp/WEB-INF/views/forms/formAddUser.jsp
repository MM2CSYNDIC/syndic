  <form:errors path="*" cssClass="errorblock" element="div"/>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <form:select class="form-control" path="typeUser" id="UserType" >
        <option selected><spring:message code="user.typeAddress"/></option>
        <option value="habitant">Habitant</option>
        <option value="copro">Copropriétaire</option>
        <option value="gardien">Gardien</option>
      </form:select>
      <form:errors path="typeUser" cssClass="error"/>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="user.Name" var="userName" />
      <form:input type="text" class="form-control" path="userName" id="userName" placeholder="${userName}"/>
      <form:errors path="userName" cssClass="error"/>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="user.Password" var="userPwd" />
      <form:input type="password" class="form-control" path="passWord" id="passWord" placeholder="${userPwd}"/>
      <form:errors path="passWord" cssClass="error"/>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="user.Confirmation" var="userConfirmation" />
      <form:input type="password" class="form-control" path="confirmation" id="confirmation" placeholder="${userConfirmation}" />
      <form:errors path="confirmation" cssClass="error"/>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="user.firstName" var="userfirstName" />
      <form:input type="text" class="form-control" path="firstName" id="UserFirstName" placeholder="${userfirstName}"/>
      <form:errors path="firstName" cssClass="error"/>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="user.lastName" var="userlastName" />
      <form:input type="text" class="form-control" path="lastName" id="UserLastName" placeholder="${userlastName}"/>
      <form:errors path="lastName" cssClass="error"/>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="user.phone" var="userPhone" />
      <form:input type="text" class="form-control" path="phone" id="UserPhone" placeholder="${userPhone}"/>
      <form:errors path="phone" cssClass="error"/>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="user.mobile" var="userMobile" />
      <form:input type="text" class="form-control" path="mobile" id="UserMobile" placeholder="${userMobile}"/>
      <form:errors path="mobile" cssClass="error"/>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <spring:message code="user.email" var="userEmail" />
      <form:input type="text" class="form-control" path="email" id="UserEmail" placeholder="${userEmail}"/>
      <form:errors path="email" cssClass="error"/>
    </div>
  </div>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      Adresse
      <form:input type="text" class="form-control" path="email" id="UserAddress" placeholder="${userAddress}"/>
      <form:errors path="address" cssClass="error"/>
    </div>
  </div>
  <%--<div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      Code postal
      <form:input type="text" class="form-control" path="zipcode" id="UserZipcode" placeholder="${userzipcode}"/>
      <form:errors path="zipcode" cssClass="error"/>
    </div>
  </div>--%>
  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      Ville
      <form:input type="text" class="form-control" path="city" id="UserCity" placeholder="${usercity}"/>
      <form:errors path="city" cssClass="error"/>
    </div>
  </div>

  <div class="form-group row">
    <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
      <button type="submit" class="btn btn-secondary"><spring:message code="button.submit"/></button>
    </div>
  </div>
