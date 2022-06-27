<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Padlister: Submit a pad" />
    </jsp:include>
    <link href="../css/styles.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
<div class="profile-container">

    <div>
        <h1 class="profile-welcome">Enter a pad</h1>
    </div>


    <div class="return">
        <a href="/profile" class="return-link">(Return to Profile)</a>
    </div>


    <div>
        <div>
            <form action="/ads/create" method="post">
                <div class="input-format">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text" value="${title}">
                    <c:if test="${adErrors.containsKey('title')}">
                        <span class="errors">${adErrors.get('title')}</span>
                    </c:if>
                </div>
                <div class="input-format">
                    <label for="description">Description</label>
                    <input id="description" name="description" class="form-control" type="text" value="${description}">
                    <c:if test="${adErrors.containsKey('description')}">
                        <span class="errors">${adErrors.get('description')}</span>
                    </c:if>
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

        console.log(document.getElementsByClassName("errors"));

        if (document.getElementsByClassName("errors").length > 0) {
            document.getElementsByClassName("form-container")[0].style.height = "47%";
        }

    }

    window.onload = checkErrorMessages();
</script>
</body>
<jsp:include page="partials/footer.jsp"/>
</html>
