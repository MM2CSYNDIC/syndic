<%--
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" 
            integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" 
            crossorigin="anonymous"/>
        <link href="https://getbootstrap.com/examples/sticky-footer/sticky-footer.css" rel="stylesheet">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" 
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" 
            crossorigin="anonymous">
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="author" content="Lyes Kherbiche" />
        <meta name="company" content="UPOND" />
        
        <style type="text/css">
         #id1 {
             border: none;
         }
        </style>
        
        <title><tiles:insertAttribute name="title" ignore="true" /></title>
    </head>
    <body onload="change_class()">
     <!--div class="table-responsive"--> 
	    <table class="table borderless" border="0.0"  align="center" id="id1">
	     <tbody id="id1">
            <tr id="id1">
                <td height="1%" width="100%" colspan="2" id="id1">
                    <tiles:insertAttribute name="header" />
                </td>
            </tr>
            <tr id="id1">
               <!--sec:authorize access="hasRole('ROLE_ADMIN')"-->
                <td width="9%" height="100%" id="id1">
                    <tiles:insertAttribute name="menu" />
                </td>
                <td width="100%" height="100%" align="center" id="id1">
                    <tiles:insertAttribute name="body" />
                </td>
               <!--/sec:authorize-->
            </tr>
            <tr id="id1">
                <td height="1%" width="100%" colspan="2" id="id1">
                    <tiles:insertAttribute name="footer" />
                </td>
            </tr>
         </tbody>
        </table>  
     <!--/div-->
    </body>
</html>
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ include file="/WEB-INF/tiles/template/includes.jsp" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SyndicAPP - admin </title>

    <!-- Bootstrap core CSS -->

    <link href="/syndic/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="/syndic/resources/fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="/syndic/resources/css/animate.min.css" rel="stylesheet">
    <!-- Custom styling plus plugins -->
    <link href="/syndic/resources/css/custom.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/syndic/resources/css/maps/jquery-jvectormap-2.0.3.css" />
    <link href="/syndic/resources/css/icheck/flat/green.css" rel="stylesheet">
    <link href="/syndic/resources/css/floatexamples.css" rel="stylesheet" />

    <script src="/syndic/resources/js/jquery.min.js"></script>

    <!--[if lt IE 9]>
    <script src="/syndic/resources/assets/js/ie8-responsive-file-warning.js"></script>
    <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="nav-md">

<div class="container body">


    <div class="main_container">


        <!-- menu left-->
        <tiles:insertAttribute name="menu" />
        <!-- /menu left-->
        <!-- top navigation -->
        <tiles:insertAttribute name="header" />
        <!-- /top navigation -->


        <!-- page content -->
        <div class="right_col" role="main">

            <!-- body content -->
            <tiles:insertAttribute name="body" />
            <!-- /body content -->
            <!-- footer content -->
            <tiles:insertAttribute name="footer" />

            <!-- /footer content -->

        </div>
        <!-- /page content -->
    </div>


</div>

<div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
</div>

</body>

</html>
<%@include file="/WEB-INF/tiles/template/templateJs.jsp"%>
