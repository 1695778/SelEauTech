<%-- 
    Document   : listerHotels
    Created on : 2010-02-27, 21:04:49
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sel Eau Tech</title>
        <style>
            table, th {
                border: 1px solid black;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Entete.jsp"/>
        <table> 
            <c:forEach var="produit" items="${produits}" >
                    <th>
                        <img src="${produit.image}" alt=""/>
                        <br>
                        <a href ="${produit.lien}">${produit.nom}</a>
                    </th>
            </c:forEach>
        </table>
    </body>
</html>
