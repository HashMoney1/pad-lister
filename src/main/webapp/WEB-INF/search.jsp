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
    <div class="title">All ads</div>
    <div class="card-container">
        <c:forEach var="Ad" items="${allAds}">
            <div class="card">
                <div>
                    <h4>${Ad.title}</h4
                    <p>${Ad.description}</p>
                </div>
                <br>
                <div>
                    <p>Added ${Ad.getTimeDifferenceString()}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

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
<%--                        <p>Created On: ${ad.dateMade}</p>--%>
<%--                        <p>Categories: ${ad.catString}</p>--%>
                    </div>
                </a>
            </c:forEach>
        </c:if>
    </div>


</body>
<jsp:include page="partials/footer.jsp" />
</html>
