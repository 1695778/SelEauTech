<%-- 
    Document   : afficherDetails
    Created on : 2010-02-27, 23:29:50
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Détail du produit</title>
    </head>
    <body>

        <jsp:include page="Entete.jsp"/>
        Numéro de pièces: ${pompe.id}
        <br>
        Pompe pour piscine: ${pompe.type}
        <br>
        ${pompe.nom} ${pompe.force}
        <br>
        ${pompe.marque} - Modèle # ${pompe.model}
        <br>
        ${pompe.description}
        <br>
        <img src="${pompe.image}" alt=""/> <br><br>

        <form action="Servlet_Panier" method="POST">
            <input type="hidden" name="action" value="ADDPOMPE">
            <input type="hidden" name= "id" value="${pompe.id}">
            <button type="submit" onclick="submit">Ajouterau panier</button>
        </form>
    </body>
</html>
