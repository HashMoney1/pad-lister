<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>

</head>
<body>
<nav class="nav-bar">
    <div class="logo-holder">
        <a href="/home">
            <img src="/imgs/logo_padlister.png" class="logo">
        </a>
    </div>

    <div class="links-holder">
        <a href="/ads">All Ads</a>

        <c:if test="${sessionScope.user != null}">
            <a href="/profile">Profile</a>
            <a href="/logout">Logout</a>
        </c:if>

        <c:if test="${sessionScope.user == null}">
            <a href="/register">Register</a>
            <a href="/login">Login</a>
        </c:if>
    </div>
</nav>
</body>

<style>

</style>



