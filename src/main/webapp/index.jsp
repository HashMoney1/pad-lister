<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<%--    <jsp:include page="WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Welcome!"/>--%>
<%--    </jsp:include>--%>
    <link href="https://fonts.googleapis.com/css?family=Lobster|News+Cycle" rel="stylesheet">
    <link rel="stylesheet" href="stylesheets/basic.css">
    <link rel="stylesheet" href="stylesheets/index.css" type="text/css">
</head>
<body>
<%--<jsp:include page="WEB-INF/partials/navbar.jsp"/>--%>
<div class="jumbotron">
    <div class="container banner">
        <div class="header">
            <h1>Padlister</h1>
            <p class="index-subtitle"></p>
            <p>
                <a class="index-button" href="/ads" role="button">See All Listings Here</a>
            </p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row justify-content-around">
        <h3>Most Recent Ads</h3>
        <c:forEach var="Ad" items="${newestAds}">
            <div class="col-sm-4">
                <div class="index-card">
                    <div class="index-card-body">
                        <h4 class="index-card-title">${Ad.title}</h4>
                        <p class="index-card-text">${Ad.shortDescription}</p>
                    </div>
                    <a href="/ad?id=${Ad.id}" class="index-button">More Details</a>
                    <div class="index-card-footer">
                        <p class="index-card-subtitle">${Ad.timeCreated}</p>
                        <p class="index-card-subtitle">Added ${Ad.getTimeDifferenceString()}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<%--</div>--%>
</body>
</html>
