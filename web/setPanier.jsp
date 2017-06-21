<%-- 
    Document   : devTest
    Created on : 2017-06-20, 15:38:57
    Author     : 1695809
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panier</title>
    </head>
    <body>
        <h1>Panier d'achat</h1>
        <br><br>
        <center>
            <table border="0" cellpadding="0" width="100%" bgcolor="#5496d0">
                <tr>
                    <td><b>No. de pièce:</b></td>
                    <td><b>Modele:</b></td>
                    <td><b>Prix</b></td>
                    <td><b>Quantité</b></td>
                    <td></td>
                    <c:forEach items="${listeachat}" var="pompe" varStatus="index">
                    <tr>
                        <td><b>${pompe.id}</td>
                        <td><b>${pompe.model}</td>
                        <td><b>${pompe.prix}</td>
                        <td><b>${pompe.qte}</b></td>
                        <td><b>${monCd.quantity}</b></td>
                        <td>
                        </td>
                    </tr>
                </tr>
                </c:forEach>
</html>
