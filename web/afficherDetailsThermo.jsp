<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="Entete.jsp"/>
        Numéro de pièces: ${thermo.id}
        <br>
        Pompe pour piscine: ${thermo.type}
        <br>
        ${thermo.nom} ${thermo.force}
        <br>
        ${thermo.marque} - Modèle # ${thermo.model}
        <br>
        ${thermo.description}
        <br>
        <img src="${thermo.image}" alt=""/>

    </body>
</html>
