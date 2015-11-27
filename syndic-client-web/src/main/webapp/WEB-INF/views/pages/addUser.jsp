<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

</style>
<title>Lyes</title>
</head>
<body>
 <h3>Page Nante sur Mér</h3>
 <form:form method="POST" commandName="userCommand" action="adduser.ldz">
 <form:errors path="*" cssClass="errorblock" element="div"/>
 <table bgcolor="Silver">
  <tr>
   <td>Email/UserName : </td>
   <td><form:input path="userName"/></td>
   <td><form:errors path="userName" cssClass="error"/></td>
   </tr>
   <tr>
   <td>Password :</td>
   <td><form:password path="passWord"/></td>
   <td><form:errors path="passWord" cssClass="error"/></td>
   </tr>
   <tr>
   <td colspan="3"><input type="submit" value="Add"/></td>
   </tr>
 </table>
 </form:form>

</body>
</html>