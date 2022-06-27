<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Padlister: Update email" /></jsp:include>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
<%@include file="partials/navbar.jsp" %>

<div class="profile-container shadow">
    <div>
        <h1 class="profile-welcome">Update email</h1>
    </div>

    <div class="return">
        <a href="/profile" class="return-link">(Return to Profile)</a>
    </div>

    <div>
        <div>
            <form action="/profile/edit" method="POST">
                <div class="input-format">
                    <label for="email">Change Email</label>
                    <input id="email" name="email" type="text">
                    <c:if test="${error != null}"><span class="errors">${error}</span></c:if>
                    <c:if test="${errors.containsKey('improper')}"><span class="errors">${errors.get('improper')}</span></c:if>
                    <c:if test="${errors.containsKey('nothing')}"><span class="errors">${errors.get('nothing')}</span></c:if>
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
            document.getElementsByClassName("form-container")[0].style.height = "37%";
        }
    }
    window.onload = checkErrorMessages();
</script>

</body>
<jsp:include page="partials/footer.jsp"/>
</html>
