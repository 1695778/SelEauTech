<%-- 
    Document   : afficherDetails
    Created on : 2010-02-27, 23:29:50
    Author     : Toshiba
--%>
<link rel="stylesheet" type="text/css" href="MiseEnPage.css" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SelEauTech</title>
    </head>
    <body>
        <jsp:include page="Entete.jsp"/>
        <div id="border">

            <p class="flotte">
            <table >
                <col width="260">
                <tr>
                    <th>
                        <img src="${pompe.image}"/>
                    </th>
                </tr>
                <tr>
                    <th class="tableCenter">
                        <form action="Servlet_Panier" method="POST">
                            <input type="hidden" name="action" value="ADDPOMPE">
                            <input type="hidden" name= "id" value="${pompe.id}">
                            <button type="submit" onclick="submit">Ajouter au panier</button>
                        </form>
                    </th>
                </tr> 
            </table>
        </p>
<h2>${pompe.nom}</h2>
        <p>
        <table id="tableDET">
            <col width="130">
            <col width="180">
            <tr>
                <th>PIÈCES #</th>
                <td>${pompe.id}</td>
            </tr>  
            <tr>
                <th>NOM</th>
                <td>${pompe.nom}</td>
            </tr>
            <tr>
                <th>FORCE</th>
                <td>${pompe.force}</td>
            </tr>
            <tr>
                <th>MARQUE</th>
                <td>${pompe.marque}</td>
            </tr>
            <tr>
                <th> MODÈLE #</th>
                <td>${pompe.model}</td>
            </tr>
            <tr>
                <th>TYPE</th>
                <td>${pompe.type}</td>
            </tr>
            <tr>
                <th>PRIX</th>
                <td>${pompe.prix}$</td>
            </tr>
        </table>
    </p>
    <br>
    <br>

    
    <hr/>
    <br>
    <h4>DESCRIPTION</h4>
    <br>
    <p>${pompe.description}</p>
    <br>
</div>
</body>
</html>
