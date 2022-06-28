<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Padlister: Register" />
    </jsp:include>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />

<div class="register-login-container shadow">
    <h1>Register Below</h1>

    <form action="/register" method="POST" class="form-container">

        <div class="input-format">
            <%--Username--%>
            <label for="username">Username</label>
            <input id="username" name="username" value="${username}" type="text">

            <c:if test="${error != null}">
                <span class="errors">${error}</span>
            </c:if>

            <c:if test="${errors.containsKey('username')}">
                <span class="errors">${errors.get('username')}</span>
            </c:if>
        </div>

        <div class="input-format">
            <%--Email--%>
            <label for="email">Email</label>
            <input id="email" name="email" value="${email}" type="text">
            <c:if test="${errors.containsKey('email')}">
                <span class="errors">${errors.get('email')}</span>
            </c:if>
        </div>

        <div class="input-format">
            <%--Password--%>
            <label for="password">Password</label>
            <input id="password" name="password" type="password">
            <c:if test="${errors.containsKey('password')}">
                <span class="errors">${errors.get('password')}</span>
            </c:if>
        </div>

        <div class="input-format">
            <%--Confirm password--%>
            <label for="confirm-password">Confirm Password</label>
            <input id="confirm-password" name="confirm-password" type="password">
            <c:if test="${errors.containsKey('confirm')}">
                <span class="errors">${errors.get('confirm')}</span>
            </c:if>
        </div>

        <div class="input-format">
            <input type="submit" class="submit-btn">
        </div>

    </form>

</div>
<script>

function checkErrorMessages() {

    if (document.getElementsByClassName("errors").length > 0) {
        document.getElementsByClassName("form-container")[0].style.height = "68%";
    }

}

window.onload = checkErrorMessages();


</script>

</body>
<jsp:include page="partials/footer.jsp"/>


</html>
