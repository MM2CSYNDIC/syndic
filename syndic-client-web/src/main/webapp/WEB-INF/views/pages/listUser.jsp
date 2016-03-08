
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
</head>

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
<body>

<div class="">
  <div class="page-title">
    <div class="title_left">
      <h3>Liste utilisateurs</h3>
    </div>

    <div class="title_right">
      <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for...">
                  <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
        </div>
      </div>
    </div>
  </div>
  <div class="clearfix"></div>

  <div class="row">
    <div class="col-md-12">
      <div class="x_panel">
        <div class="x_content">
          <c:if test="${listuser != null}">

            <c:forEach var="entry" items="${listuser}">
              <c:if test="${entry != null}">
                <div class="col-md-4 col-sm-4 col-xs-12 animated fadeInDown">
                  <div class="well profile_view">
                    <div class="col-sm-12">
                      <h4 class="brief"><i>Contact</i></h4>
                      <div class="left col-xs-7">
                        <h2>${entry.getFirstName()} ${entry.getLastName()}</h2>
                        <ul class="list-unstyled">
                          <li><i class="fa fa-phone"></i> Email:  ${entry.getEmail()}</li>
                          <li><i class="fa fa-phone"></i> Numero: ${entry.getMobile()} </li>

                        </ul>
                      </div>
                      <div class="right col-xs-5 text-center">
                        <img src="/syndic/resources/images/user.png" alt="" class="img-circle img-responsive">
                      </div>
                    </div>
                    <div class="col-xs-12 bottom text-center">
                      <div class="col-xs-12 col-sm-6 emphasis">
                        <p class="ratings">
                          <a>4.0</a>
                          <a href="#"><span class="fa fa-star"></span></a>
                          <a href="#"><span class="fa fa-star"></span></a>
                          <a href="#"><span class="fa fa-star"></span></a>
                          <a href="#"><span class="fa fa-star"></span></a>
                          <a href="#"><span class="fa fa-star-o"></span></a>
                        </p>
                      </div>
                      <div class="col-xs-12 col-sm-6 emphasis">
                        <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                        </i> <i class="fa fa-comments-o"></i> </button>
                        <button type="button" class="btn btn-primary btn-xs"> <i class="fa fa-user">
                        </i> Edit </button>
                      </div>
                    </div>
                  </div>
                </div>

              </c:if>
            </c:forEach>
          </c:if>
          </div>
      </div>
    </div>
  </div></div></body></html>

