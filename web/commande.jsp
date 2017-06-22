<html>
    <head>
        <link rel="stylesheet" type="text/css" href="MiseEnPage.css" />
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="MiseEnPage.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SelEauTech</title>
</head>

<body>

    <jsp:include page="Entete.jsp"/>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><strong>Sommaire de commande</strong></h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-condensed">
                                <thead>
                                    <tr>
                                        <td><strong>Nom</strong></td>
                                        <td class="text-center"><strong>Marque</strong></td>
                                        <td class="text-center"><strong>Modèle</strong></td>
                                        <td class="text-right"><strong>Prix</strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listeAchat}" var="pompe" varStatus="index">
                                        <tr>
                                            <td>${pompe.nom}</td>
                                            <td class="text-center">${pompe.marque}</td>
                                            <td class="text-center">${pompe.model}</td>
                                            <td class="text-right">${pompe.prix}</td>
                                        </tr>
                                    </c:forEach>
                                    <tr>
                                        <td class="thick-line"></td>
                                        <td class="thick-line"></td>
                                        <td class="thick-line text-right"><strong>Sous-total</strong></td>
                                        <td class="thick-line text-right">${soustotal}</td>
                                    </tr>
                                    <tr>
                                        <td class="no-line"></td>
                                        <td class="no-line"></td>
                                        <td class="no-line text-right"><strong>Taxes</strong></td>
                                        <td class="no-line text-right">${montantTaxe}</td>
                                    </tr>
                                    <tr>
                                        <td class="no-line"></td>
                                        <td class="no-line"></td>
                                        <td class="no-line text-right"><strong>Total</strong></td>
                                        <td class="no-line text-right">${montantTotal}</td>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                        <a href="test.jsp">Format PDF</a>
                    </div>
                </div>
                <form name="form" action="Servlet_Panier" method="post"> 
                    <input type="hidden" name="action" value="CONFIRMER">
                    <input type="submit" name="CONFIRMER" value="Confirmer">
                </form>  
            </div>
        </div>
    </div>
</body>
</html>