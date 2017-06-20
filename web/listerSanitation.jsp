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
            <c:forEach var="produit" items="${sanitation}" >

                <th>
                    <img src="${produit.image}" alt=""/>
                    <br>
                    <a href="Servlet_Detail_Sanitation?id=${produit.id}">${produit.nom}</a>
                    <br>
                    ${produit.prix}    
                </th>
            </c:forEach>
        </table>
    </body>
</html>
