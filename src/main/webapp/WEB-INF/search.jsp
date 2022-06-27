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

<div class="ad-container">
    <h1 class="title">All the category of Ads</h1>
    <div class="card-container">
        <h3>All ads related to: <c:out value="${keyword}" /></h3>
        <c:if test="${noResults == true}" >
        <p class="w-text">We couldn't find any results for <c:out value="${keyword}"/></p>
    </c:if>
    <c:if test="${noResults == false}" >
        <c:forEach var="ad" items="${ads}" >
            <div class="card">
<<<<<<< HEAD
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
=======
                <div>
                    <h4>${Ad.title}</h4
                    <p>${Ad.description}</p>
                    <p>${Ad.location}</p>

                </div>
                <br>
                <div>
                    <p>Added ${Ad.getTimeDifferenceString()}</p>
                </div>
>>>>>>> f5d346af98df4b3b4326ab0903759f30b1321b22
            </div>
        </c:forEach>
    </c:if>
    </div>
</div>
<<<<<<< HEAD
=======

<div class="col-10">
    <div class="container pb-5 pt-5">
        <h1 class="w-text">All the category of Ads</h1>
        <c:if test="${noResults == true}" >
            <p class="w-text">We couldn't find any results for <c:out value="${keyword}"/></p>
        </c:if>
        <c:if test="${noResults == false}" >
            <h3 class="w-text">All ads related to: <c:out value="${keyword}" /></h3>
            <c:forEach var="ad" items="${ads}" >
                <a class="blk" href="/viewAd?adId=${ad.id}">
                    <div class="cards mr-3 mb-3">
                        <h2>${ad.title}</h2>
                        <p>${ad.description}</p>
                        <p>${Ad.location}</p>

                    <%--                        <p>Created On: ${ad.dateMade}</p>--%>
<%--                        <p>Categories: ${ad.catString}</p>--%>
                    </div>
                </a>
            </c:forEach>
        </c:if>
    </div>


>>>>>>> f5d346af98df4b3b4326ab0903759f30b1321b22
</body>
<jsp:include page="partials/footer.jsp" />
</html>
