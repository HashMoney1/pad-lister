<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ironicsushi
  Date: 10/26/17
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Ads" />
    </jsp:include>
    <link rel="stylesheet" href="../stylesheets/allAds.css">
    <link href="../stylesheets/basic.css" rel="stylesheet">
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <h1>Complete Ad Listing</h1>
    <c:forEach var="Ad" items="${allAds}">
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">${Ad.title}</h4>
                    <p class="card-text">${Ad.shortDescription}</p>
                    <a href="/ad?id=${Ad.id}" class="btn btn-primary">More Details</a>
                    <div class="card-footer">
                        <p class="card-subtitle">${Ad.timeCreated}</p>
                        <p class="card-subtitle">Added ${Ad.getTimeDifferenceString()}</p>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
