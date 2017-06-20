<%-- 
    Document   : listerPompe
    Created on : 2017-06-19, 16:13:33
    Author     : 1695778
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sel Eau Tech</title>
    </head>
    <body>
        <jsp:include page="Entete.jsp"/>
        <table>
            <c:forEach var="produit" items="${pump}" >
               
                <th>
                    <img src="${produit.image}" alt=""/>
                    <br>
                    <a href="Servlet_Detail_Pompe?id=${produit.id}">${produit.nom} ${produit.force}</a>
                    <br>
                    ${produit.prix}    
                </th>
            </c:forEach>
        </table>
    </body>
</html>
