
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <%@include file="WEB-INF/views/home/head.jsp"%>
    </head>

    <body>
        <div class="navbar-wrapper">
            <%@include file="WEB-INF/views/home/navbar-wrapper.jsp"%>
        </div>

        <br> <br> <br> <br>

        <!--div id="carousel">
            <--%@include file="WEB-INF/views/home/carousel.jsp"%>
        </div-->

        <div class="container marketing">

            <br><br><br><br>
            <button type="button" class="btn btn-primary btn-lg btn-block"><a style="color:#fff" href="sign.ldz">Connectez-vous à votre espace</a></button>

            <button type="button" class="btn btn-info btn-lg btn-block"><a style="color:#fff" href="getfromadduser.ldz">Créer un compte</a></button>

        <%--         <div id="information-below-carousel"!>
                <%@include file="WEB-INF/views/home/information-below-carousel.jsp"%>
            </div>

            <div id="featurette">
                <%@include file="WEB-INF/views/home/featurette.jsp"%>
            </div>

            <footer>
                <%@ include file="/WEB-INF/tiles/template/footer.jsp" %>
            </footer>--%>

        </div>

</body>

            <%@include file="WEB-INF/views/home/js-home.jsp"%>
</html>
