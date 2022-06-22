<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: brose
  Date: 10/26/17
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Welcome!" />
    </jsp:include>
    <link href="../stylesheets/profile.css" rel="stylesheet" type="text/css">
    <link href="../stylesheets/basic.css" rel="stylesheet">
</head>
<body>
    <%@include file="partials/navbar.jsp" %>
    <div class="left">
        <div class="profile-header">
            <h1>Welcome,
                ${sessionScope.user.username}!</h1>
            <img src="http://lorempixel.com/200/200" class="img-circle" alt="profile-picture">
            <div class="button-container">
                <a href="/profile/edit" class="btn btn-default">
                    <span class="oi oi-pencil"></span>
                      Edit Profile
                </a>
                <a href="/profile/password" class="btn btn-default">
                    <span class="oi oi-project"></span>
                      Edit Password
                </a>
                <a href="/ads/create" class="btn btn-default">
                    <span class="oi oi-clipboard"></span>
                      New Ad
                <a href="/ads/deleted" class="btn btn-default">
                    <span class="oi oi-trash"></span>
                      Deleted Ads
                </a>
            <span> ${sessionScope.id}</span>

            </div>
        </div>
    </div>

    <div class="main">
        <c:forEach var="ad" items="${ads}">
            <div class="col-sm-6">
                <div class="card">
                    <%--<img class="card-img-top" src="http://lorempixel.com/300/300/people" alt="Card image cap">--%>
                    <div class="card-body">
                        <h4 class="card-title">${ad.title}</h4>
                        <p class="card-text">${ad.shortDescription}</p>
                        <a href="/ad?id=${ad.id}" class="btn btn-primary">More Details</a>
                        <div class="card-footer">
                            <p class="card-subtitle">${ad.timeCreated}</p>
                            <p class="card-subtitle">Added ${ad.getTimeDifferenceString()}</p>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>
