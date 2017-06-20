<%-- 
    Document   : Entete
    Created on : 2017-06-17, 08:59:54
    Author     : Sebas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
        <div class="logo"><</div>
        <img src="Images/sel-eau-tech.jpg" alt=""/>
       <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav">
                <li><a href="index.jsp"><fmt:message key="acceuil"/></a></li>
                <li><a href="RechDonnees"><fmt:message key="produit"/></a></li>
                <li><a href="Servlet_Sanitation"><fmt:message key="sanitation"/></a></li>
                <li><a href="Servlet_Pompe"><fmt:message key="pompe"/></a></li>
                <li><a href="Servlet_Thermo"><fmt:message key="thermo"/></a></li>
            </div>
        </nav>
    </body>
</html>
