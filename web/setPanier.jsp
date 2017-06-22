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
        <title>SelEauTech</title>
    </head>
    <body>
        <jsp:include page="Entete.jsp"/>

        <div class="container">
            <h1>Mon panier</h1>        
            <c:if test="${listeAchat == null}">
                <h1> est vide.  </h1>
            </c:if><br>
            <c:if test="${listeAchat != null}">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Nom:</th>
                            <th>Marque:</th>
                            <th>Modèle:</th>
                            <th>Prix:</th>
                            <th>Quantité:</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listeAchat}" var="pompe" varStatus="index">
                            <tr>
                                <td>${pompe.nom}</td>
                                <td>${pompe.marque}</td>
                                <td>${pompe.model}</td>
                                <td>${pompe.prix}</td>
                                <td>${pompe.qte}</td>
                                <td>
                                    <form name="supprimerForm" action="Servlet_Panier" method="POST">
                                        <input type="submit" value="Supprimer">
                                        <input type="hidden" name= "suppIndex" value=${index.index}>
                                        <input type="hidden" name="action" value="SUPPRIMER">
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>

                    </tbody>
                </table>
                <p>

                <form name="commanderForm" action="Servlet_Panier" method="POST"> 
                    <input type="hidden" name="action" value="COMMANDER">
                    <input type="submit" name="COMMANDER" value="Commander">
                </form>
            </div>
        </c:if >
</html>
