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
                        <img src="${thermo.image}"/>
                    </th>
                </tr>
                <tr>
                    <th class="tableCenter">
                        <form action="Servlet_Panier" method="POST">
                            <input type="hidden" name="action" value="ADDTHERMO">
                            <input type="hidden" name= "id" value="${pompe.id}">
                            <button type="submit" onclick="submit">Ajouter au panier</button>
                        </form>
                    </th>
                </tr> 
            </table>
        </p>
<h2>${thermo.nom}</h2>
        <p>
        <table id="tableDET">
            <col width="130">
            <col width="180">
            <tr>
                <th>PIÈCES #</th>
                <td>${thermo.id}</td>
            </tr>  
            <tr>
                <th>NOM</th>
                <td>${thermo.nom}</td>
            </tr>
            <tr>
                <th>FORCE</th>
                <td>${thermo.force}</td>
            </tr>
            <tr>
                <th>MARQUE</th>
                <td>${thermo.marque}</td>
            </tr>
            <tr>
                <th> MODÈLE #</th>
                <td>${thermo.model}</td>
            </tr>
            <tr>
                <th>TYPE</th>
                <td>${thermo.type}</td>
            </tr>
            <tr>
                <th>PRIX</th>
                <td>${thermo.prix}$</td>
            </tr>
        </table>
    </p>
    <br>
    <br>

    
    <hr/>
    <br>
    <h4>DESCRIPTION</h4>
    <br>
    <p>${thermo.description}</p>
    <br>
</div>
    </body>
</html>
