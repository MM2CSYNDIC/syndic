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
   <h2>VOTE DES AG</h2>

  <div class="form-group row">
  <div class="form-inline">
   <div class="form-group">
    <input type="textarea" class="form-control" id="ouai" placeholder="Vote pour budget travaux Vote pour budget travauxVote pour budget travauxVote pour budget travauxVote pour budget travaux" disabled>
   </div>
   <div class="form-group">
    <SELECT name="reponse" size="1">
     <OPTION>Pour
     <OPTION>Contre
     <OPTION>Abstention
    </SELECT>
   </div>
   </div>
  </div>

  <div class="form-group row">
  <div class="form-inline">
   <div class="form-group">
    <input type="textarea" class="form-control" id="non2" placeholder="Vote pour budget travaux" disabled>
   </div>
   <div class="form-group">

    <SELECT name="reponse" size="1">
     <OPTION>Pour
     <OPTION>Contre
     <OPTION>Abstention
    </SELECT>
   </div>
  </div>
  </div>



   <button type="submit" class="btn btn-primary">Send invitation</button>



<!--  <div class="row">
   <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
      <div class="row">
         <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
         <input type="text" name="firstname" placeholder="Vote pour budget travaux" disabled>
         </div>
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

           <SELECT name="reponse" size="1">
            <OPTION>Pour
            <OPTION>Contre
            <OPTION>Abstention
           </SELECT>
         </div>




        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
         <input type="text" name="firstname" placeholder="Vote pour augmentation des loyers" disabled>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

         <SELECT name="reponse" size="1">
          <OPTION>Pour
          <OPTION>Contre
          <OPTION>Abstention
         </SELECT>
        </div>




         <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
          <input type="text" name="firstname" placeholder="Vote pour le budget" disabled>
         </div>
         <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

          <SELECT name="reponse" size="1">
           <OPTION>Pour
           <OPTION>Contre
           <OPTION>Abstention
          </SELECT>
         </div>



        <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
         <input type="text" name="firstname" placeholder="Vote pour le décision technique" disabled>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">

         <SELECT name="reponse" size="1">
          <OPTION>Pour
          <OPTION>Contre
          <OPTION>Abstention
         </SELECT>
        </div>




    </div>
    </FORM>
   </div>
  </div>
  -->
  </div><!--container-->

 </div><!--body-->

 </body>
 
</html>
