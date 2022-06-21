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
    <link href="../stylesheets/deletedAds.css" rel="stylesheet">
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="profile-header">
    <h1>Deleted Ads</h1>
    <br>
    <a href="/profile" class="btn btn-default btn-return">Return to Profile</a>
    <span> ${sessionScope.id}</span>
</div>
<div class="container">
    <c:forEach var="Ad" items="${deletedAds}">
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">${Ad.title}</h4>
                    <p class="card-text">${Ad.shortDescription}</p>
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
