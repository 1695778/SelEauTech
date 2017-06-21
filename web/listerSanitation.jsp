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
        <h1 id="border">Sanitation</h1>
        <br>
        <div class="row" id="border" >
            <c:forEach var="produit" items="${sanitation}" >
                <div class="col-sm-4" id="borderDiv">
                    <br> 
                    <table>
                        <tr>
                            <th class="centerText"><a href="Servlet_Detail_Sanitation?id=${produit.id}">${produit.nom}</a></th>
                        </tr>
                        <tr><th></th></tr>
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
                                <a href ="Servlet_Detail_Sanitation?id=${produit.id}">
                                    <button type="button" class="btn btn-primary btn-md">Voir Détail</button>
                                </a></th>
                        </tr>
                    </table>
                    <br>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
