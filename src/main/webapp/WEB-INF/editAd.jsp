<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Edit Your pad" />
    </jsp:include>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<h1>Edit Your Ad</h1>
<br>
<a href="/profile" class="btn btn-default btn-return">Return to Profile</a>
<div class="form-container">
    <div class="input-container">
        <form action="/ad/edit" method="POST">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
                <c:if test="${adErrors.containsKey('title')}">
                    <span class="errors">${adErrors.get('title')}</span>
                </c:if>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <input id="description" name="description" class="form-control" type="text" value="${ad.description}">
                <c:if test="${adErrors.containsKey('description')}">
                    <span class="errors">${adErrors.get('description')}</span>
                </c:if>
            </div>
            <div class="form-group">
                <label for="location">Location</label>
                <input id="location" name="location" class="form-control" type="text" value="${ad.location}">
                <c:if test="${adErrors.containsKey('location')}">
                    <span class="errors">${adErrors.get('location')}</span>
                </c:if>
            </div>
            <input type="hidden" name="id" value="${ad.id}">
            <input type="submit" class="btn btn-primary btn-block">
        </form>
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
</html>
