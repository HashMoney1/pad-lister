<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Login" />
    </jsp:include>
    <link href="../css/styles.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />

<div class="register-login-container shadow">
    <h1>Login Below</h1>

    <form action="/login" method="post">
        <div class="input-format">
            <label for="username">Username</label>
            <input id="username" name="username" type="text" value="${username}">
            <c:if test="${error != null}">
                <span class="errors">${error}</span>
            </c:if>
            <c:if test="${errors.containsKey('exist')}">
                <span class="errors">${errors.get('exist')}</span>
            </c:if>
        </div>
        <div class="input-format">
            <label for="password">Password</label>
            <input id="password" name="password" type="password">
        </div>
        <div class="input-format">
            <input type="submit" class="submit-btn">
        </div>

        <div class="need-account">
            <a href="/register">Not registered yet? Register here</a>
        </div>

    </form>
</div>
</body>
<jsp:include page="partials/footer.jsp"/>
</html>
