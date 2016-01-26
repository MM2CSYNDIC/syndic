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
<style>

    #id1 {
        border: none;
        padding-bottom: 0px;
        padding-top: 0px;
    }
</style>
        
        <title><tiles:insertAttribute name="title" ignore="true" /></title>
    </head>
    <body onload="change_class()">

    <div id="page" style="height:1300px">
     <!--div class="table-responsive"--> 
	    <table class="table borderless" border="0.0"  align="center" id="id1">
	     <tbody id="id1">
            <tr id="id1" style="height:1300px">
                <td height="1%" width="100%" colspan="2" id="id1">
                    <tiles:insertAttribute name="header" />
                </td>
            </tr>
            <tr id="id1">
               <sec:authorize access="hasRole('ROLE_USER')">
                <td width="9%" height="100%" id="id1">
                    <tiles:insertAttribute name="menu" />
                </td>
                <td width="100%" height="100%" align="center" id="id1">

                    <tiles:insertAttribute name="body" />
                </td>
               </sec:authorize>
            </tr>
            <tr id="id1">
                <td height="1%" width="100%" colspan="2" id="id1">
                    <tiles:insertAttribute name="footer" />
                </td>
            </tr>
         </tbody>
        </table>
        <a href="javascript:;" class="menu_btn"></a>

    </div>
    <!--/div-->

    </body>
</html>

