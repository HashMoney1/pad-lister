<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Padlister: Change password" />
    </jsp:include>
    <link href="../css/styles.css" rel="stylesheet">
</head>
<body>
<jsp:include page="partials/navbar.jsp" />

<div class="profile-container shadow">
    <div>
        <h1 class="profile-welcome">Update password</h1>
    </div>

    <div class="return">
        <a href="/profile" class="return-link">(Return to Profile)</a>
    </div>

    <div>
        <div>
            <form action="/profile/password" method="POST">
                <%-- old password --%>
                <div class="input-format">
                    <label for="old-password">Current Password</label>
                    <input id="old-password" name="old-password" type="password">
                    <c:if test="${error != null}">
                        <span class="errors">${error}</span>
                    </c:if>

                    <c:if test="${errors.containsKey('password')}">
                        <span class="errors">${errors.get('password')}</span>
                    </c:if>
                </div>
                <%-- new- password field--%>
                <div class="input-format">
                    <label for="new-password">New Password</label>
                    <input id="new-password" name="new-password" class="form-control" type="password">
                    <c:if test="${error != null}">
                        <span>${error}</span>
                    </c:if>
                    <c:if test="${errors.containsKey('mustHave')}">
                        <span>${errors.get('mustHave')}</span>
                    </c:if>
                    <c:if test="${errors.containsKey('current')}">
                        <span>${errors.get('confirm')}</span>
                    </c:if>
                </div>
                <%--Confirm new-password--%>
                <div class="input-format">
                    <label for="confirm-new-password">Confirm Password</label>
                    <input id="confirm-new-password" name="confirm-new-password" type="password">
                </div>
                <div class="input-format">
                    <input type="submit" class="submit-btn">
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function checkErrorMessages() {

        if (document.getElementsByClassName("errors").length > 0) {
            document.getElementsByClassName("form-container")[0].style.height = "56%";
        }
    }
    window.onload = checkErrorMessages();

</script>
</body>
<jsp:include page="partials/footer.jsp"/>
</html>
