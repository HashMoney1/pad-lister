<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Padlister: Search results" />
    </jsp:include>
    <link rel="stylesheet" href="css/styles.css" type="text/css">
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="ad-container shadow">
    <h1 class="title">Search results</h1>
    <div class="card-container">
        <h3>All ads related to: "<c:out value="${keyword}" />"</h3>
        <c:if test="${noResults == true}" >
        <p class="w-text">We couldn't find any results for <c:out value="${keyword}"/></p>
    </c:if>
    <c:if test="${noResults == false}" >
        <c:forEach var="ad" items="${ads}" >
            <div class="card">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </c:if>
    </div>
</div>
</body>
<jsp:include page="partials/footer.jsp" />
</html>
