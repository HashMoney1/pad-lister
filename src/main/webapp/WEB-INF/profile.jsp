<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Padlister: Profile" />
    </jsp:include>
    <link href="../css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
    <%@include file="partials/navbar.jsp" %>

<div class="profile-container">
    <h1 class="profile-welcome">Welcome, ${sessionScope.user.username}!</h1>
    <div class="profile-links">
            <a href="/profile/edit">Update Email</a>
            <a href="/profile/password">Update Password</a>
            <a href="/ads/create">Submit a pad</a>
    </div>

    <div class="all-ads-container">
        <div class="title">All pads</div>
        <div class="card-container">
            <c:forEach var="Ad" items="${ads}">
                <div class="card">
                    <div>
                        <h4>${Ad.title}</h4
                        <p>${Ad.description}</p>
                        <p>${Ad.location}</p>
                    </div>
                    <br>
                    <div>
                        <p>Added ${Ad.getTimeDifferenceString()}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
<jsp:include page="partials/footer.jsp"/>
</html>
