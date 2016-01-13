<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<html>

 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Vote</title>
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

  <link rel="stylesheet"
        href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <!--<link rel="stylesheet" href="/resources/demos/style.css">-->

 </head>
 
 <body>

 <div class="container">
  <div class="row">
   <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
    <h3>Description de l'AG</h3>
    <br>Assemblée Générale Annuelle
    <br> Lieu : Salle des Fêtes de la ville City
    <br> Date/Heure : 13 janvier 2015 à 19h00
    <br>
   </div>
   <br>
  </div>
  <div id='calendar'></div>

  <div class="form-group row">
   <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
    <table class="table1">
     <tr>
      <th>Questions soumises au vote</th><th>votre vote</th>
     </tr>
        <tr>
         <td>Bilan prévisionnel pour la période jan. 2016 - jan. 2017 </td>
         <td>
          <FORM>
           <SELECT name="reponse" size="1">
            <OPTION>Pour
            <OPTION>Contre
            <OPTION>Abstention
           </SELECT>
          </FORM>
         </td>
        </tr>
        <tr>
         <td>Intervention de la société RavBat pour l'installation des BAL
          <br> Devis : 5800 euros HT </td>
         <td>
          <FORM>
           <SELECT name="reponse" size="1">
            <OPTION>Pour
            <OPTION>Contre
            <OPTION>Abstention
           </SELECT>
          </FORM>
         </td>
        </tr>
        <tr>
         <td>Election du nouveau Conseil Syndical :
         <br> M. Bob Sponge
         <br> Mme. Alice Merveille
         </td>
         <td>
          <FORM>
           <SELECT name="reponse" size="1">
            <OPTION>Pour
            <OPTION>Contre
            <OPTION>Abstention
           </SELECT>
          </FORM>
         </td>
        </tr>
    </table>
   </div>
  </div>
 </div>
      <div class="col-xs-6 col-sm-8 col-md-9 col-lg-10">
       <center>
        <button type="submit" class="btn btn-secondary">Soumettre vos votes</button>
       </center>
      </div>
 </div>

 </body>
 
</html>
