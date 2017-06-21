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
        <title>SelEauTech</title>
    </head> 

    <body>
        <jsp:include page="Entete.jsp"/>
        <h1 id="border">Pompes</h1>
        <br>
        <div class="row" id="border" >
            <c:forEach var="produit" items="${pump}" >
                <div class="col-sm-4" id="borderDiv">
                    <br> 
                    <table>
                        <tr>
                            <th class="centerText"><a href="Servlet_Detail_Pompe?id=${produit.id}">${produit.nom} ${produit.force}</a></th>
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
                                <a href ="Servlet_Detail_Pompe?id=${produit.id}">
                                    <button type="button" class="btn btn-primary btn-md">Voir Détail</button>
                                </a></th>
                        </tr> 
                    </table>
                    <br>
                </div>
                <th>

                </th>
            </c:forEach>
        </div>
    </body>
</html>
