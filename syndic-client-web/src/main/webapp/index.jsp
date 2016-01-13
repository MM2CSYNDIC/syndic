
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<%@ include file="/WEB-INF/tiles/template/includes.jsp"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="lyes kherbiche">

    <STYLE>
        #bou {
            background-color: #101010;
            border-color: #101010;
        }
        #blanc{
            background-color:#FBFCFA ;
        }
    </STYLE>

    <title>Welcome</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
          crossorigin="anonymous">
    <link href="http://getbootstrap.com/examples/carousel/carousel.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!--link href="css/logo-nav.css" rel="stylesheet"-->

    <link rel="icon" href="https://getbootstrap/favicon.ico">

    <title>Carousel Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="https://getbootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="https://getbootstrap/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="https://getbootstrap/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="https://getbootstrap/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/carousel/carousel.css" rel="stylesheet">
</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Syndic'app</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#contact">Contact</a></li>
                        <li><a href="sign.ldz">Connexion</a></li>
                        <!--li class="dropdown">
                            <!--p class="pull-right" dropdown-toggle><a href="#">Back to top</a></p-->
                            <!--a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Connexion <span class="caret"></span></a>

                            <ul class="dropdown-menu">
                                <li><a href="#">Se Connecter</a></li>
                                <li><a href="#">S'inscrire</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li-->
                    </ul>
                </div>
            </div>
        </nav>

    </div>
</div>
<br><br><br><br>


<!-- Carousel
================================================== -->
<div id="blanc" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div id="blanc" class="carousel-inner" role="listbox">
        <div class="item active">
            <img width="100%" height="100%" class="first-slide"
                 src="http://syndicapp.alwaysdata.net/images/banner.png" alt="First slide">
            <!--div class="container">
                <div class="carousel-caption">
                    <h1>Organisation des assemblées générales</h1>
                    <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                </div>
            </div-->
        </div>
        <div id="blanc" class="item">
            <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Second slide">
            <!--div class="container">
                <div class="carousel-caption">
                    <h1>Création des événements.</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
            </div-->
        </div>
        <div id="blanc" class="item">
            <img class="third-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Third slide">
            <!--div class="container">
                <div class="carousel-caption">
                    <h1>Gestion de copropriétés</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div-->
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img id="bou" class="img-circle"
                 src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Add_user_icon_(blue).svg/895px-Add_user_icon_(blue).svg.png" alt="" width="140" height="140">
            <h2>Add User</h2>
            <p width="240" height="340">Le lien ci-dessous vous permet d'ajouter des utilisateurs (copropriétatire, gardien, locataire)...</p>
            <p><a class="btn btn-default" href="getformadduser.ldz" role="button">Créer un nouvel utilisateur &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img id="bou" class="img-circle" src="https://software.intel.com/sites/all/modules/custom/intel_events/images/icon_add_event.png" alt="" width="140" height="140">
            <h2>Add Event</h2>
            <p width="240" height="340">Le lien ci-dessous vous permet de créer de nouveaux événements (dont les assemblées géérales)...</p>
            <p><a class="btn btn-default" href="getformaddevent.ldz" role="button">Créer un nouvel événement &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4"><!--http://kingportfoliostrategies.ca/wp-content/uploads/2013/06/loginButton.jpg-->
            <img id="bou" class="img-circle" src="http://www.dsmclub.com/repair/images/password-icon.png.gif?1449705600034" alt="" width="140" height="140">
            <h2>Connexion</h2>
            <p width="240" height="340">Vous êtes déjà inscrit ?...cliquer sur le lien ci-dessous pour vous connecter à votre profil...
            </p>
            <p><a class="btn btn-default" href="sign.ldz" role="button">Se connecter &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div id="about" class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Syndic'APP ... <span class="text-muted">l'application qui vous simplifie la vie !</span></h2>
            <p class="lead">
                La nouvelle appplication est destinée aux gestionnaire de copropriétés...
            </p>
        </div>
        <div class="col-md-5">
            <img class="featurette-image img-responsive center-block" src="http://syndicapp.alwaysdata.net/images/logo.png"
                 data-src="holder.js/500x500/auto" alt="">
        </div>
        <p class="pull-right"><a href="#"><img src="http://www.cmbfradio.cu/img/back-to-top.png" width="40" height="40"></a></p>
    </div>
    <hr class="featurette-divider">

    <div id="contact" class="row featurette">

        <div class="col-md-7 col-md-push-5">
            <h2 class="featurette-heading" >Syndic'APP vous intéresse ?... <span class="text-muted">Contactez nous au :</span></h2>
            <p class="lead">
                <a href="mailto:psisiasyndic@googlegroups.com">par mail</a>
            </p>
        </div>

        <div class="col-md-5 col-md-pull-7">
            <img class="featurette-image img-responsive center-block" src="http://www.ce11.fr/wp-content/uploads/2015/08/contact.jpg"
                 data-src="holder.js/500x500/auto" alt="">
        </div>
        <p class="pull-right"><a href="#"><img src="http://www.cmbfradio.cu/img/back-to-top.png" width="40" height="40"></a></p>
    </div>


    <!-- /END THE FEATURETTES -->


    <!-- FOOTER -->

    <footer>
        <%@ include file="/WEB-INF/tiles/template/footer.jsp" %>
    </footer>

</div><!-- /.container -->

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="https://getbootstrap/assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://getbootstrap/dist/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="https://getbootstrap/assets/js/vendor/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="https://getbootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>
