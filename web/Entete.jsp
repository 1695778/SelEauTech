<%-- 
    Document   : Entete
    Created on : 2017-06-17, 08:59:54
    Author     : Sebas
--%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="MiseEnPage.css" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${value}" scope="session"/>
<fmt:setBundle basename="Internationalisation"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SelEauTech</title>
    </head>

    <body>
        <div id="logo">
            <center> 
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active"> 

                            <img src="Images/logo.png" alt="LogoSelEauTech" style="width:30%;">
                            <div class="carousel-caption">
                                <h3><fmt:message key="bienvenue"/></h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="Images/Carousel1.png" alt="SystemeAuSelSaniClear" style="width:30%;">
                            <div class="carousel-caption">
                                <h3><fmt:message key="sanitation"/></h3>

                            </div>
                        </div>

                        <div class="item">
                            <img src="Images/Carousel2.png" alt="PompeHayward" style="width:30%;">
                            <div class="carousel-caption">
                                <h3><fmt:message key="pompe"/></h3>

                            </div>
                        </div>

                        <div class="item">

                            <img src="Images/Carousel3.gif" alt="ThermoPompe Hayward" style="width:30%;">
                            <div class="carousel-caption">
                                <h3><fmt:message key="thermo"/></h3>
                            </div>
                        </div>

                    </div>
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span></a>

                </div>

            </center> 

        </div>


        <ul>
            <li><a href="index.jsp"><img src="Images/acceuil.png" align=="middle"/></a></li>
            <li><a href="RechDonnees"><fmt:message key="produit"/></a></li>
            <li><a href="Servlet_Sanitation"><fmt:message key="sanitation"/></a></li>
            <li><a href="Servlet_Pompe"><fmt:message key="pompe"/></a></li>
            <li><a href="Servlet_Thermo"><fmt:message key="thermo"/></a></li>
            <li style="float:right"><a href="">Panier</a></li>
        </ul>
        <br>


    </body>
</html>
