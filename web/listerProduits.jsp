<%-- 
    Document   : listerHotels
    Created on : 2010-02-27, 21:04:49
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="MiseEnPage.css" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SelEauTech</title>

    </head>
    <body>
        <jsp:include page="Entete.jsp"/>
        <h1 id="border">Produits</h1>
        <br>
        <div class="row" id="border">
            <c:forEach var="produit" items="${produits}" >
                <div class="col-sm-4" id="borderDiv">
                    <table>
                        <tr>
                            <th class="centerText"><a href ="${produit.lien}">${produit.nom}</a></th>
                        </tr>
                        <tr><th><br></th></tr>
                        <tr>
                            <th class="centerText"><img src="${produit.image}" alt=""/></th>
                        </tr>
                        <tr>
                            <th>
                                <br>
                            </th>
                        </tr>
                        <tr>
                            <th class="centerText"> 
                                <a href ="${produit.lien}">
                                <button type="button" class="btn btn-primary btn-md" onclick="${produit.lien}">Voir Tous</button>
                            </a></th>
                        </tr> 
                    </table>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
